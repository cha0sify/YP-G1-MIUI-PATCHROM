.class Lcom/android/server/EncryptService;
.super Landroid/os/storage/IEncryptService$Stub;
.source "EncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/EncryptService$EncryptionWakeLock;,
        Lcom/android/server/EncryptService$CheckStorageState;,
        Lcom/android/server/EncryptService$InternalDB;,
        Lcom/android/server/EncryptService$EncryptionError;,
        Lcom/android/server/EncryptService$ESState;,
        Lcom/android/server/EncryptService$Policy;,
        Lcom/android/server/EncryptService$CommandMode;,
        Lcom/android/server/EncryptService$CryptoPolicy;,
        Lcom/android/server/EncryptService$CryptoNotification;,
        Lcom/android/server/EncryptService$MountServiceBinderListener;,
        Lcom/android/server/EncryptService$MountCallBackBinderListener;,
        Lcom/android/server/EncryptService$EncryptServiceHandler;,
        Lcom/android/server/EncryptService$DisplayHandler;,
        Lcom/android/server/EncryptService$MountHandler;,
        Lcom/android/server/EncryptService$EncryptResponseCode;
    }
.end annotation


# static fields
.field public static final ACTION_TYPE_APPLICATION:I = 0x5

.field public static final ACTION_TYPE_BOOTING:I = 0x3

.field public static final ACTION_TYPE_FORMAT:I = 0x4

.field public static final ACTION_TYPE_INSERTED:I = 0x2

.field public static final ACTION_TYPE_MOUNTING:I = 0x1

.field public static final ACTION_TYPE_UNKNOWN:I = 0x0

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "EncryptConnector"

.field public static final FIRST_STORAGE_CID:Ljava/lang/String; = "sdcard"

.field private static final H_ENCRYPT_ASK_LOCK:I = 0x3

.field private static final H_ENCRYPT_GET_STATUS:I = 0x1

.field private static final H_ENCRYPT_MOUNT:I = 0x4

.field private static final H_ENCRYPT_UPDATE:I = 0x2

.field private static final LOCAL_LOGA:Z = false

.field private static final LOCAL_LOGB:Z = false

.field private static final LOCAL_LOGD:Z = false

.field private static final TAG:Ljava/lang/String; = "EncryptService"

.field public static toggle:Z


# instance fields
.field private final CryptBatch_ex_LOCK:Ljava/lang/Object;

.field private final CryptBatch_in_LOCK:Ljava/lang/Object;

.field private final CryptShare_ex_LOCK:Ljava/lang/Object;

.field private final CryptShare_in_LOCK:Ljava/lang/Object;

.field private ex_mount_return_code:I

.field private ex_share_return_code:I

.field private in_mount_return_code:I

.field private in_share_return_code:I

.field protected inter_db:Lcom/android/server/EncryptService$InternalDB;

.field protected isFormatRunning:Z

.field private mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mCryptoError:I

.field private mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

.field private mPms:Lcom/android/server/PackageManagerService;

.field private mReady:Z

.field protected mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

