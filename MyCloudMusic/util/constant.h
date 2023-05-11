//
//  constant.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/6.
//

#ifndef Constant_h
#define Constant_h

//保存音乐播放进度的间隔
static float const SAVE_PROGRESS_TIME_INTERVAL = 2;

///点击block
typedef void(^SuperClick)(void);

///点击block，int参数
typedef void(^SuperClickInt)(NSInteger);

//Cell复用
static NSString * const Cell = @"Cell";

static NSString * const ANONYMOUS = @"anonymous";
static NSString * const LOGIN_CLICK = @"LOGIN_CLICK";

static NSString * const URL_VIDEO = @"v1/videos";
static NSString * const URL_AD = @"v1/ads";
static NSString * const URL_SHEET = @"v1/sheets";
static NSString * const URL_SONG = @"v1/songs";
static NSString * const URL_FEED = @"v1/feeds";
static NSString * const URL_SESSION = @"v1/sessions";
static NSString * const URL_COMMENT = @"v1/comments";
static NSString * const URL_USER = @"v1/users";

#pragma mark - 输入框尺寸
static float const INPUT_SMALL = 30;
static float const INPUT_MEDDLE = 46;

static int const SIZE12 = 12;

static int const VALUE_NO = -1;
static int const VALUE0 = 0;
static int const VALUE10 = 10;
static int const VALUE20 = 20;
static int const VALUE30 = 30;

#pragma mark - 按钮尺寸
static float const BUTTON_SMALL = 30;
static float const BUTTON_MEDDLE = 42;
static float const BUTTON_LARGE = 55;
static float const BUTTON_WIDTH_MEDDLE = 150;

#pragma mark - 文本尺寸
static float const TEXT_SMALL = 12;
static float const TEXT_MEDDLE = 14;
static float const TEXT_LARGE = 16;
static float const TEXT_LARGE2 = 17;
static float const TEXT_LARGE3 = 18;
static float const TEXT_LARGE4 = 22;
static float const TEXT_PRICE = 30;

#pragma mark - 圆角尺寸
static float const SMALL_RADIUS = 5;
static float const MEDDLE_RADIUS = 10;
static float const BUTTON_SMALL_RADIUS = 15;
static float const BUTTON_MEDDLE_RADIUS = 21;

#pragma mark - 边距尺寸
//小小间歇
static float const PADDING_MIN = 1;

//小间歇
static float const PADDING_SMALL = 5;

//中间歇
static float const PADDING_MEDDLE = 10;

//边距间歇
static float const PADDING_OUTER = 16;

//大间歇
static float const PADDING_LARGE = 20;

//大间歇2
static float const PADDING_LARGE2 = 30;

//列表类型枚举，所有类型都定义到这里，方便统一管理，当然也可以按模块，界面拆分
typedef NS_ENUM(NSUInteger, ListStyle) {
    StyleNone,
    StyleBanner,
    StyleButton,
    StyleSheet,
    StyleSong,
    StyleFooter,
    StyleSheetMore,
    StyleSongMore,
    StyleOpenDrawer,
    StyleRerfresh,
    StyleMe,
    StyleMessageTextLeft, //左边，文本消息，其他人发的
    StyleMessageTextRight, //右边，文本消息，我发的
    StyleMessageImageLeft, //左边，图片消息，其他人发的
    StyleMessageImageRight, //右边，图片消息，我发的
    StylePhoneLogin,
    StyleForgotPassword,
    StyleComment,
    StyleVideo,
    StyleVideoInfo,
    StyleTitle,
    StyleAdd,
    StyleDownloadManager,
    StyleLocal,
    StyleCancel,
    StyleTencentMap,
    StyleBaiduMap,
    StyleAMap,
    StyleSystemMap,
    StyleFriend,
    StyleFans,
    StyleComfirmOrder,
    StyleOrder,
    StyleSelect,
    StyleIncrement,
    StyleDecrement,
    StylePlayList
};

//region 平台
/**
 * android
 */
static NSInteger const PLATFORM_ANDROID = 0;

/**
 * ios
 */
static NSInteger const PLATFORM_IOS = 10;

/**
 * web
 */
static NSInteger const PLATFORM_WEB = 20;

/**
 * wap
 */
static NSInteger const PLATFORM_WAP = 30;
//endregion

/**
 * 支付宝
 */
static NSInteger const ALIPAY = 10;

/**
 * 微信
 */
static NSInteger const WECHAT = 20;

/**
 * 花呗分期
 */
static NSInteger const HUABEI_STAGE = 30;

/**
 * 待支付
 */
static NSInteger const WAIT_PAY = 0;

/**
 * 订单关闭
 */
static NSInteger const CLOSE = 10;

/**
 * 待发货
 */
static NSInteger const WAIT_SHIPPED = 500;

/**
 * 待收货
 */
static NSInteger const WAIT_RECEIVED = 510;

/**
 * 待评价
 */
static NSInteger const WAIT_COMMENT = 520;

/**
 * 完成
 */
static NSInteger const COMPLETE = 530;

/// 支付宝支付回调
/// 不能和其他应用有重复
/// 用于支付宝客户端回调我们应用
static NSString * const ALIPAY_CALLBACK_SCHEME = @"ixueacourse";

static NSString * const ON_MESSAGE = @"ON_MESSAGE";
static NSString * const ON_MESSAGE_COUNT_CHANGED = @"ON_MESSAGE_COUNT_CHANGED";

//通知中的动作
static NSString * const EXTRA = @"extra";

static NSString * const ACTION_PUSH_CLICK = @"ACTION_PUSH_CLICK";

#endif /* Constant_h */

