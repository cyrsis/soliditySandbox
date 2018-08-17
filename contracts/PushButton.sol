pragma solidity ^0.4.17;


//美劇 Lost 中，Jack 一行人在迷樣的島上發現神秘基地，
//裏頭的實驗室有一台電腦與倒數計時器，
//每 108 分鐘就必須在鍵盤上輸入一串神秘數字 4、8、15、16、23、42，
//並按下 Enter

//contract PushButton {
//
//    uint256 public StarBlock;
//    uint256 public interval = 108 * 60 / 4;//108 mins (kovan Testnet)
//    uint256 public nextTimeBlock; //Timeout block  next clock
//    uint256 public totalPush;
//    string  public title;
//
//    constructor() public {
//        StarBlock = block.number;
//        // 紀錄合約部署當下的block number
//        nextTimeBlock = StarBlock + interval;
//        // 計算timeout
//        totalPush = 0;
//
//    }
//
//    modifier isTimeout() {
//        require(getBlock() <= nextTimeBlock);
//        _;
//    }
//
//
//
//}
