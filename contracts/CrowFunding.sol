pragma solidity ^0.4.0;
//一次救助合约
contract CrowdFunding{

    struct Funder{          //个人捐款项
        address addr;       //捐款人，用唯一的地址代表捐款人名字
        uint amount;        //捐款数量
    }

    struct Campaign{            //捐款活动项
        address beneficiary;    //受助对象，用地址表示
        uint fundingGoal;       //打算给受助对象的捐款数量
        uint numFunders;        //最后一个捐款人编号（编号按1,2,3,...顺序），反映当前已参与的捐款的人数
        uint amount;            //当前已得到的捐款总额
        mapping (uint => Funder) funders;       //最后一个捐款人编号 => 最后一次捐款
        //最后一个捐款人编号由 numFunders表示
    }

    uint numCampaigns;          //该次救助活动的编号（编号按1,2,3,...顺序）反映救助次数
    mapping (uint => Campaign) campaigns;       //救助编号 => 救助本身
    //救助编号由numCampaigns表示


    function newCampaign(address beneficiary, uint goal) returns (uint campaignID)
        //新开展一次捐款活动
    {
        campaignID = numCampaigns++;            //该次救助编号在上次基础上增加1，
        //相当于是第campaingID次捐款
        campaigns[campaignID] = Campaign(beneficiary, goal, 0, 0);
        //更新捐款编号到救助本身的映射
    }

    function contribute(uint campaignID){       //一次捐款后的影响
        Campaign c = campaigns[campaignID];     //此处c是引用，即c是campaigns[campaignID]的别名
        //这是solidity语言的特点，不同于C语言的复制
        c.funders[c.numFunders++] = Funder({addr: msg.sender, amount: msg.value});
        //msg.sender表示调用该函数的对象地址，msg.value表示调用该函数的对象的捐款值
        //捐款后修改捐款人数numFunders和捐款金额amount
        //记住：funders记录最后一次捐款
        c.amount += msg.value;                  //目前的救助总额为之前的总额加上此次捐款的
    }

    function checkGoalReached(uint campaignID) returns (bool reached){
        //检查是否达到捐款总额
        Campaign c = campaigns[campaignID];     //注意此处和前面一样，是引用
        if (c.amount < c.fundingGoal)
            return false;
        c.beneficiary.send(c.amount);           //此处不太确定，应该是给受捐助对象足够捐款后
        //受捐助对象通知外界已经得到预期捐款
        //所以重置下面的amount
        c.amount = 0;
        return true;
    }
}