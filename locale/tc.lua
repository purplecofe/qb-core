local Translations = {
    error = {
        not_online = '玩家不在線上',
        wrong_format = '格式錯誤',
        missing_args = '請輸入必須參數 (x, y, z)',
        missing_args2 = '請輸入所有參數!',
        no_access = '你沒有權限',
        company_too_poor = '你所在的公司帳戶目前發不起薪水',
        item_not_exist = '該物品不存在',
        too_heavy = '背包已滿',
        location_not_exist = '位置不存在',
        duplicate_license = '發現重複的 Rockstar 許可證',
        no_valid_license  = '未找到有效的 Rockstar 許可證',
        not_whitelisted = '您沒有被列入此伺服器的白名單',
        server_already_open = '伺服器已開啟',
        server_already_closed = '伺服器已關閉',
        no_permission = '您沒有此權限..',
        no_waypoint = '無GPS點位設置.',
        tp_error = '傳送時出錯.',
        connecting_database_error = '連接到伺服器時發生資料庫錯誤。(SQL server是否已開啟?)',
        connecting_database_timeout = '與資料庫的連接超時。(SQL server是否已開啟?)',
    },
    success = {
        server_opened = '伺服器已開啟',
        server_closed = '伺服器已關閉',
        teleported_waypoint = '傳送至導航點.',
    },
    info = {
        received_paycheck = '你收到的薪水是 $%{value}',
        job_info = '工作: %{value} | 級別: %{value2} | 上班狀態: %{value3}',
        gang_info = '幫派: %{value} | 級別: %{value2}',
        on_duty = '你現在開始上班了!',
        off_duty = '從現在開始你下班了!',
        checking_ban = '你好 %s. 我們正在檢查您是否被禁止.',
        join_server = '歡迎 %s 加入 {Server Name}.',
        checking_whitelisted = '你好 %s. 我們正在檢查您是否在白名單內.',
        exploit_banned = '你因作弊而被禁止。查看Discord了解更多資訊:%{discord}',
        exploit_dropped = '你因為被而被踢出',
    },
    command = {
        tp = {
            help = 'TP至玩家或座標(僅限管理員)',
            params = {
                x = { name = 'id/x', help = '玩家ID或X位置'},
                y = { name = 'y', help = 'Y位置'},
                z = { name = 'z', help = 'Z位置'},
            },
        },
        tpm = { help = 'TP到標記(僅限管理員)' },
        togglepvp = { help = '切換伺服器上的PVP(僅限管理員)' },
        addpermission = {
            help = '授予玩家權限(僅限God)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                permission = { name = 'permission', help = '權限級別' },
            },
        },
        removepermission = {
            help = '刪除玩家權限(僅限上帝)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                permission = { name = 'permission', help = '權限級別' },
            },
        },
        openserver = { help = '為每個人開啟伺服器(僅限管理員)' },
        closeserver = {
            help = '為沒有權限的人關閉伺服器(僅限管理員)',
            params = {
                reason = { name = 'reason', help = '關閉原因(可選)' },
            },
        },
        car = {
            help = '刷出車輛(僅限管理員)',
            params = {
                model = { name = 'model', help = '車輛型號名稱' },
            },
        },
        dv = { help = '刪除車輛(僅限管理員)' },
        givemoney = {
            help = '給玩家錢(僅限管理員)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                moneytype = { name = 'moneytype', help = '貨幣類型(cash, bank, crypto)' },
                amount = { name = 'amount', help = '數量' },
            },
        },
        setmoney = {
            help = '設定玩家金額(僅限管理員)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                moneytype = { name = 'moneytype', help = '貨幣類型(cash, bank, crypto)' },
                amount = { name = 'amount', help = '數量' },
            },
        },
        job = { help = '檢查您的工作' },
        setjob = {
            help = '設定玩家工作(僅限管理員)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                job = { name = 'job', help = '工作名稱' },
                grade = { name = 'grade', help = '工作級別' },
            },
        },
        gang = { help = '檢查你的幫派' },
        setgang = {
            help = '設定玩家作業(僅限管理員)',
            params = {
                id = { name = 'id', help = '玩家ID' },
                gang = { name = 'gang', help = '幫派名稱' },
                grade = { name = 'grade', help = '幫派級別' },
            },
        },
        ooc = { help = 'OOC聊天消息' },
        me = {
            help = '顯示 OOC 消息',
            params = {
                message = { name = 'message', help = '要發送的消息' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'tc' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
