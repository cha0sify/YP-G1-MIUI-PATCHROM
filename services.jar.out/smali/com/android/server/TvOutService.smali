.class public Lcom/android/server/TvOutService;
.super Landroid/os/ITvOutService$Stub;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvOutService$SettingsObserver;
    }
.end annotation


# static fields
.field static final DEFAULT_TVSTATUS:I = 0x0

.field static final DEFAULT_TVSYSTEM:I = 0x2

.field private static final HDMI_CONNECT:I = 0x1

.field private static final HDMI_NOT_CONNECT:I = 0x0

.field static final HDMI_SUBTITLE_FONT_SIZE_LARGE:I = 0x2d

.field static final HDMI_SUBTITLE_FONT_SIZE_NORMAL:I = 0x28

.field static final HDMI_SUBTITLE_FONT_SIZE_SMALL:I = 0x21

.field static final HDMI_SUBTITLE_FOR_HEIGHT_RESOLUTION_1080:I = 0x19e

.field static final HDMI_SUBTITLE_FOR_HEIGHT_RESOLUTION_480:I = 0xc0

.field static final HDMI_SUBTITLE_FOR_HEIGHT_RESOLUTION_576:I = 0xf2

.field static final HDMI_SUBTITLE_FOR_HEIGHT_RESOLUTION_720:I = 0x11c

.field private static HDMI_SUBTITLE_HEIGHT:I = 0x0

.field static final HDMI_SUBTITLE_MAX_HEIGHT:I = 0x19e

.field static final HDMI_SUBTITLE_MAX_WIDTH:I = 0x740

.field private static HDMI_SUBTITLE_WIDTH:I = 0x0

.field public static final LOCALE_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.locale.changed"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Observer"

.field static final TVSTATUS_OFF:I = 0x0

.field static final TVSTATUS_ON:I = 0x1

.field static final TVSYSTEM_NTSC:I = 0x1

.field static final TVSYSTEM_PAL:I = 0x2

.field private static mIsHdmiWaitResume:Z

.field private static mIsScreenOff:Z

.field private static mIsTvWaitResume:Z

.field private static mTvCableConnected:Z

.field private static mTvHdmiCableConnected:Z

.field private static mTvHdmiSuspend:Z

.field private static mTvSuspend:Z

.field private static sRotation:I

.field private static sWindowManager:Landroid/view/IWindowManager;


# instance fields
.field private bitmap_subtitle:Landroid/graphics/Bitmap;

.field private canvas_subtile:Landroid/graphics/Canvas;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mHeadsetNotification:Landroid/app/Notification;

.field private mIsForced:Z

.field final mLock:Ljava/lang/Object;

.field private mPlaySounds:Z

.field private mPrevFontSize:I

.field private mPrevSubtitle:Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTvStatus:I

