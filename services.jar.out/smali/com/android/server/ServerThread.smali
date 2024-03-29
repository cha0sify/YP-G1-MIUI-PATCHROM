.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ServerThread$AdbSettingsObserver;
    }
.end annotation


# static fields
.field private static final INCLUDE_DEMO:Z = false

.field private static final LOG_BOOT_PROGRESS_SYSTEM_RUN:I = 0xbc2

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ServerThread;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 70

    .prologue
    .line 90
    const/16 v5, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-static {v5, v10, v11}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 93
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 95
    const/4 v5, -0x2

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 98
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 99
    const/4 v5, 0x0

    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 103
    const-string v5, "sys.shutdown.requested"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 105
    .local v58, shutdownAction:Ljava/lang/String;
    if-eqz v58, :cond_0

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 106
    const/4 v5, 0x0

    move-object/from16 v0, v58

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_9

    const/4 v5, 0x1

    move/from16 v55, v5

    .line 109
    .local v55, reboot:Z
    :goto_0
    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_a

    .line 110
    const/4 v5, 0x1

    invoke-virtual/range {v58 .. v58}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v58

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v54

    .line 115
    .local v54, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v55

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 119
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    :cond_0
    const-string v5, "ro.factorytest"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 120
    .local v41, factoryTestStr:Ljava/lang/String;
    const-string v5, ""

    move-object v0, v5

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    move/from16 v40, v5

    .line 123
    .local v40, factoryTest:I
    :goto_2
    const/16 v46, 0x0

    .line 124
    .local v46, lights:Lcom/android/server/LightsService;
    const/16 v53, 0x0

    .line 125
    .local v53, power:Lcom/android/server/PowerManagerService;
    const/16 v27, 0x0

    .line 126
    .local v27, battery:Lcom/android/server/BatteryService;
    const/16 v34, 0x0

    .line 127
    .local v34, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v52, 0x0

    .line 128
    .local v52, pm:Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 129
    .local v6, context:Landroid/content/Context;
    const/16 v69, 0x0

    .line 130
    .local v69, wm:Lcom/android/server/WindowManagerService;
    const/16 v28, 0x0

    .line 131
    .local v28, bluetooth:Landroid/server/BluetoothService;
    const/16 v30, 0x0

    .line 132
    .local v30, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v32, 0x0

    .line 133
    .local v32, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    const/16 v42, 0x0

    .line 134
    .local v42, headset:Lcom/android/server/HeadsetObserver;
    const/16 v37, 0x0

    .line 135
    .local v37, dock:Lcom/android/server/DockObserver;
    const/16 v65, 0x0

    .line 136
    .local v65, usb:Lcom/android/server/usb/UsbService;
    const/16 v63, 0x0

    .line 137
    .local v63, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v56, 0x0

    .line 138
    .local v56, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v61, 0x0

    .line 142
    .local v61, throttle:Lcom/android/server/ThrottleService;
    :try_start_0
    const-string v5, "SystemServer"

    const-string v7, "Entropy Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v5, "entropy"

    new-instance v7, Lcom/android/server/EntropyService;

    invoke-direct {v7}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 145
    const-string v5, "SystemServer"

    const-string v7, "Power Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v8, Lcom/android/server/PowerManagerService;

    invoke-direct {v8}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2c

    .line 147
    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .local v8, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v5, "power"

    invoke-static {v5, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    const-string v5, "SystemServer"

    const-string v7, "Activity Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static/range {v40 .. v40}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v6

    .line 152
    const-string v5, "SystemServer"

    const-string v7, "Telephony Registry"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v5, "telephony.registry"

    new-instance v7, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v7, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 155
    invoke-static {v6}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 157
    const-string v5, "SystemServer"

    const-string v7, "Package Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v5, "SystemServer"

    const-string v7, "!@beginofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    if-eqz v40, :cond_c

    const/4 v5, 0x1

    :goto_3
    invoke-static {v6, v5}, Lcom/android/server/PackageManagerService;->main(Landroid/content/Context;Z)Landroid/content/pm/IPackageManager;

    move-result-object v52

    .line 161
    const-string v5, "SystemServer"

    const-string v7, "!@endofPackageManager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 165
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :try_start_2
    const-string v5, "SystemServer"

    const-string v7, "Account Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const-string v5, "account"

    new-instance v7, Landroid/accounts/AccountManagerService;

    invoke-direct {v7, v6}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 176
    :goto_4
    :try_start_3
    const-string v5, "SystemServer"

    const-string v7, "Content Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_d

    const/4 v5, 0x1

    :goto_5
    invoke-static {v6, v5}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 182
    const-string v5, "SystemServer"

    const-string v7, "Alarm Manager"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v9, Lcom/android/server/AlarmManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V

    .line 184
    .local v9, alarm:Lcom/android/server/AlarmManagerService;
    const-string v5, "YP-G1"

    const-string v7, "YP-GB1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "YP-G1"

    const-string v7, "YP-GB70"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 186
    :cond_1
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 191
    :cond_2
    const-string v5, "SystemServer"

    const-string v7, "System Content Providers"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 194
    const-string v5, "SystemServer"

    const-string v7, "Battery Service"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v7, Lcom/android/server/BatteryService;

    invoke-direct {v7, v6}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .local v7, battery:Lcom/android/server/BatteryService;
    :try_start_4
    const-string v5, "battery"

    invoke-static {v5, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 198
    const-string v5, "SystemServer"

    const-string v10, "Lights Service"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v47, Lcom/android/server/LightsService;

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2d

    .line 201
    .end local v46           #lights:Lcom/android/server/LightsService;
    .local v47, lights:Lcom/android/server/LightsService;
    :try_start_5
    const-string v5, "SystemServer"

    const-string v10, "Vibrator Service"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v5, "vibrator"

    new-instance v10, Lcom/android/server/VibratorService;

    invoke-direct {v10, v6}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 206
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v47

    move-object v3, v5

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 212
    const-string v5, "YP-G1"

    const-string v10, "YP-GB1"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "YP-G1"

    const-string v10, "YP-GB70"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 214
    const-string v5, "alarm"

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 218
    :cond_3
    const-string v5, "SystemServer"

    const-string v10, "Init Watchdog"

    invoke-static {v5, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 222
    const-string v5, "SystemServer"

    const-string v9, "Window Manager"

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_e

    const/4 v5, 0x1

    :goto_6
    invoke-static {v6, v8, v5}, Lcom/android/server/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;Z)Lcom/android/server/WindowManagerService;

    move-result-object v69

    .line 225
    const-string v5, "window"

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    move-object v0, v5

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/WindowManagerService;)V

    .line 230
    move-object v0, v6

    move/from16 v1, v40

    invoke-static {v0, v1}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 235
    const-string v5, "ro.kernel.qemu"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "1"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 236
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (emulator)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :goto_7
    move-object/from16 v46, v47

    .line 266
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    :goto_8
    const/16 v35, 0x0

    .line 267
    .local v35, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v59, 0x0

    .line 268
    .local v59, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v44, 0x0

    .line 269
    .local v44, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v25, 0x0

    .line 270
    .local v25, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v50, 0x0

    .line 271
    .local v50, notification:Lcom/android/server/NotificationManagerService;
    const/16 v67, 0x0

    .line 272
    .local v67, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v48, 0x0

    .line 274
    .local v48, location:Lcom/android/server/LocationManagerService;
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 276
    :try_start_6
    const-string v5, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v36, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v36

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 278
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v36, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_7
    const-string v5, "device_policy"

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2b

    move-object/from16 v35, v36

    .line 284
    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_9
    :try_start_8
    const-string v5, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v60, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 286
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v60, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_9
    const-string v5, "statusbar"

    move-object v0, v5

    move-object/from16 v1, v60

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2a

    move-object/from16 v59, v60

    .line 292
    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_a
    :try_start_a
    const-string v5, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v5, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v6}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    .line 303
    :goto_b
    :try_start_b
    const-string v5, "SystemServer"

    const-string v9, "ClipboardEx Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v5, "clipboardEx"

    new-instance v9, Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {v9, v6}, Lcom/android/server/sec/InternalClipboardExService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6

    .line 310
    :goto_c
    :try_start_c
    const-string v5, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v45, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v45

    move-object v1, v6

    move-object/from16 v2, v59

    invoke-direct {v0, v1, v2}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    .line 312
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .local v45, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_d
    const-string v5, "input_method"

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_29

    move-object/from16 v44, v45

    .line 318
    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_e
    const-string v5, "SystemServer"

    const-string v9, "NetStat Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v5, "netstat"

    new-instance v9, Lcom/android/server/NetStatService;

    invoke-direct {v9, v6}, Lcom/android/server/NetStatService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    .line 325
    :goto_e
    :try_start_f
    const-string v5, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v5, "network_management"

    invoke-static {v6}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 334
    :goto_f
    :try_start_10
    const-string v5, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-static {v6}, Lcom/android/server/ConnectivityService;->getInstance(Landroid/content/Context;)Lcom/android/server/ConnectivityService;

    move-result-object v34

    .line 336
    const-string v5, "connectivity"

    move-object v0, v5

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_a

    .line 342
    :goto_10
    :try_start_11
    const-string v5, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    new-instance v62, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v62

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_b

    .line 344
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .local v62, throttle:Lcom/android/server/ThrottleService;
    :try_start_12
    const-string v5, "throttle"

    move-object v0, v5

    move-object/from16 v1, v62

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_28

    move-object/from16 v61, v62

    .line 351
    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    :goto_11
    :try_start_13
    const-string v5, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    const-string v5, "accessibility"

    new-instance v9, Lcom/android/server/AccessibilityManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_c

    .line 363
    :goto_12
    :try_start_14
    const-string v5, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v5, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v6}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_d

    .line 370
    :goto_13
    :try_start_15
    const-string v5, "SystemServer"

    const-string v9, "Encrypt Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const-string v5, "encrypt"

    new-instance v9, Lcom/android/server/EncryptService;

    invoke-direct {v9, v6}, Lcom/android/server/EncryptService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_e

    .line 377
    :goto_14
    :try_start_16
    const-string v5, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    new-instance v51, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v51

    move-object v1, v6

    move-object/from16 v2, v59

    move-object/from16 v3, v46

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_f

    .line 379
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .local v51, notification:Lcom/android/server/NotificationManagerService;
    :try_start_17
    const-string v5, "notification"

    move-object v0, v5

    move-object/from16 v1, v51

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_27

    move-object/from16 v50, v51

    .line 394
    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    :goto_15
    :try_start_18
    const-string v5, "SystemServer"

    const-string v9, "DataRouter Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const-string v5, "datarouter"

    new-instance v9, Lcom/android/server/DataRouterService;

    invoke-direct {v9, v6}, Lcom/android/server/DataRouterService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_10

    .line 401
    :goto_16
    :try_start_19
    const-string v5, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v5, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v6}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_11

    .line 409
    :goto_17
    :try_start_1a
    const-string v5, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    new-instance v49, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v49

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_12

    .line 411
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .local v49, location:Lcom/android/server/LocationManagerService;
    :try_start_1b
    const-string v5, "location"

    move-object v0, v5

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_26

    move-object/from16 v48, v49

    .line 417
    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    :goto_18
    :try_start_1c
    const-string v5, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v5, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v6}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_13

    .line 430
    :goto_19
    :try_start_1d
    const-string v5, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v5, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v6, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_14

    .line 438
    :goto_1a
    :try_start_1e
    const-string v5, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v68, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v68

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_15

    .line 440
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v68, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_1f
    const-string v5, "wallpaper"

    move-object v0, v5

    move-object/from16 v1, v68

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_25

    move-object/from16 v67, v68

    .line 446
    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_1b
    :try_start_20
    const-string v5, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    const-string v5, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v6}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_16

    .line 463
    :goto_1c
    :try_start_21
    const-string v5, "SystemServer"

    const-string v9, "Headset Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v43, Lcom/android/server/HeadsetObserver;

    move-object/from16 v0, v43

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/HeadsetObserver;-><init>(Landroid/content/Context;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_17

    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .local v43, headset:Lcom/android/server/HeadsetObserver;
    move-object/from16 v42, v43

    .line 472
    .end local v43           #headset:Lcom/android/server/HeadsetObserver;
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    :goto_1d
    :try_start_22
    const-string v5, "SystemServer"

    const-string v9, " FM_RADIO_SERVICE"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v5, "FMPlayer"

    new-instance v9, Lcom/android/server/FMRadioService;

    invoke-direct {v9, v6}, Lcom/android/server/FMRadioService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 475
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "[FMPlayer]FMRadio service added .."

    invoke-virtual {v5, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_18

    .line 483
    :goto_1e
    :try_start_23
    const-string v5, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v38, Lcom/android/server/DockObserver;

    move-object/from16 v0, v38

    move-object v1, v6

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_19

    .end local v37           #dock:Lcom/android/server/DockObserver;
    .local v38, dock:Lcom/android/server/DockObserver;
    move-object/from16 v37, v38

    .line 491
    .end local v38           #dock:Lcom/android/server/DockObserver;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    :goto_1f
    :try_start_24
    const-string v5, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v66, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_1a

    .line 494
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .local v66, usb:Lcom/android/server/usb/UsbService;
    :try_start_25
    const-string v5, "usb"

    move-object v0, v5

    move-object/from16 v1, v66

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_24

    move-object/from16 v65, v66

    .line 500
    .end local v66           #usb:Lcom/android/server/usb/UsbService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    :goto_20
    :try_start_26
    const-string v5, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    new-instance v64, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v64

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_1b

    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v64, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v63, v64

    .line 508
    .end local v64           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_21
    :try_start_27
    const-string v5, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-string v5, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v6}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_1c

    .line 516
    :goto_22
    :try_start_28
    const-string v5, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    new-instance v26, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v26

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_1d

    .line 518
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .local v26, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_29
    const-string v5, "appwidget"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_23

    move-object/from16 v25, v26

    .line 524
    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_23
    :try_start_2a
    const-string v5, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    new-instance v57, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v57

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_1e

    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v57, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v56, v57

    .line 531
    .end local v57           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_24
    :try_start_2b
    const-string v5, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const-string v5, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1f

    .line 560
    :goto_25
    :try_start_2c
    const-string v5, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const-string v5, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v6}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_20

    .line 569
    .end local v6           #context:Landroid/content/Context;
    :cond_4
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    const-string v9, "1"

    const-string v10, "persist.service.adb.enable"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    const/4 v9, 0x1

    :goto_27
    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "adb_enabled"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/ServerThread$AdbSettingsObserver;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/ServerThread$AdbSettingsObserver;-><init>(Lcom/android/server/ServerThread;)V

    invoke-virtual {v5, v6, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const-string v6, "SimDBReady"

    const/4 v9, 0x0

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 580
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->detectSafeMode()Z

    move-result v20

    .line 581
    .local v20, safeMode:Z
    if-eqz v20, :cond_12

    .line 583
    :try_start_2d
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->enterSafeMode()V

    .line 585
    const/4 v5, 0x1

    sput-boolean v5, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 587
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->disableJitCompilation()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_2d} :catch_22

    .line 596
    :goto_28
    if-eqz v35, :cond_5

    .line 597
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V

    .line 598
    const-string v5, "SystemServer"

    const-string v6, "devicePolicy systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_5
    if-eqz v50, :cond_6

    .line 602
    invoke-virtual/range {v50 .. v50}, Lcom/android/server/NotificationManagerService;->systemReady()V

    .line 603
    const-string v5, "SystemServer"

    const-string v6, "notification systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_6
    if-eqz v59, :cond_7

    .line 607
    invoke-virtual/range {v59 .. v59}, Lcom/android/server/StatusBarManagerService;->systemReady()V

    .line 608
    const-string v5, "SystemServer"

    const-string v6, "statusBar systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :cond_7
    invoke-virtual/range {v69 .. v69}, Lcom/android/server/WindowManagerService;->systemReady()V

    .line 612
    const-string v5, "SystemServer"

    const-string v6, "WindowManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {v8}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 615
    const-string v5, "SystemServer"

    const-string v6, "PowerManagerService systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :try_start_2e
    invoke-interface/range {v52 .. v52}, Landroid/content/pm/IPackageManager;->systemReady()V

    .line 619
    const-string v5, "SystemServer"

    const-string v6, "PackageManager systemReady"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_2e} :catch_21

    .line 624
    :goto_29
    move-object/from16 v12, v59

    .line 625
    .local v12, statusBarF:Lcom/android/server/StatusBarManagerService;
    move-object v13, v7

    .line 626
    .local v13, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v14, v34

    .line 627
    .local v14, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v15, v37

    .line 628
    .local v15, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v16, v65

    .line 629
    .local v16, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v24, v61

    .line 630
    .local v24, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v17, v63

    .line 631
    .local v17, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v19, v25

    .line 632
    .local v19, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v21, v67

    .line 633
    .local v21, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v22, v44

    .line 634
    .local v22, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v18, v56

    .line 635
    .local v18, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v23, v48

    .line 642
    .local v23, locationF:Lcom/android/server/LocationManagerService;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityManagerService;

    new-instance v10, Lcom/android/server/ServerThread$1;

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v24}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Lcom/android/server/StatusBarManagerService;Lcom/android/server/BatteryService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/ThrottleService;)V

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 679
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 680
    const-string v5, "SystemServer"

    const-string v6, "Enabled StrictMode for system server main thread."

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_8
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 684
    const-string v5, "SystemServer"

    const-string v6, "System ServerThread is exiting!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    return-void

    .line 106
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v12           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v13           #batteryF:Lcom/android/server/BatteryService;
    .end local v14           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v15           #dockF:Lcom/android/server/DockObserver;
    .end local v16           #usbF:Lcom/android/server/usb/UsbService;
    .end local v17           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v18           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v19           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v20           #safeMode:Z
    .end local v21           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v22           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v23           #locationF:Lcom/android/server/LocationManagerService;
    .end local v24           #throttleF:Lcom/android/server/ThrottleService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v34           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v37           #dock:Lcom/android/server/DockObserver;
    .end local v40           #factoryTest:I
    .end local v41           #factoryTestStr:Ljava/lang/String;
    .end local v42           #headset:Lcom/android/server/HeadsetObserver;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v52           #pm:Landroid/content/pm/IPackageManager;
    .end local v56           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .end local v63           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v69           #wm:Lcom/android/server/WindowManagerService;
    :cond_9
    const/4 v5, 0x0

    move/from16 v55, v5

    goto/16 :goto_0

    .line 112
    .restart local v55       #reboot:Z
    :cond_a
    const/16 v54, 0x0

    .restart local v54       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 120
    .end local v54           #reason:Ljava/lang/String;
    .end local v55           #reboot:Z
    .restart local v41       #factoryTestStr:Ljava/lang/String;
    :cond_b
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move/from16 v40, v5

    goto/16 :goto_2

    .line 159
    .restart local v6       #context:Landroid/content/Context;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v34       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v37       #dock:Lcom/android/server/DockObserver;
    .restart local v40       #factoryTest:I
    .restart local v42       #headset:Lcom/android/server/HeadsetObserver;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v52       #pm:Landroid/content/pm/IPackageManager;
    .restart local v56       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    .restart local v63       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    .restart local v69       #wm:Lcom/android/server/WindowManagerService;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 172
    :catch_0
    move-exception v5

    move-object/from16 v39, v5

    .line 173
    .local v39, e:Ljava/lang/Throwable;
    :try_start_2f
    const-string v5, "SystemServer"

    const-string v7, "Failure starting Account Manager"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2f
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_1

    goto/16 :goto_4

    .line 262
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v27

    .line 263
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .local v39, e:Ljava/lang/RuntimeException;
    :goto_2a
    const-string v5, "System"

    const-string v9, "Failure starting core service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 177
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v39           #e:Ljava/lang/RuntimeException;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 223
    .end local v27           #battery:Lcom/android/server/BatteryService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 238
    :cond_f
    const/4 v5, 0x1

    move/from16 v0, v40

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 239
    :try_start_30
    const-string v5, "SystemServer"

    const-string v9, "Registering null Bluetooth Service (factory test)"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string v5, "bluetooth"

    const/4 v9, 0x0

    invoke-static {v5, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto/16 :goto_7

    .line 262
    :catch_2
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto :goto_2a

    .line 242
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :cond_10
    const-string v5, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v29, Landroid/server/BluetoothService;

    move-object/from16 v0, v29

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_2

    .line 244
    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .local v29, bluetooth:Landroid/server/BluetoothService;
    :try_start_31
    const-string v5, "bluetooth"

    move-object v0, v5

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 245
    invoke-virtual/range {v29 .. v29}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 246
    new-instance v31, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v31

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_2e

    .line 247
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v31, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_32
    const-string v5, "bluetooth_a2dp"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 249
    new-instance v33, Lcom/broadcom/bt/service/hid/BluetoothHIDService;

    move-object/from16 v0, v33

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/broadcom/bt/service/hid/BluetoothHIDService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_32
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_2f

    .line 250
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .local v33, bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    :try_start_33
    const-string v5, "bluetooth_hid"

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_30

    move-object/from16 v32, v33

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_7

    .line 279
    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v5

    move-object/from16 v39, v5

    .line 280
    .local v39, e:Ljava/lang/Throwable;
    :goto_2b
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DevicePolicyService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 287
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v5

    move-object/from16 v39, v5

    .line 288
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2c
    const-string v5, "SystemServer"

    const-string v9, "Failure starting StatusBarManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 295
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v5

    move-object/from16 v39, v5

    .line 296
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Clipboard Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 306
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v5

    move-object/from16 v39, v5

    .line 307
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ClipboardEx Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 313
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v5

    move-object/from16 v39, v5

    .line 314
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2d
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Input Manager Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .line 320
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v5

    move-object/from16 v39, v5

    .line 321
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetStat Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_e

    .line 329
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v5

    move-object/from16 v39, v5

    .line 330
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting NetworkManagement Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .line 337
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v5

    move-object/from16 v39, v5

    .line 338
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Connectivity Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_10

    .line 346
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v5

    move-object/from16 v39, v5

    .line 347
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2e
    const-string v5, "SystemServer"

    const-string v9, "Failure starting ThrottleService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_11

    .line 354
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v5

    move-object/from16 v39, v5

    .line 355
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Accessibility Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .line 365
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v5

    move-object/from16 v39, v5

    .line 366
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Mount Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13

    .line 372
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v5

    move-object/from16 v39, v5

    .line 373
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Encrypt Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14

    .line 380
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v5

    move-object/from16 v39, v5

    .line 381
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_2f
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Notification Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .line 396
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v5

    move-object/from16 v39, v5

    .line 397
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DataRouter Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 404
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v5

    move-object/from16 v39, v5

    .line 405
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DeviceStorageMonitor service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 412
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v5

    move-object/from16 v39, v5

    .line 413
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_30
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Location Manager"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .line 420
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v5

    move-object/from16 v39, v5

    .line 421
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Search Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 433
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v5

    move-object/from16 v39, v5

    .line 434
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DropBoxManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 441
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v5

    move-object/from16 v39, v5

    .line 442
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_31
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Wallpaper Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1b

    .line 448
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v5

    move-object/from16 v39, v5

    .line 449
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Audio Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .line 466
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v5

    move-object/from16 v39, v5

    .line 467
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting HeadsetObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1d

    .line 477
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v5

    move-object/from16 v39, v5

    .line 478
    .restart local v39       #e:Ljava/lang/Throwable;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    const-string v5, "SystemServer"

    const-string v9, "Failure starting RadioService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1e

    .line 486
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v5

    move-object/from16 v39, v5

    .line 487
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DockObserver"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 495
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v5

    move-object/from16 v39, v5

    .line 496
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_32
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UsbService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 503
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v5

    move-object/from16 v39, v5

    .line 504
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting UiModeManagerService"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_21

    .line 511
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v5

    move-object/from16 v39, v5

    .line 512
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_22

    .line 519
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v5

    move-object/from16 v39, v5

    .line 520
    .restart local v39       #e:Ljava/lang/Throwable;
    :goto_33
    const-string v5, "SystemServer"

    const-string v9, "Failure starting AppWidget Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_23

    .line 526
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v5

    move-object/from16 v39, v5

    .line 527
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting Recognition Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_24

    .line 533
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v5

    move-object/from16 v39, v5

    .line 534
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v9, "Failure starting DiskStats Service"

    move-object v0, v5

    move-object v1, v9

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 562
    .end local v39           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v5

    move-object/from16 v39, v5

    .line 563
    .restart local v39       #e:Ljava/lang/Throwable;
    const-string v5, "SystemServer"

    const-string v6, "Failure starting BT FM Power Management Service"

    .end local v6           #context:Landroid/content/Context;
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_26

    .line 569
    .end local v39           #e:Ljava/lang/Throwable;
    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_27

    .line 592
    .restart local v20       #safeMode:Z
    :cond_12
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_28

    .line 620
    :catch_21
    move-exception v5

    goto/16 :goto_29

    .line 588
    :catch_22
    move-exception v5

    goto/16 :goto_28

    .line 519
    .end local v20           #safeMode:Z
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v6       #context:Landroid/content/Context;
    .restart local v26       #appWidget:Lcom/android/server/AppWidgetService;
    :catch_23
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v25, v26

    .end local v26           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v25       #appWidget:Lcom/android/server/AppWidgetService;
    goto :goto_33

    .line 495
    .end local v65           #usb:Lcom/android/server/usb/UsbService;
    .restart local v66       #usb:Lcom/android/server/usb/UsbService;
    :catch_24
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v65, v66

    .end local v66           #usb:Lcom/android/server/usb/UsbService;
    .restart local v65       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_32

    .line 441
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v68       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_25
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v67, v68

    .end local v68           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v67       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_31

    .line 412
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .restart local v49       #location:Lcom/android/server/LocationManagerService;
    :catch_26
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v48, v49

    .end local v49           #location:Lcom/android/server/LocationManagerService;
    .restart local v48       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_30

    .line 380
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v51       #notification:Lcom/android/server/NotificationManagerService;
    :catch_27
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v50, v51

    .end local v51           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v50       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_2f

    .line 346
    .end local v61           #throttle:Lcom/android/server/ThrottleService;
    .restart local v62       #throttle:Lcom/android/server/ThrottleService;
    :catch_28
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v61, v62

    .end local v62           #throttle:Lcom/android/server/ThrottleService;
    .restart local v61       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_2e

    .line 313
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v45       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_29
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v44, v45

    .end local v45           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v44       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_2d

    .line 287
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v60       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_2a
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v59, v60

    .end local v60           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v59       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_2c

    .line 279
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v36       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_2b
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v35, v36

    .end local v36           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v35       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_2b

    .line 262
    .end local v7           #battery:Lcom/android/server/BatteryService;
    .end local v8           #power:Lcom/android/server/PowerManagerService;
    .end local v25           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v35           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v44           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v48           #location:Lcom/android/server/LocationManagerService;
    .end local v50           #notification:Lcom/android/server/NotificationManagerService;
    .end local v59           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v67           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v27       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #power:Lcom/android/server/PowerManagerService;
    :catch_2c
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v7, v27

    .end local v27           #battery:Lcom/android/server/BatteryService;
    .restart local v7       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v8, v53

    .end local v53           #power:Lcom/android/server/PowerManagerService;
    .restart local v8       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_2a

    .restart local v9       #alarm:Lcom/android/server/AlarmManagerService;
    :catch_2d
    move-exception v5

    move-object/from16 v39, v5

    goto/16 :goto_2a

    .end local v9           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_2e
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2a

    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_2f
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2a

    .end local v28           #bluetooth:Landroid/server/BluetoothService;
    .end local v30           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v32           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .end local v46           #lights:Lcom/android/server/LightsService;
    .restart local v29       #bluetooth:Landroid/server/BluetoothService;
    .restart local v31       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v33       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v47       #lights:Lcom/android/server/LightsService;
    :catch_30
    move-exception v5

    move-object/from16 v39, v5

    move-object/from16 v32, v33

    .end local v33           #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    .restart local v32       #bluetoothHid:Lcom/broadcom/bt/service/hid/BluetoothHIDService;
    move-object/from16 v30, v31

    .end local v31           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v30       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v28, v29

    .end local v29           #bluetooth:Landroid/server/BluetoothService;
    .restart local v28       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v46, v47

    .end local v47           #lights:Lcom/android/server/LightsService;
    .restart local v46       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_2a
.end method