.field private m_MountService:Landroid/os/storage/IMountService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/EncryptService;->toggle:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v9, "EncryptConnector"

    const-string v8, "EncryptService"

    .line 993
    invoke-direct {p0}, Landroid/os/storage/IEncryptService$Stub;-><init>()V

    .line 68
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    .line 74
    iput-object v6, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 76
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_in_LOCK:Ljava/lang/Object;

    .line 77
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptBatch_ex_LOCK:Ljava/lang/Object;

    .line 78
    iput v7, p0, Lcom/android/server/EncryptService;->in_mount_return_code:I

    .line 79
    iput v7, p0, Lcom/android/server/EncryptService;->ex_mount_return_code:I

    .line 81
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_in_LOCK:Ljava/lang/Object;

    .line 82
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/EncryptService;->CryptShare_ex_LOCK:Ljava/lang/Object;

    .line 83
    iput v7, p0, Lcom/android/server/EncryptService;->in_share_return_code:I

    .line 84
    iput v7, p0, Lcom/android/server/EncryptService;->ex_share_return_code:I

    .line 89
    iput-object v6, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    .line 90
    iput-object v6, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    .line 91
    iput-object v6, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    .line 92
    iput-object v6, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    .line 110
    iput-object v6, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    .line 276
    new-instance v2, Lcom/android/server/EncryptService$3;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$3;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 775
    iput-object v6, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    .line 776
    iput-object v6, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    .line 1462
    iput v7, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    .line 2188
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->isFormatRunning:Z

    .line 994
    const-string v2, "EncryptService"

    const-string v2, "EncryptService :: "

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    iput-object p1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    .line 997
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/PackageManagerService;

    iput-object v2, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    .line 999
    iget-object v2, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4, v6, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1002
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "EncryptService"

    invoke-direct {v2, v8}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 1003
    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_4

    .line 1005
    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 1006
    new-instance v2, Lcom/android/server/EncryptService$EncryptServiceHandler;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/EncryptService$EncryptServiceHandler;-><init>(Lcom/android/server/EncryptService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    .line 1007
    iget-object v2, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 1009
    const-string v2, "EncryptService"

    const-string v2, " mHandler is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    :cond_0
    :goto_0
    const-string v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    .line 1020
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    if-eqz v2, :cond_5

    .line 1022
    new-instance v2, Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountServiceBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    .line 1023
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mMountServiceBinderListener:Lcom/android/server/EncryptService$MountServiceBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1026
    :cond_1
    new-instance v2, Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-direct {v2, p0, v6}, Lcom/android/server/EncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    .line 1027
    iget-object v2, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    if-eqz v2, :cond_2

    .line 1028
    iget-object v2, p0, Lcom/android/server/EncryptService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/server/EncryptService;->mBinderListener:Lcom/android/server/EncryptService$MountCallBackBinderListener;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1036
    :cond_2
    :goto_1
    new-instance v2, Lcom/android/server/EncryptService$InternalDB;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$InternalDB;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    .line 1037
    new-instance v2, Lcom/android/server/EncryptService$CheckStorageState;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$CheckStorageState;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    .line 1038
    new-instance v2, Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-direct {v2, p0}, Lcom/android/server/EncryptService$EncryptionWakeLock;-><init>(Lcom/android/server/EncryptService;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    .line 1039
    iget-object v2, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$EncryptionWakeLock;->InitWakeLock()V

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->updateEncryptionEnable()V

    .line 1049
    :try_start_0
    new-instance v2, Lcom/android/server/NativeDaemonConnector;

    const-string v3, "enc_report"

    const/16 v4, 0x1f4

    const-string v5, "EncryptConnector"

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_2
    iget-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    if-eqz v2, :cond_3

    .line 1057
    iput-boolean v7, p0, Lcom/android/server/EncryptService;->mReady:Z

    .line 1058
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/EncryptService;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v3, "EncryptConnector"

    invoke-direct {v1, v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1059
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1061
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_3
    return-void

    .line 1014
    :cond_4
    iput-object v6, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    .line 1015
    const-string v2, "EncryptService"

    const-string v2, " mHandlerThread is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1031
    :cond_5
    const-string v2, "EncryptService"

    const-string v2, " mMountService is null!"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1050
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1052
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " NativeDaemonConnector exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/server/EncryptService;->waitForReady()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/EncryptService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/EncryptService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/server/EncryptService;->mReady:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EncryptService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private authByUid(I)Z
    .locals 4
    .parameter "callerUid"

    .prologue
    .line 242
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 243
    .local v1, myUid:I
    iget-object v3, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 244
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 245
    invoke-virtual {v2, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    .line 247
    .local v0, match:I
    if-nez v0, :cond_0

    .line 249
    const/4 v3, 0x1

    .line 254
    .end local v0           #match:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v9, " onEvent::"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " raw= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    if-eqz p3, :cond_0

    .line 337
    const-string v9, " cooked = "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    move-object v0, p3

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v8, v0, v3

    .line 339
    .local v8, str:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 343
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v8           #str:Ljava/lang/String;
    :cond_0
    const/16 v9, 0x2b8

    if-ne p1, v9, :cond_5

    .line 348
    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v9

    if-nez v9, :cond_1

    .line 349
    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 352
    :cond_1
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_2

    .line 354
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    .line 355
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 358
    :cond_2
    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v10, "none"

    invoke-virtual {v9, v10}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/android/server/EncryptService;->mPms:Lcom/android/server/PackageManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/server/PackageManagerService;->updateExternalMediaStatus(ZZ)V

    .line 365
    const/16 v6, 0x10

    .line 366
    .local v6, pError:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 367
    or-int/lit8 v6, v6, 0x1

    .line 369
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    .line 371
    iget-object v9, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    .line 499
    .end local v6           #pError:I
    :cond_4
    :goto_1
    const/4 v9, 0x1

    return v9

    .line 374
    :cond_5
    const/16 v9, 0x2b2

    if-ne p1, v9, :cond_b

    .line 377
    const/4 v7, 0x0

    .line 378
    .local v7, progressCnt:I
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 379
    .local v2, devTok:[Ljava/lang/String;
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 383
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-nez v9, :cond_6

    .line 386
    new-instance v9, Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-direct {v9, p0, v10}, Lcom/android/server/EncryptService$CryptoNotification;-><init>(Lcom/android/server/EncryptService;Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 389
    :cond_6
    const/16 v9, 0x64

    if-ge v7, v9, :cond_8

    .line 391
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    :goto_2
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V
    invoke-static {v9, v10, v11, v7}, Lcom/android/server/EncryptService$CryptoNotification;->access$300(Lcom/android/server/EncryptService$CryptoNotification;ZZI)V

    goto :goto_1

    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 396
    :cond_8
    const/16 v9, 0x64

    if-ne v7, v9, :cond_a

    .line 399
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    const/4 v10, 0x1

    :goto_3
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/server/EncryptService$CryptoNotification;->access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    goto :goto_1

    :cond_9
    const/4 v10, 0x0

    goto :goto_3

    .line 402
    :cond_a
    const/16 v9, 0x64

    if-le v7, v9, :cond_4

    .line 407
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_4

    .line 409
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$CryptoNotification;->destroy()V

    .line 410
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    goto :goto_1

    .line 447
    .end local v2           #devTok:[Ljava/lang/String;
    .end local v7           #progressCnt:I
    :cond_b
    const/16 v9, 0x2b5

    if-ne p1, v9, :cond_c

    .line 449
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    goto :goto_1

    .line 454
    :cond_c
    const/16 v9, 0x2b6

    if-ne p1, v9, :cond_10

    .line 456
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 458
    .restart local v2       #devTok:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 460
    .local v5, nRet:I
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    if-eqz v9, :cond_d

    .line 462
    iget-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v10}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_e

    const/4 v10, 0x1

    :goto_4
    iget-object v11, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v11}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/EncryptService;->isFirstStorage(Ljava/lang/String;)Z

    move-result v11

    #calls: Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
    invoke-static {v9, v10, v11}, Lcom/android/server/EncryptService$CryptoNotification;->access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V

    .line 466
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/server/EncryptService;->mCryptoNotification:Lcom/android/server/EncryptService$CryptoNotification;

    .line 469
    :cond_d
    iget-object v9, p0, Lcom/android/server/EncryptService;->mWakeLock:Lcom/android/server/EncryptService$EncryptionWakeLock;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$EncryptionWakeLock;->release()V

    .line 473
    iget-object v9, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v9}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_f

    .line 475
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    move-result v5

    goto/16 :goto_1

    .line 462
    :cond_e
    const/4 v10, 0x0

    goto :goto_4

    .line 479
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto/16 :goto_1

    .line 484
    .end local v2           #devTok:[Ljava/lang/String;
    .end local v5           #nRet:I
    :cond_10
    const/16 v9, 0x2b7

    if-ne p1, v9, :cond_4

    .line 486
    const-string v9, " "

    invoke-virtual {p2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 487
    .restart local v2       #devTok:[Ljava/lang/String;
    goto/16 :goto_1
.end method

.method private startEncryptActivtiy(I)V
    .locals 3
    .parameter "popup_type"

    .prologue
    .line 1617
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.encrypt.action.SHOW_POPUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1618
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.encrypt"

    const-string v2, "com.sec.android.app.encrypt.EncryptionPopupActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1619
    const/high16 v1, 0x1402

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1622
    const-string v1, "encyprt_activity_popuptype"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1624
    iget-object v1, p0, Lcom/android/server/EncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1626
    return-void
.end method

.method private waitForReady()V
    .locals 3

    .prologue
    .line 265
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-nez v1, :cond_0

    .line 266
    const/4 v0, 0x5

    .local v0, retries:I
    :goto_1
    if-lez v0, :cond_2

    .line 267
    iget-boolean v1, p0, Lcom/android/server/EncryptService;->mReady:Z

    if-eqz v1, :cond_1

    .line 274
    .end local v0           #retries:I
    :cond_0
    return-void

    .line 270
    .restart local v0       #retries:I
    :cond_1
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 266
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 272
    :cond_2
    const-string v1, "EncryptService"

    const-string v2, " waitForReady :: Waiting too long for mReady!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected checkMountedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1655
    const/4 v0, 0x0

    .line 1656
    .local v0, bMounted:Z
    const-string v1, ""

    .line 1660
    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1661
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1663
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1664
    const/4 v0, 0x1

    .line 1669
    :cond_0
    return v0
.end method

.method protected checkNextWorkingJob(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    .line 1881
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1885
    :cond_0
    const/4 v0, 0x1

    .line 1888
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected checkPolicyInfo(Ljava/lang/String;)Z
    .locals 2
    .parameter "sPath"

    .prologue
    .line 1839
    const/4 v0, 0x0

    .line 1843
    .local v0, bRet:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1845
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    .line 1853
    :cond_1
    :goto_0
    return v0

    .line 1846
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1848
    :cond_3
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0
.end method

.method protected checkSharedStorage(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1674
    const/4 v0, 0x0

    .line 1675
    .local v0, bShared:Z
    const-string v1, ""

    .line 1679
    .local v1, sStorageState:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->getStroageState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1680
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1682
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    const/4 v0, 0x1

    .line 1688
    :cond_0
    return v0
.end method

.method protected checkWorkingState()Z
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v0}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "working"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1356
    const/4 v0, 0x1

    .line 1359
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected cryptoMain(Ljava/lang/String;Ljava/lang/String;ZZ)I
    .locals 10
    .parameter "sPath"
    .parameter "sStorageAction"
    .parameter "l_bPopup"
    .parameter "bAppReq"

    .prologue
    const/4 v5, 0x5

    const/4 v8, 0x1

    const/4 v7, -0x4

    const/16 v6, -0x64

    const-string v9, "none"

    .line 2377
    const/4 v2, 0x0

    .line 2378
    .local v2, command:I
    move v1, p3

    .line 2379
    .local v1, bPopupBox:Z
    const/4 v3, 0x0

    .line 2384
    .local v3, nRet:I
    invoke-virtual {p0, p2}, Lcom/android/server/EncryptService;->getActionType(Ljava/lang/String;)I

    move-result v0

    .line 2387
    .local v0, actionType:I
    if-nez v0, :cond_0

    move v4, v6

    .line 2524
    :goto_0
    return v4

    .line 2395
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->checkWorkingState()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    .line 2398
    goto :goto_0

    .line 2405
    :cond_1
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    .line 2407
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 2408
    goto :goto_0

    .line 2410
    :cond_2
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 2412
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->requestEncryptFormat(Ljava/lang/String;)V

    .line 2413
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    move v4, v6

    .line 2417
    goto :goto_0

    .line 2424
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    .line 2426
    goto :goto_0

    .line 2433
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v2

    .line 2436
    if-nez v2, :cond_6

    .line 2438
    if-eq v0, v5, :cond_8

    move v4, v6

    .line 2439
    goto :goto_0

    .line 2441
    :cond_6
    const/4 v4, -0x7

    if-ne v2, v4, :cond_7

    .line 2443
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "none"

    invoke-virtual {v4, v9}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    move v4, v6

    .line 2444
    goto :goto_0

    .line 2445
    :cond_7
    const/4 v4, -0x6

    if-ne v2, v4, :cond_8

    .line 2447
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v5, "none"

    invoke-virtual {v4, v9}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    move v4, v7

    .line 2448
    goto :goto_0

    .line 2454
    :cond_8
    if-ne v0, v5, :cond_b

    .line 2456
    const/4 v1, 0x0

    .line 2500
    :cond_9
    :goto_1
    const/4 v3, -0x4

    .line 2502
    if-eqz v1, :cond_12

    .line 2504
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->doPopupBox(I)Z

    :cond_a
    :goto_2
    move v4, v3

    .line 2524
    goto :goto_0

    .line 2458
    :cond_b
    if-ne v0, v8, :cond_10

    .line 2460
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkSharedStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v6

    .line 2462
    goto :goto_0

    .line 2464
    :cond_c
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2466
    const/4 v1, 0x0

    goto :goto_1

    .line 2468
    :cond_d
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkBootingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    move v4, v7

    .line 2471
    goto/16 :goto_0

    .line 2475
    :cond_e
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2479
    :cond_f
    const/16 v4, 0x104

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    move v4, v6

    .line 2480
    goto/16 :goto_0

    .line 2484
    :cond_10
    const/4 v4, 0x3

    if-ne v0, v4, :cond_9

    .line 2486
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v8}, Lcom/android/server/EncryptService$CheckStorageState;->setBootingStorageState(Ljava/lang/String;Z)V

    .line 2488
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->isLockPasswordEnabled()Z

    move-result v4

    if-eqz v4, :cond_11

    move v4, v7

    .line 2489
    goto/16 :goto_0

    .line 2491
    :cond_11
    const/4 v1, 0x0

    goto :goto_1

    .line 2508
    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v4

    if-nez v4, :cond_13

    .line 2510
    const/16 v3, -0x64

    goto :goto_2

    .line 2514
    :cond_13
    iget-object v4, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    iget-object v5, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v5}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/EncryptService$CheckStorageState;->checkFormatingStorageState(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 2516
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method protected doPopupBox(I)Z
    .locals 4
    .parameter "command"

    .prologue
    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, isWorking:Z
    const/4 v1, 0x0

    .line 1946
    .local v1, popuptype:I
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1947
    const/4 v1, 0x1

    .line 1950
    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1951
    or-int/lit8 v1, v1, 0x2

    .line 1979
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->startEncryptActivtiy(I)V

    .line 1980
    const/4 v0, 0x1

    .line 1983
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v3, "none"

    invoke-virtual {v2, v3}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 1987
    return v0
.end method

.method protected doWork(I)Z
    .locals 3
    .parameter "command"

    .prologue
    .line 1992
    const/4 v0, 0x0

    .line 1997
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2000
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v2, "none"

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2001
    const/4 v1, 0x0

    .line 2025
    :goto_0
    return v1

    .line 2004
    :cond_0
    packed-switch p1, :pswitch_data_0

    :goto_1
    move v1, v0

    .line 2025
    goto :goto_0

    .line 2007
    :pswitch_0
    const/4 v0, 0x1

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestBatch()V

    goto :goto_1

    .line 2012
    :pswitch_1
    const/4 v0, 0x1

    .line 2013
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->requestEncryptMount()I

    goto :goto_1

    .line 2016
    :pswitch_2
    const/4 v0, 0x1

    .line 2017
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    goto :goto_1

    .line 2004
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doWorkNextJob(Ljava/lang/String;)Z
    .locals 5
    .parameter "sPath"

    .prologue
    const/4 v4, 0x0

    .line 1900
    const/4 v1, 0x1

    .line 1903
    .local v1, isWorking:Z
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkNextWorkingJob(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 1936
    :goto_0
    return v3

    .line 1907
    :cond_0
    const/4 v1, 0x1

    .line 1908
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1910
    .local v2, sWorkPath:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateWorkingPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    .line 1911
    goto :goto_0

    .line 1915
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getWorkingCommand()I

    move-result v0

    .line 1918
    .local v0, command:I
    if-eqz v0, :cond_2

    const/4 v3, -0x7

    if-eq v0, v3, :cond_2

    .line 1920
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->doWork(I)Z

    move-result v1

    :goto_1
    move v3, v1

    .line 1936
    goto :goto_0

    .line 1922
    :cond_2
    if-nez v0, :cond_3

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->normalMount()V

    .line 1927
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    goto :goto_1

    .line 1931
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public formatVolume(Ljava/lang/String;)I
    .locals 1
    .parameter "sPath"

    .prologue
    .line 188
    const/4 v0, 0x0

    .line 190
    .local v0, nRet:I
    return v0
.end method

.method protected getActionType(Ljava/lang/String;)I
    .locals 1
    .parameter "sAsk"

    .prologue
    .line 1333
    const-string v0, "inserted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    const/4 v0, 0x2

    .line 1348
    :goto_0
    return v0

    .line 1336
    :cond_0
    const-string v0, "mounting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    const/4 v0, 0x1

    goto :goto_0

    .line 1339
    :cond_1
    const-string v0, "booting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1340
    const/4 v0, 0x3

    goto :goto_0

    .line 1342
    :cond_2
    const-string v0, "format"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1343
    const/4 v0, 0x4

    goto :goto_0

    .line 1344
    :cond_3
    const-string v0, "Application"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1345
    const/4 v0, 0x5

    goto :goto_0

    .line 1346
    :cond_4
    const/16 v0, 0x6e

    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1348
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getLatestError()I
    .locals 1

    .prologue
    .line 1466
    iget v0, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    return v0
.end method

.method protected getMountServiceInstance()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 1530
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 1535
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1537
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1538
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    .line 1546
    .end local v0           #service:Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/EncryptService;->m_MountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 1541
    .restart local v0       #service:Landroid/os/IBinder;
    :cond_1
    const-string v1, "EncryptService"

    const-string v2, "getMountServiceInstance : Can\'t get mount service!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1542
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "sPath"

    .prologue
    .line 1747
    const/4 v3, 0x0

    .line 1748
    .local v3, sRet:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1752
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->updateStorageCID(Ljava/lang/String;)Z

    move-result v0

    .line 1754
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_1

    .line 1757
    :cond_0
    const/4 v4, 0x0

    .line 1801
    :goto_0
    return-object v4

    .line 1762
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sdcard"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1764
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/deviceencryption/DeviceEncryptionManager;->getFileCryptProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1765
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1767
    :cond_2
    const-string v3, "NULL"

    :cond_3
    :goto_1
    move-object v4, v3

    .line 1801
    goto :goto_0

    .line 1774
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1776
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_3

    .line 1778
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1781
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_6

    .line 1783
    :cond_5
    const/16 v4, 0x8c

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1784
    const/4 v3, 0x0

    goto :goto_1

    .line 1785
    :cond_6
    const-string v4, "INVALID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1787
    const/16 v4, 0x8d

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1788
    const-string v3, "INVALID"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1793
    .end local v2           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1795
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageCryptoState exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/16 v4, 0x8e

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1
.end method

.method protected getStorageDevPath(Ljava/lang/String;)V
    .locals 9
    .parameter "sPath"

    .prologue
    const-string v8, "EncryptService"

    .line 2536
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2537
    .local v2, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2539
    .local v1, ext_path:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2541
    .local v4, sDevPath:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 2543
    .local v3, mountService:Landroid/os/storage/IMountService;
    if-eqz v3, :cond_0

    .line 2545
    invoke-interface {v3, p1}, Landroid/os/storage/IMountService;->getDeviceDriverPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2546
    const-string v5, "EncryptService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " getDeviceDriverPath sDevPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", sPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2559
    .end local v1           #ext_path:Ljava/lang/String;
    .end local v2           #int_path:Ljava/lang/String;
    .end local v3           #mountService:Landroid/os/storage/IMountService;
    .end local v4           #sDevPath:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2549
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 2551
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : RemoteException exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2553
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 2554
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "EncryptService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getStorageDevPath : Exception exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getStroageState(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    .line 1298
    const/4 v2, 0x0

    .line 1304
    .local v2, sStorageState:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 1305
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 1307
    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1325
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :goto_0
    return-object v2

    .line 1310
    .restart local v1       #mountService:Landroid/os/storage/IMountService;
    :cond_0
    const/16 v3, 0xf0

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1312
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1314
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xf1

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1315
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1317
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 1319
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xf2

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1320
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getStroageState : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getWorkingCommand()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1477
    const/4 v0, -0x7

    .line 1478
    .local v0, nRet:I
    const/4 v1, 0x0

    .line 1483
    .local v1, sStorageState:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->getStorageCryptoState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1485
    if-nez v1, :cond_0

    .line 1486
    const/4 v2, -0x7

    .line 1525
    :goto_0
    return v2

    .line 1490
    :cond_0
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getWorkingPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->updateCryptoPolicy(Ljava/lang/String;)Z

    .line 1493
    const-string v2, "NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1495
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1496
    const/4 v0, 0x1

    :goto_1
    move v2, v0

    .line 1525
    goto :goto_0

    .line 1498
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1500
    :cond_2
    const-string v2, "COMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1502
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1503
    const/4 v0, 0x2

    goto :goto_1

    .line 1505
    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1507
    :cond_4
    const-string v2, "DecryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "EncryptBATCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1509
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1512
    :cond_6
    iget-object v2, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v2}, Lcom/android/server/EncryptService$InternalDB;->getCryptoPolicy()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 1514
    const/4 v0, -0x6

    goto :goto_1

    .line 1518
    :cond_7
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1519
    const/4 v0, -0x7

    goto :goto_1
.end method

.method public isFirstStorage(Ljava/lang/String;)Z
    .locals 1
    .parameter "sPath"

    .prologue
    .line 567
    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    .line 570
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSharedStorage()Z
    .locals 11

    .prologue
    const-string v7, "shared"

    const-string v10, "EncryptService"

    .line 2563
    const/4 v0, 0x0

    .line 2570
    .local v0, bRet:Z
    :try_start_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_FIRST_DISK:Z

    if-eqz v7, :cond_0

    .line 2571
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_INTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    :cond_0
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v7, :cond_1

    .line 2574
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_EXTERNAL_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :cond_1
    sget-boolean v7, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v7, :cond_2

    .line 2577
    const-string v7, "EncryptService"

    const-string v8, " isSharedStorage : INSTALLED_USBHOST_DISK!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2581
    .local v3, int_path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 2583
    .local v2, ext_path:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, sStorageState:Ljava/lang/String;
    const/4 v6, 0x0

    .line 2585
    .local v6, sStorageState2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v4

    .line 2586
    .local v4, mountService:Landroid/os/storage/IMountService;
    if-eqz v4, :cond_4

    .line 2588
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2589
    const-string v7, "shared"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2590
    const/4 v0, 0x1

    .line 2598
    :cond_3
    :goto_0
    invoke-interface {v4, v3}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2599
    const-string v7, "EncryptService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isSharedStorage interSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exterSD="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :cond_4
    :goto_1
    return v0

    .line 2593
    .restart local v2       #ext_path:Ljava/lang/String;
    .restart local v3       #int_path:Ljava/lang/String;
    .restart local v4       #mountService:Landroid/os/storage/IMountService;
    .restart local v5       #sStorageState:Ljava/lang/String;
    .restart local v6       #sStorageState2:Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v2}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2594
    const-string v7, "shared"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_3

    .line 2595
    const/4 v0, 0x1

    goto :goto_0

    .line 2602
    .end local v2           #ext_path:Ljava/lang/String;
    .end local v3           #int_path:Ljava/lang/String;
    .end local v4           #mountService:Landroid/os/storage/IMountService;
    .end local v5           #sStorageState:Ljava/lang/String;
    .end local v6           #sStorageState2:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 2604
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : RemoteException exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2606
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 2607
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "EncryptService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " isSharedStorage : Exception exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public mountVolume(Ljava/lang/String;)I
    .locals 3
    .parameter "sPolicyORsPath2"

    .prologue
    .line 166
    move-object v0, p1

    .line 169
    .local v0, sPolicyORsPath:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$1;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    const/4 v1, 0x0

    return v1
.end method

.method protected normalMount()V
    .locals 2

    .prologue
    .line 2307
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$9;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$9;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2372
    return-void
.end method

.method protected normalUnmount(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    .line 2275
    const/4 v2, 0x0

    .line 2281
    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2283
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 2285
    const/4 v3, 0x1

    invoke-interface {v1, p1, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2301
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return-void

    .line 2289
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2291
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0x10f

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2292
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2294
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2295
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0x110

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2296
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " normalUnmount : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 1

    .prologue
    .line 304
    new-instance v0, Lcom/android/server/EncryptService$4;

    invoke-direct {v0, p0}, Lcom/android/server/EncryptService$4;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0}, Lcom/android/server/EncryptService$4;->start()V

    .line 320
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "code"
    .parameter "raw"
    .parameter "cooked"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/EncryptService$5;-><init>(Lcom/android/server/EncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 329
    const/4 v0, 0x1

    return v0
.end method

.method protected requestBatch()V
    .locals 2

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$6;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$6;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2110
    return-void
.end method

.method protected requestEncryptFormat(Ljava/lang/String;)V
    .locals 6
    .parameter "sPath"

    .prologue
    const-string v5, "EncryptService"

    .line 2197
    const/4 v2, 0x0

    .line 2203
    .local v2, nRet:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2205
    .local v1, mountService:Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 2207
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "working"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2209
    iget-object v3, p0, Lcom/android/server/EncryptService;->mCheckStorageState:Lcom/android/server/EncryptService$CheckStorageState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/EncryptService$CheckStorageState;->setFormatingStorageState(Ljava/lang/String;Z)V

    .line 2211
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4}, Lcom/android/server/EncryptService$InternalDB;->getStorageCID()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v3, v4}, Landroid/os/storage/IMountService;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 2227
    .end local v1           #mountService:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    const-string v4, "none"

    invoke-virtual {v3, v4}, Lcom/android/server/EncryptService$InternalDB;->setState(Ljava/lang/String;)V

    .line 2235
    return-void

    .line 2215
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2217
    .local v0, e:Landroid/os/RemoteException;
    const/16 v3, 0xbe

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2218
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    const/4 v2, -0x2

    .line 2225
    goto :goto_0

    .line 2221
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 2222
    .local v0, e:Ljava/lang/Exception;
    const/16 v3, 0xbf

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 2223
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " requestEncryptFormat : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2224
    const/4 v2, -0x3

    goto :goto_0
.end method

.method protected requestEncryptMount()I
    .locals 2

    .prologue
    .line 2121
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$7;

    invoke-direct {v1, p0}, Lcom/android/server/EncryptService$7;-><init>(Lcom/android/server/EncryptService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2184
    const/4 v0, 0x0

    return v0
.end method

.method public saveRecoveryPassword(Ljava/lang/String;)I
    .locals 2
    .parameter "recoveryPassword"

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/EncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1}, Lcom/android/server/EncryptService$InternalDB;->getPwdHashCode()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, password:Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/deviceencryption/DeviceEncryptionManager;->saveRecoveryPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    const/4 v1, 0x0

    .line 238
    .end local v0           #password:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setEncryptionEnabled(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 224
    return-void
.end method

.method protected setEncryptionEnabled2(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "sPath"
    .parameter "bSet"

    .prologue
    const-string v5, "EncryptService"

    .line 1070
    const/4 v0, 0x0

    .line 1074
    .local v0, bRet:Z
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1076
    .local v2, mntSvc:Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1078
    invoke-interface {v2, p1, p2}, Landroid/os/storage/IMountService;->setEncryptionEnabled(Ljava/lang/String;Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1081
    const/4 v0, 0x1

    .line 1097
    .end local v2           #mntSvc:Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    return v0

    .line 1084
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1086
    .local v1, e:Landroid/os/RemoteException;
    const/16 v3, 0xe7

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1087
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : RemoteException exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1089
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1090
    .local v1, e:Ljava/lang/Exception;
    const/16 v3, 0xe8

    invoke-virtual {p0, v3}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1091
    const-string v3, "EncryptService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setEncryptionEnabled2 : Exception exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setEncryptionStorageState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "sCID"
    .parameter "sState"

    .prologue
    .line 2239
    iget-object v0, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/EncryptService$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/EncryptService$8;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2271
    return-void
.end method

.method protected setError(I)V
    .locals 0
    .parameter "error"

    .prologue
    .line 1471
    iput p1, p0, Lcom/android/server/EncryptService;->mCryptoError:I

    .line 1472
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 3
    .parameter "password2"

    .prologue
    .line 203
    move-object v0, p1

    .line 207
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/EncryptService$2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/EncryptService$2;-><init>(Lcom/android/server/EncryptService;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method public unmountVolume(Ljava/lang/String;Z)V
    .locals 0
    .parameter "sPath"
    .parameter "force"

    .prologue
    .line 199
    return-void
.end method

.method protected updateCryptoPolicy(Ljava/lang/String;)Z
    .locals 4
    .parameter "sPath"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1808
    const/4 v0, 0x0

    .line 1812
    .local v0, isEnable:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1814
    :cond_0
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getInternalStorageStatus()Z

    move-result v0

    .line 1825
    :goto_0
    if-eqz v0, :cond_4

    .line 1826
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v3}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    :goto_1
    move v1, v3

    .line 1832
    :goto_2
    return v1

    .line 1815
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1817
    :cond_2
    invoke-static {}, Landroid/deviceencryption/DeviceEncryptionManager;->getExternalStorageStatus()Z

    move-result v0

    goto :goto_0

    .line 1821
    :cond_3
    const/16 v1, 0x118

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1822
    goto :goto_2

    .line 1828
    :cond_4
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService$InternalDB;->setCryptoPolicy(I)V

    goto :goto_1
.end method

.method protected updateEncryptionDisable()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1127
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1128
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1130
    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1135
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1137
    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1141
    :cond_1
    return-void
.end method

.method protected updateEncryptionEnable()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1106
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1107
    .local v1, inter:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1109
    .local v0, exter:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1111
    invoke-virtual {p0, v1, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1114
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/EncryptService;->checkPolicyInfo(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1116
    invoke-virtual {p0, v0, v3}, Lcom/android/server/EncryptService;->setEncryptionEnabled2(Ljava/lang/String;Z)Z

    .line 1120
    :cond_1
    return-void
.end method

.method protected updateStorageCID(Ljava/lang/String;)Z
    .locals 7
    .parameter "sPath"

    .prologue
    const-string v6, "EncryptService"

    .line 1695
    const/4 v0, 0x0

    .line 1696
    .local v0, bRet:Z
    const/4 v3, 0x0

    .line 1701
    .local v3, sStorageCID:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1703
    const-string v3, "sdcard"

    .line 1704
    const/4 v0, 0x1

    .line 1737
    :goto_0
    if-eqz v0, :cond_0

    .line 1738
    iget-object v4, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v4, v3}, Lcom/android/server/EncryptService$InternalDB;->setStorageCID(Ljava/lang/String;)V

    :cond_0
    move v4, v0

    .line 1742
    :goto_1
    return v4

    .line 1708
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/EncryptService;->getMountServiceInstance()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 1710
    .local v2, mountService:Landroid/os/storage/IMountService;
    if-nez v2, :cond_2

    .line 1711
    const/4 v4, 0x0

    goto :goto_1

    .line 1715
    :cond_2
    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/storage/IMountService;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1717
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1718
    const/4 v0, 0x1

    goto :goto_0

    .line 1721
    :cond_3
    const-string v4, "EncryptService"

    const-string v5, " updateStorageCID : When calling IMountService.getStorageCidNumber, error was occured!"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const/16 v4, 0x96

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1725
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1727
    .local v1, ex:Landroid/os/RemoteException;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID : RemoteException exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    const/16 v4, 0x97

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0

    .line 1730
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1732
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "EncryptService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updateStorageCID exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    const/16 v4, 0x98

    invoke-virtual {p0, v4}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_0
.end method

.method protected updateWorkingPath(Ljava/lang/String;)Z
    .locals 3
    .parameter "lsPath"

    .prologue
    const/4 v2, 0x0

    .line 1367
    const/4 v0, 0x0

    .line 1370
    .local v0, sWorkingPath:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->isExternalStorageFirstInsalled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1373
    const/16 v1, 0x78

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1459
    :goto_0
    return v1

    .line 1379
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "internal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1381
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1384
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1405
    :goto_1
    if-nez v0, :cond_8

    move v1, v2

    .line 1408
    goto :goto_0

    .line 1388
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1391
    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->waitForUnmount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1392
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1394
    :cond_4
    const/16 v1, 0x79

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    .line 1398
    :cond_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1399
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1401
    :cond_6
    const/16 v1, 0x7a

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    goto :goto_1

    .line 1411
    :cond_7
    const-string v1, "external"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1412
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 1421
    :cond_8
    :goto_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1423
    invoke-static {}, Landroid/os/Environment;->isExternalStorageSecondInsalled()Z

    move-result v1

    if-nez v1, :cond_a

    .line 1426
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1427
    goto/16 :goto_0

    .line 1414
    :cond_9
    move-object v0, p1

    goto :goto_2

    .line 1431
    :cond_a
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1435
    const/16 v1, 0x7c

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1436
    goto/16 :goto_0

    .line 1441
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1444
    const/16 v1, 0x7d

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    move v1, v2

    .line 1445
    goto/16 :goto_0

    .line 1454
    :cond_c
    iget-object v1, p0, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v1, v0}, Lcom/android/server/EncryptService$InternalDB;->setWorkingPath(Ljava/lang/String;)V

    .line 1459
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected waitForUnmount(Ljava/lang/String;)Z
    .locals 3
    .parameter "sPath"

    .prologue
    .line 1632
    const/4 v0, 0x6

    .local v0, retries:I
    :goto_0
    if-lez v0, :cond_1

    .line 1634
    invoke-virtual {p0, p1}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1637
    const/4 v1, 0x1

    .line 1649
    :goto_1
    return v1

    .line 1642
    :cond_0
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 1632
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1645
    :cond_1
    const/16 v1, 0xd2

    invoke-virtual {p0, v1}, Lcom/android/server/EncryptService;->setError(I)V

    .line 1647
    const-string v1, "EncryptService"

    const-string v2, " waitForUnmount End! Storage unmount fail!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const/4 v1, 0x0

    goto :goto_1
.end method