.field private mTvSystem:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private tvout:Landroid/hardware/TvOut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 90
    sput v0, Lcom/android/server/TvOutService;->sRotation:I

    .line 92
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 93
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 95
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 99
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 100
    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 120
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    .line 121
    sput-boolean v0, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    .line 122
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 137
    sput-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v3, "1"

    .line 204
    invoke-direct {p0}, Landroid/os/ITvOutService$Stub;-><init>()V

    .line 83
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mLock:Ljava/lang/Object;

    .line 97
    iput-object v1, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    iput-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 106
    iput-object v1, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    .line 112
    iput v2, p0, Lcom/android/server/TvOutService;->mPrevFontSize:I

    .line 119
    iput-boolean v2, p0, Lcom/android/server/TvOutService;->mIsForced:Z

    .line 1775
    new-instance v0, Lcom/android/server/TvOutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvOutService$2;-><init>(Lcom/android/server/TvOutService;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    const-string v0, "TvOut-Observer"

    const-string v1, "TVOU_DEBUG TvOutService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput-object p1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    .line 208
    const-string v0, "persist.service.mount.playsnd"

    const-string v1, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/TvOutService;->mPlaySounds:Z

    .line 211
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->init()V

    .line 213
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    .line 215
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    .line 221
    :try_start_0
    sget-object v0, Lcom/android/server/TvOutService;->sWindowManager:Landroid/view/IWindowManager;

    new-instance v1, Lcom/android/server/TvOutService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TvOutService$1;-><init>(Lcom/android/server/TvOutService;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->sRotation:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvOutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/TvOutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/TvOutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvsystem()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/TvOutService;->updatetvstatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    sput-boolean p0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    return p0
.end method

.method public static onRotationChanged(I)V
    .locals 7
    .parameter "rotation"

    .prologue
    const-string v6, "TvOut-Observer"

    .line 964
    const-string v0, "OnRotationChanged"

    .line 967
    .local v0, CCS_TAG:Ljava/lang/String;
    const-string v3, "tvoutservice"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ITvOutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;

    move-result-object v2

    .line 970
    .local v2, tvoutService:Landroid/os/ITvOutService;
    if-nez v2, :cond_1

    .line 971
    const-string v3, "TvOut-Observer"

    const-string v3, " setTvoutOrientation TvOutService Not running"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    if-eq v3, p0, :cond_0

    .line 979
    sput p0, Lcom/android/server/TvOutService;->sRotation:I

    .line 981
    :try_start_0
    const-string v3, "TvOut-Observer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setTvoutOrientation rotation =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    invoke-interface {v2, p0}, Landroid/os/ITvOutService;->SetOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 984
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 985
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "TvOut-Observer"

    const-string v3, "setTvoutOrientation   "

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stayAwake(Z)V
    .locals 2
    .parameter "awake"

    .prologue
    const-string v1, "TvOut-Observer"

    .line 533
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 534
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake Accuring the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake relesing the lock SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    iget-object v0, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 546
    :cond_2
    const-string v0, "TvOut-Observer"

    const-string v0, "stayAwake mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private textSizeForHdmiHeight(I)I
    .locals 2
    .parameter "textsize"

    .prologue
    .line 1263
    const/4 v0, 0x0

    .line 1266
    .local v0, hdmisubtitletextsize:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    .line 1283
    move v0, p1

    .line 1287
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1289
    const/16 v0, 0x8

    .line 1292
    :cond_0
    return v0

    .line 1269
    :sswitch_0
    const/16 v1, 0x14

    sub-int v0, p1, v1

    .line 1270
    goto :goto_0

    .line 1272
    :sswitch_1
    const/16 v1, 0xf

    sub-int v0, p1, v1

    .line 1274
    goto :goto_0

    .line 1276
    :sswitch_2
    const/16 v1, 0xa

    sub-int v0, p1, v1

    .line 1278
    goto :goto_0

    .line 1280
    :sswitch_3
    move v0, p1

    .line 1281
    goto :goto_0

    .line 1266
    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x240 -> :sswitch_1
        0x2d0 -> :sswitch_2
        0x438 -> :sswitch_3
    .end sparse-switch
.end method

.method private textSizeForSubtitle()I
    .locals 4

    .prologue
    .line 1627
    const/4 v0, 0x0

    .line 1629
    .local v0, subtitletextsize:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    .line 1644
    const/16 v0, 0x25

    .line 1648
    :goto_0
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "textSizeForSubtitle  subtitletextsize =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    return v0

    .line 1632
    :sswitch_0
    const/16 v0, 0x10

    .line 1633
    goto :goto_0

    .line 1635
    :sswitch_1
    const/16 v0, 0x14

    .line 1636
    goto :goto_0

    .line 1638
    :sswitch_2
    const/16 v0, 0x19

    .line 1639
    goto :goto_0

    .line 1641
    :sswitch_3
    const/16 v0, 0x25

    .line 1642
    goto :goto_0

    .line 1629
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0x90 -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private tvOutSetImageString()V
    .locals 4

    .prologue
    .line 896
    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const v2, 0x10403e1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, text:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tvOutSetImageString "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v0}, Landroid/hardware/TvOut;->TvOutSetImageString(Ljava/lang/String;)V

    .line 899
    return-void
.end method

.method private updatescreensize()V
    .locals 2

    .prologue
    .line 782
    const-string v0, "TvOut-Observer"

    const-string v1, "updatescreensize"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    return-void
.end method

.method private updatetvstatus()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    .line 792
    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvstatus"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-nez v2, :cond_1

    .line 795
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus off  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 800
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 801
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 802
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 803
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 805
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 806
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 810
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 811
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 812
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 814
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 815
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 819
    invoke-virtual {p0, v5}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    .line 857
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 822
    :cond_1
    iget v2, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v2, v6, :cond_2

    .line 824
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus tvstatus on  mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v2, v6, :cond_0

    .line 828
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatetvstatus enable tvout    mTvCableConnected :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .restart local v0       #intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 832
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 835
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 836
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 840
    .restart local v1       #intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 841
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 842
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 843
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 844
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 845
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    .line 849
    invoke-virtual {p0, v6}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto/16 :goto_0

    .line 854
    .end local v0           #intent1:Landroid/content/Intent;
    .end local v1           #intent2:Landroid/content/Intent;
    :cond_2
    const-string v2, "TvOut-Observer"

    const-string v2, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updatetvsystem()V
    .locals 2

    .prologue
    .line 786
    const-string v0, "TvOut-Observer"

    const-string v1, "updatetvsystem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget v1, p0, Lcom/android/server/TvOutService;->mTvSystem:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetTvSystem(I)V

    .line 789
    return-void
.end method


# virtual methods
.method public CableConnected(Z)V
    .locals 4
    .parameter "Connected"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 262
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 265
    if-ne p1, v3, :cond_2

    .line 267
    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    .line 305
    :goto_0
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-nez v0, :cond_3

    .line 307
    :cond_0
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 337
    :cond_1
    :goto_1
    return-void

    .line 271
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/TvOutService;->setTvoutCableConnected(I)V

    goto :goto_0

    .line 313
    :cond_3
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v3, :cond_1

    .line 315
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v3, :cond_5

    .line 319
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_4

    .line 322
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_1

    .line 326
    :cond_4
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 331
    :cond_5
    const-string v0, "TvOut-Observer"

    const-string v0, "updatetvsystem system shuldnot come here... error in tvout status values"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public DisableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    const-string v0, "TvOut-Observer"

    const-string v1, "DisableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 469
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 470
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 471
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 477
    return-void
.end method

.method public DisableTvOutForce()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x4000

    const/4 v4, 0x0

    const-string v8, "h2w"

    const-string v5, "TvOut-Observer"

    .line 421
    const-string v2, "TvOut-Observer"

    const-string v2, "DisableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 424
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 425
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 428
    invoke-static {v0, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 429
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 436
    const-string v2, "state"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 439
    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 440
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->DisableTvOut()V

    .line 444
    invoke-direct {p0, v4}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 445
    sput-boolean v4, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 446
    sput-boolean v4, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 453
    return-void
.end method

.method public EnableTvOut()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 361
    const-string v0, "TvOut-Observer"

    const-string v1, "EnableTvOut"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    .line 363
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 364
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 379
    :cond_0
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_1

    .line 381
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 382
    invoke-direct {p0, v2}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 385
    :cond_1
    return-void
.end method

.method public EnableTvOutForce()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    const/4 v4, 0x0

    const-string v5, "TvOut-Observer"

    .line 388
    const-string v2, "TvOut-Observer"

    const-string v2, "EnableTvOut"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 394
    .local v0, intent1:Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 395
    const-string v2, "state"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 396
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    const-string v2, "microphone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    invoke-static {v0, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 399
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_HEADSET_PLUG : disable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.TVOUT_PLUG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v1, intent2:Landroid/content/Intent;
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    const-string v2, "state"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    const-string v2, "name"

    const-string v3, "h2w"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const-string v2, "microphone"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 408
    invoke-static {v1, v8}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 409
    const-string v2, "TvOut-Observer"

    const-string v2, "ACTION_TVOUT_PLUG : enable"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v3, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v2, v3}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 412
    iget-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v2}, Landroid/hardware/TvOut;->EnableTvOut()V

    .line 413
    invoke-direct {p0, v6}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 417
    return-void
.end method

.method public SetCableStatus(Z)V
    .locals 3
    .parameter "status"

    .prologue
    .line 341
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetCableStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sput-boolean p1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    .line 344
    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 582
    const-string v0, "TvOut-Observer"

    const-string v1, "SetOrientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 584
    return-void
.end method

.method public SetTvoutHdmiDualStatus(I)V
    .locals 3
    .parameter "status"

    .prologue
    .line 1492
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetTvoutHdmiDualStatus: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->SetTvoutHdmiDualStatus(I)V

    .line 1495
    return-void
.end method

.method public SetTvoutHdmiStatus(I)Z
    .locals 6
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const-string v5, "SetTvoutHdmiStatus temp1 "

    const-string v3, "TvOut-Observer"

    .line 1131
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v0, 0x0

    .line 1133
    .local v0, hStatus:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    if-nez v1, :cond_0

    .line 1135
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus temp1 "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 1137
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 1138
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 1139
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    .line 1140
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    .line 1179
    :goto_0
    return v0

    .line 1143
    :cond_0
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    if-nez v1, :cond_1

    .line 1145
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus temp1 "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 1147
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 1148
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 1149
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    .line 1150
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0

    .line 1153
    :cond_1
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1155
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus temp2 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvOutResume()V

    goto :goto_0

    .line 1158
    :cond_2
    if-ne p1, v4, :cond_3

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    if-ne v1, v4, :cond_3

    .line 1160
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus temp3 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    invoke-direct {p0}, Lcom/android/server/TvOutService;->tvOutSetImageString()V

    .line 1162
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v2, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 1163
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v4}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0

    .line 1169
    :cond_3
    const-string v1, "TvOut-Observer"

    const-string v1, "SetTvoutHdmiStatus temp4 "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 1171
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 1172
    sput-boolean v2, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 1173
    sput-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    .line 1175
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1, v2}, Landroid/hardware/TvOut;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_0
.end method

.method public SubTitleTextSizeLevel(I)I
    .locals 1
    .parameter "mFontSize"

    .prologue
    .line 1539
    const/4 v0, 0x0

    .line 1541
    .local v0, ret_val:I
    sparse-switch p1, :sswitch_data_0

    .line 1553
    const/4 v0, 0x1

    .line 1557
    :goto_0
    return v0

    .line 1544
    :sswitch_0
    const/4 v0, 0x0

    .line 1545
    goto :goto_0

    .line 1547
    :sswitch_1
    const/4 v0, 0x1

    .line 1548
    goto :goto_0

    .line 1550
    :sswitch_2
    const/4 v0, 0x2

    .line 1551
    goto :goto_0

    .line 1541
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_2
        0x28 -> :sswitch_1
        0x2d -> :sswitch_0
    .end sparse-switch
.end method

.method public TvOutDisableHDMISubtitleOn(I)V
    .locals 2
    .parameter "mSubTitleOn"

    .prologue
    .line 1452
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutDisableHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isHDMISubtitleOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1455
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->TvOutDisableHDMISubtitleOn(I)V

    goto :goto_0
.end method

.method public TvOutEnableHDMISubtitleOn(I)Z
    .locals 4
    .parameter "mSubTitleOn"

    .prologue
    const/4 v3, 0x0

    .line 1248
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutEnableHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isHdmiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isHdmiSuspended()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->getSubtitleHDMIWidth()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 1252
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->getSubtitleHDMIHeight()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 1253
    sget v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 1254
    iget-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1255
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 1256
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->TvOutEnableHDMISubtitleOn(I)Z

    move-result v0

    .line 1258
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public TvOutHdmiSuspend(Ljava/lang/String;)V
    .locals 3
    .parameter "tvText"

    .prologue
    const/4 v1, 0x1

    const-string v2, "TvOut-Observer"

    .line 1032
    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutHdmiSuspend"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    if-ne v0, v1, :cond_1

    .line 1036
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    sput-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiSuspend:Z

    .line 1038
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsHdmiWaitResume:Z

    .line 1039
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutHdmiSuspend(Landroid/content/Context;Ljava/lang/String;)V

    .line 1041
    :cond_1
    return-void
.end method

.method public TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V
    .locals 8
    .parameter "bitmap"
    .parameter "chroma_key"

    .prologue
    .line 1399
    const/4 v1, 0x0

    .local v1, width:I
    const/4 v0, 0x0

    .local v0, height:I
    const/4 v2, 0x0

    .local v2, x:I
    const/4 v3, 0x0

    .line 1400
    .local v3, y:I
    const-string v4, "TvOut-Observer"

    const-string v5, "TvOutPostHDMIBitmap"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isHDMISubtitleOn()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1403
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1404
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1405
    if-ltz v1, :cond_0

    if-ltz v0, :cond_0

    .line 1408
    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    if-ge v1, v4, :cond_0

    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    if-ge v0, v4, :cond_0

    .line 1410
    sget v4, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v5, v1, 0x2

    sub-int v2, v4, v5

    .line 1411
    const/4 v3, 0x0

    .line 1413
    iget-object v4, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v4, p2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1414
    iget-object v4, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    int-to-float v5, v2

    int-to-float v6, v3

    const/4 v7, 0x0

    invoke-virtual {v4, p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1415
    iget-object v4, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v5, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v5, p2}, Landroid/hardware/TvOut;->TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method public TvOutPostHDMISubTitleMargin(I)I
    .locals 5
    .parameter "mFontSize"

    .prologue
    const/16 v4, 0x2d

    const/16 v3, 0x28

    const/16 v2, 0x21

    .line 1588
    const/4 v0, 0x0

    .line 1590
    .local v0, ret_val:I
    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v1, :sswitch_data_0

    .line 1612
    if-ne p1, v4, :cond_4

    .line 1613
    const/4 v0, 0x3

    .line 1621
    :cond_0
    :goto_0
    return v0

    .line 1593
    :sswitch_0
    if-ne p1, v4, :cond_1

    .line 1594
    const/16 v0, -0xc

    goto :goto_0

    .line 1595
    :cond_1
    if-ne p1, v3, :cond_2

    .line 1596
    const/4 v0, -0x5

    goto :goto_0

    .line 1597
    :cond_2
    if-ne p1, v2, :cond_0

    .line 1598
    const/4 v0, -0x5

    goto :goto_0

    .line 1602
    :sswitch_1
    const/4 v0, 0x0

    .line 1603
    goto :goto_0

    .line 1605
    :sswitch_2
    if-ne p1, v3, :cond_3

    .line 1606
    const/4 v0, 0x5

    goto :goto_0

    .line 1607
    :cond_3
    if-ne p1, v2, :cond_0

    .line 1608
    const/4 v0, 0x5

    goto :goto_0

    .line 1614
    :cond_4
    if-ne p1, v3, :cond_5

    .line 1615
    const/4 v0, 0x3

    goto :goto_0

    .line 1616
    :cond_5
    if-ne p1, v2, :cond_0

    .line 1617
    const/16 v0, 0xa

    goto :goto_0

    .line 1590
    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xf2 -> :sswitch_1
        0x11c -> :sswitch_2
    .end sparse-switch
.end method

.method public TvOutPostHDMISubTitleTextSize(I)I
    .locals 4
    .parameter "mFontSize"

    .prologue
    .line 1562
    const/16 v1, 0x2d

    .line 1563
    .local v1, ret_val:I
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->SubTitleTextSizeLevel(I)I

    move-result v0

    .line 1565
    .local v0, mFontLevel:I
    sget v2, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sparse-switch v2, :sswitch_data_0

    .line 1580
    move v1, p1

    .line 1583
    :goto_0
    return v1

    .line 1568
    :sswitch_0
    const/16 v2, 0x13

    mul-int/lit8 v3, v0, 0x4

    sub-int v1, v2, v3

    .line 1569
    goto :goto_0

    .line 1571
    :sswitch_1
    const/16 v2, 0x16

    mul-int/lit8 v3, v0, 0x4

    sub-int v1, v2, v3

    .line 1572
    goto :goto_0

    .line 1574
    :sswitch_2
    const/16 v2, 0x1e

    mul-int/lit8 v3, v0, 0x4

    sub-int v1, v2, v3

    .line 1575
    goto :goto_0

    .line 1577
    :sswitch_3
    move v1, p1

    .line 1578
    goto :goto_0

    .line 1565
    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xf2 -> :sswitch_1
        0x11c -> :sswitch_2
        0x19e -> :sswitch_3
    .end sparse-switch
.end method

.method public TvOutPostHDMISubtitle(Ljava/lang/String;IIIZ)V
    .locals 21
    .parameter "mSubTitleText"
    .parameter "textsize"
    .parameter "textColor"
    .parameter "lineNum"
    .parameter "bUpdate"

    .prologue
    .line 1310
    const-string v16, "TvOut-Observer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "TvOutPostHDMISubtitle  textsize =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "  lineNum  : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    const/4 v13, 0x0

    .local v13, width:I
    const/4 v6, 0x0

    .local v6, height:I
    const/4 v14, 0x0

    .local v14, x:I
    const/4 v15, 0x0

    .line 1314
    .local v15, y:I
    const/4 v11, 0x0

    .line 1315
    .local v11, tempMargin:I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/server/TvOutService;->TvOutPostHDMISubTitleTextSize(I)I

    move-result v12

    .line 1317
    .local v12, textsizeHdmi:I
    const-string v16, "TvOut-Observer"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "textSizeHDMI  =  "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_0

    if-nez p5, :cond_0

    .line 1381
    :goto_0
    return-void

    .line 1324
    :cond_0
    const/high16 v16, -0x100

    move/from16 v0, p3

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 1325
    const p3, -0xf5f5f6

    .line 1328
    :cond_1
    new-instance v9, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1329
    .local v9, mTvoutSubtitleText:Landroid/widget/TextView;
    const/high16 v16, 0x8

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    .line 1330
    const/16 v16, 0x51

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1331
    const/high16 v16, 0x4040

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, -0xfafafb

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1332
    invoke-static/range {p3 .. p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1333
    move v0, v12

    int-to-float v0, v0

    move/from16 v16, v0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1334
    const/16 v16, 0x0

    const/16 v17, 0x0

    sget v18, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    const/16 v19, 0xf

    sub-int v18, v18, v19

    sget v19, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    const/16 v20, 0xf

    sub-int v19, v19, v20

    move-object v0, v9

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 1337
    const/high16 v16, -0x100

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    .line 1338
    move-object v0, v9

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1339
    const/16 v16, 0x1

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1340
    invoke-virtual {v9}, Landroid/widget/TextView;->invalidate()V

    .line 1341
    invoke-virtual {v9}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 1343
    invoke-virtual {v9}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1344
    .local v10, sBitmap:Landroid/graphics/Bitmap;
    if-nez v10, :cond_2

    .line 1346
    const-string v16, "TvOut-Observer"

    const-string v17, "TvOutPostHDMISubtitle bitmap is null "

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1351
    :cond_2
    if-eqz v9, :cond_3

    const-string v16, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    if-nez p4, :cond_3

    .line 1352
    invoke-virtual {v9}, Landroid/widget/TextView;->getLineCount()I

    move-result p4

    .line 1356
    :cond_3
    invoke-virtual {v9}, Landroid/widget/TextView;->getLineCount()I

    move-result v7

    .line 1357
    .local v7, linecount:I
    invoke-virtual {v9}, Landroid/widget/TextView;->getLineHeight()I

    move-result v8

    .line 1361
    .local v8, lineheight:I
    const/16 v16, 0x4

    move v0, v7

    move/from16 v1, v16

    if-gt v0, v1, :cond_5

    .line 1363
    sget v16, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget v17, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    div-int/lit8 v17, v17, 0x8

    sub-int v16, v16, v17

    div-int/lit8 v17, v12, 0x3

    add-int v17, v17, v12

    add-int/lit8 v18, v7, 0x1

    mul-int v17, v17, v18

    sub-int v15, v16, v17

    .line 1369
    :goto_1
    if-gez v15, :cond_4

    .line 1370
    const/4 v15, 0x0

    .line 1372
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    const/high16 v17, -0x100

    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    move-object/from16 v16, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v16

    move-object v1, v10

    move/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    const/high16 v18, -0x100

    invoke-virtual/range {v16 .. v18}, Landroid/hardware/TvOut;->TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V

    .line 1377
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1379
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 1365
    :cond_5
    sget v16, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    mul-int/lit8 v17, v8, 0x5

    sub-int v5, v16, v17

    .line 1366
    .local v5, delta:I
    const/16 v16, 0x5

    sub-int v15, v5, v16

    goto :goto_1
.end method

.method public TvOutResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 701
    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutResume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-ne v0, v3, :cond_2

    .line 747
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Tvout resume"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    sget v1, Lcom/android/server/TvOutService;->sRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->SetOrientation(I)V

    .line 750
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvOutResume(I)V

    .line 751
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 752
    sput-boolean v3, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 764
    :goto_0
    return-void

    .line 756
    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tvout.isEnabled()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 761
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvOutSetImage(I)V
    .locals 2
    .parameter "paddr"

    .prologue
    .line 769
    const-string v0, "TvOut-Observer"

    const-string v1, "TvOutSetImage"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :cond_0
    return-void
.end method

.method public TvOutSuspend(Ljava/lang/String;)V
    .locals 2
    .parameter "tvText"

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 679
    .local v0, tvouthdmisuspendInit:Z
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->TvOutSuspendAnalog(Ljava/lang/String;)V

    .line 684
    :cond_1
    return-void
.end method

.method public TvOutSuspendAnalog(Ljava/lang/String;)V
    .locals 4
    .parameter "tvText"

    .prologue
    const/4 v3, 0x1

    const-string v2, "TvOut-Observer"

    .line 600
    const-string v0, "TvOut-Observer"

    const-string v0, "TvOutSuspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 627
    sget-boolean v0, Lcom/android/server/TvOutService;->mTvSuspend:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    if-ne v0, v3, :cond_1

    .line 629
    :cond_0
    const-string v0, "TvOut-Observer"

    const-string v0, "Call Suspend"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    iget-object v1, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/TvOut;->TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V

    .line 631
    sput-boolean v3, Lcom/android/server/TvOutService;->mTvSuspend:Z

    .line 632
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    .line 644
    :goto_0
    return-void

    .line 636
    :cond_1
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTvSuspend"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvSuspend:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsTvWaitResume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsTvWaitResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 641
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTvoutCableConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isTvoutCableConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public TvoutSubtitleIsEnable()Z
    .locals 2

    .prologue
    .line 1760
    const-string v0, "TvOut-Observer"

    const-string v1, "isHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleIsEnable()Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitlePostString(Ljava/lang/String;I)Z
    .locals 16
    .parameter "mSubTitleText"
    .parameter "fontsize"

    .prologue
    .line 1680
    const-string v12, "TvOut-Observer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TvoutSubtitlePostString  string =  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " fontsize : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    const/4 v9, 0x0

    .local v9, width:I
    const/4 v3, 0x0

    .local v3, height:I
    const/4 v10, 0x0

    .local v10, x:I
    const/4 v11, 0x0

    .line 1684
    .local v11, y:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/TvOutService;->textSizeForSubtitle()I

    move-result v8

    .line 1686
    .local v8, textsizehdmi:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    move-object v12, v0

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/TvOutService;->mPrevFontSize:I

    move v12, v0

    move v0, v12

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1688
    const/4 v12, 0x0

    .line 1731
    :goto_0
    return v12

    .line 1691
    :cond_0
    new-instance v6, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    move-object v12, v0

    invoke-direct {v6, v12}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1693
    .local v6, mTvoutSubtitleText:Landroid/widget/TextView;
    const/high16 v12, 0x8

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheQuality(I)V

    .line 1694
    const/16 v12, 0x11

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 1695
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide v12, v0

    const-wide v14, 0x3fe999999999999aL

    mul-double/2addr v12, v14

    double-to-float v12, v12

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1696
    const/4 v12, 0x0

    const/4 v13, 0x0

    sget v14, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v15, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    invoke-virtual {v6, v12, v13, v14, v15}, Landroid/widget/TextView;->layout(IIII)V

    .line 1697
    const/high16 v12, -0x100

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheBackgroundColor(I)V

    .line 1698
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1699
    const/4 v12, 0x1

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1700
    invoke-virtual {v6}, Landroid/widget/TextView;->invalidate()V

    .line 1701
    invoke-virtual {v6}, Landroid/widget/TextView;->buildDrawingCache()V

    .line 1702
    invoke-virtual {v6}, Landroid/widget/TextView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1704
    .local v7, sBitmap:Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 1706
    const-string v12, "TvOut-Observer"

    const-string v13, "TvoutHDMIPostSubtitle bitmap is null "

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    const/4 v12, 0x0

    goto :goto_0

    .line 1711
    :cond_1
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    .line 1712
    .local v4, linecount:I
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v5

    .line 1714
    .local v5, lineheight:I
    sget v12, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    mul-int v13, v4, v5

    sub-int v2, v12, v13

    .line 1716
    .local v2, delta:I
    if-lez v2, :cond_2

    .line 1718
    div-int/lit8 v12, v2, 0x2

    div-int/lit8 v13, v5, 0x2

    sub-int v11, v12, v13

    .line 1721
    :cond_2
    const-string v12, "TvOut-Observer"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "subttle y : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object v12, v0

    const/high16 v13, -0x100

    invoke-virtual {v12, v13}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    move-object v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    const/4 v15, 0x0

    invoke-virtual {v12, v7, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    move-object v13, v0

    const/high16 v14, -0x100

    invoke-virtual {v12, v13, v14}, Landroid/hardware/TvOut;->TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z

    .line 1727
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setDrawingCacheEnabled(Z)V

    .line 1729
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/TvOutService;->mPrevSubtitle:Ljava/lang/String;

    .line 1730
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TvOutService;->mPrevFontSize:I

    .line 1731
    const/4 v12, 0x1

    goto/16 :goto_0
.end method

.method public TvoutSubtitleSetStatus(I)Z
    .locals 4
    .parameter "mSubTitleOn"

    .prologue
    const/4 v3, 0x0

    .line 1655
    const-string v0, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TvoutSubtitleSetStatus :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    if-lez p1, :cond_0

    .line 1659
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/TvOutService;->TvoutSubtitleIsEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1661
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetWidth()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    .line 1662
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->TvoutSubtitleGetHeight()I

    move-result v0

    sput v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    .line 1663
    sget v0, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_WIDTH:I

    sget v1, Lcom/android/server/TvOutService;->HDMI_SUBTITLE_HEIGHT:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    .line 1664
    iget-object v0, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 1665
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/server/TvOutService;->bitmap_subtitle:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/server/TvOutService;->canvas_subtile:Landroid/graphics/Canvas;

    .line 1666
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    .line 1674
    :goto_0
    return v0

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, v3}, Landroid/hardware/TvOut;->TvoutSubtitleSetStatus(I)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 1674
    goto :goto_0
.end method

.method public fwHdmiStatus(I)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->fwHdmiStatus(I)V

    .line 1017
    return-void
.end method

.method public getHDCPStatus()Z
    .locals 1

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->getHDCPStatus()Z

    move-result v0

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 778
    const-string v0, "android.intent.action.locale.changed"

    return-object v0
.end method

.method public getSubtitleHDMIHeight()I
    .locals 2

    .prologue
    .line 1532
    const-string v0, "TvOut-Observer"

    const-string v1, "getSubtitleHDMIHeight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitleHDMIWidth()I
    .locals 2

    .prologue
    .line 1513
    const-string v0, "TvOut-Observer"

    const-string v1, "getSubtitleHDMIWidth"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v4, "TvOut-Observer"

    .line 238
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG1"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    new-instance v2, Landroid/hardware/TvOut;

    invoke-direct {v2}, Landroid/hardware/TvOut;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    .line 241
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    .line 243
    iput v5, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    .line 244
    new-instance v1, Lcom/android/server/TvOutService$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/TvOutService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TvOutService$SettingsObserver;-><init>(Lcom/android/server/TvOutService;Landroid/os/Handler;)V

    .line 246
    .local v1, settingsObserver:Lcom/android/server/TvOutService$SettingsObserver;
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tv_out"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 247
    invoke-virtual {v1}, Lcom/android/server/TvOutService$SettingsObserver;->observe()V

    .line 248
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG2"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.locale.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvOutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    iget-object v2, p0, Lcom/android/server/TvOutService;->mContext:Landroid/content/Context;

    const/4 v3, 0x6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/TvOutService;->setWakeMode(Landroid/content/Context;I)V

    .line 257
    const-string v2, "TvOut-Observer"

    const-string v2, "TVOUT_DEBUG_VIVEK_ANALOG3"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    .line 564
    const-string v0, "TvOut-Observer"

    const-string v1, "isEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHDMISubtitleOn()Z
    .locals 2

    .prologue
    .line 1433
    const-string v0, "TvOut-Observer"

    const-string v1, "isHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHDMISubtitleOn()Z

    move-result v0

    return v0
.end method

.method public isHdmiCableConnected()Z
    .locals 2

    .prologue
    .line 1091
    const-string v0, "TvOut-Observer"

    const-string v1, "isHdmiCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiCableConnected()Z

    move-result v0

    return v0
.end method

.method public isHdmiDualEnabled()Z
    .locals 2

    .prologue
    .line 1473
    const-string v0, "TvOut-Observer"

    const-string v1, "isHdmiDualEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiDualEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiEnabled()Z
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiSuspended()Z
    .locals 2

    .prologue
    .line 1074
    const-string v0, "TvOut-Observer"

    const-string v1, "isHdmiSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isHdmiSuspended()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    .line 873
    const-string v0, "TvOut-Observer"

    const-string v1, "isSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 2

    .prologue
    .line 891
    const-string v0, "TvOut-Observer"

    const-string v1, "isTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public setHdmiCableConnected(I)V
    .locals 3
    .parameter "hdmiCableConnected"

    .prologue
    .line 1109
    const-string v0, "TvOut-Observer"

    const-string v1, "setHdmiCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setHdmiCableConnected(I)V

    .line 1112
    const-string v0, "MyTag1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI_CAMERA_VIDEO_CALL hdmiCableConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    return-void
.end method

.method public setTvoutCableConnected(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    .line 915
    const-string v0, "TvOut-Observer"

    const-string v1, "setTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0, p1}, Landroid/hardware/TvOut;->setTvoutCableConnected(I)V

    .line 917
    return-void
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "mode"

    .prologue
    const-string v4, "TvOut-Observer"

    .line 493
    const/4 v1, 0x0

    .line 494
    .local v1, washeld:Z
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 495
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 496
    const/4 v1, 0x1

    .line 497
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 499
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 501
    :cond_1
    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode is called  SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 504
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvOut-Observer"

    invoke-virtual {v0, v2, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    const-string v2, "TvOut-Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWakeMode setting the mode SCREEN_ON_DEBUG mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_2

    .line 509
    const-string v2, "TvOut-Observer"

    const-string v2, "setWakeMode mWakeLock is null SCREEN_ON_DEBUG"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 513
    if-eqz v1, :cond_3

    .line 514
    iget-object v2, p0, Lcom/android/server/TvOutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 516
    :cond_3
    return-void
.end method

.method public updateHdmiCableConnected(I)Z
    .locals 6
    .parameter "hdmicableconnected"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "TvOut-Observer"

    .line 1197
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHdmiCableConnected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const/4 v0, 0x0

    .line 1200
    .local v0, ret:Z
    if-ne p1, v3, :cond_2

    .line 1202
    invoke-virtual {p0, v3}, Lcom/android/server/TvOutService;->setHdmiCableConnected(I)V

    .line 1203
    sput-boolean v3, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    .line 1204
    invoke-direct {p0, v3}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 1210
    :goto_0
    sget-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    if-nez v1, :cond_3

    .line 1212
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHdmiCableConnected   off  mTvHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->SetTvoutHdmiStatus(I)Z

    move-result v0

    .line 1225
    :cond_0
    :goto_1
    if-nez p1, :cond_1

    .line 1227
    invoke-virtual {p0, v5}, Lcom/android/server/TvOutService;->setHdmiCableConnected(I)V

    .line 1228
    invoke-direct {p0, v5}, Lcom/android/server/TvOutService;->stayAwake(Z)V

    .line 1231
    :cond_1
    return v0

    .line 1208
    :cond_2
    sput-boolean v5, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    goto :goto_0

    .line 1217
    :cond_3
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHdmiCableConnected   on  mTvHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    iget-object v1, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v1}, Landroid/hardware/TvOut;->isHdmiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    if-ne v1, v3, :cond_0

    .line 1221
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateHdmiCableConnected enable tvout    mTvHdmiCableConnected :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/TvOutService;->mTvHdmiCableConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    invoke-virtual {p0, p1}, Lcom/android/server/TvOutService;->SetTvoutHdmiStatus(I)Z

    move-result v0

    goto :goto_1
.end method

.method updateTVoutOnScreenOnOff()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "TvOut-Observer"

    .line 920
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-ne v0, v2, :cond_1

    .line 922
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus off  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->DisableTvOut()V

    .line 948
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    iget v0, p0, Lcom/android/server/TvOutService;->mTvStatus:I

    if-ne v0, v2, :cond_0

    .line 931
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff tvstatus on  mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/server/TvOutService;->tvout:Landroid/hardware/TvOut;

    invoke-virtual {v0}, Landroid/hardware/TvOut;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    if-ne v0, v2, :cond_0

    .line 935
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CableConnected enable tvout    mTvCableConnected :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mTvCableConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    sget-boolean v0, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    if-nez v0, :cond_2

    .line 938
    invoke-virtual {p0}, Lcom/android/server/TvOutService;->EnableTvOut()V

    goto :goto_0

    .line 942
    :cond_2
    const-string v0, "TvOut-Observer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateTVoutOnScreenOnOff  enable tvout    mIsScreenOff :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/TvOutService;->mIsScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
