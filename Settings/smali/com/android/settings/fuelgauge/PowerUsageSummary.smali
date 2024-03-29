.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceActivity;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
    }
.end annotation


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 88
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 734
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 633
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 634
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 636
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 637
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 639
    const v0, 0x7f0903d4

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02003d

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 694
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 695
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 696
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [D

    const/4 v1, 0x0

    aput-wide p6, v8, v1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 698
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 699
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 700
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 626
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 628
    .local v6, idlePower:D
    const v0, 0x7f0903d7

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020044

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 630
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 20
    .parameter "uSecNow"

    .prologue
    .line 552
    const-wide/16 v11, 0x0

    .line 553
    .local v11, power:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v8, v5, v7

    .line 554
    .local v8, screenOnTimeMs:J
    long-to-double v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "screen.on"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "screen.full"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    .line 557
    .local v18, screenFullPower:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v15, v5, :cond_0

    .line 558
    int-to-float v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double v5, v5, v18

    const-wide/high16 v13, 0x4014

    div-double v16, v5, v13

    .line 560
    .local v16, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v13, v5, v13

    .line 561
    .local v13, brightnessTime:J
    long-to-double v5, v13

    mul-double v5, v5, v16

    add-double/2addr v11, v5

    .line 557
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 567
    .end local v13           #brightnessTime:J
    .end local v16           #screenBinPower:D
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double/2addr v11, v5

    .line 568
    const v5, 0x7f0903d2

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x7f020041

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 570
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 13
    .parameter "uSecNow"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 610
    .local v9, onTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 613
    .local v3, runningTimeMs:J
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v3, v0

    .line 614
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    const-wide/16 v3, 0x0

    .line 615
    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v9

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v11, v0, v5

    .line 619
    .local v11, wifiPower:D
    const v0, 0x7f0903d3

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02004c

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v6, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 621
    .local v8, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 622
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 596
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 598
    .local v1, wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 599
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 600
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 601
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 602
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 603
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 604
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    .end local v1           #wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 645
    .line 647
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double/2addr v0, v2

    .line 649
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "radio.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L

    div-double/2addr v2, v4

    .line 651
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 653
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v4

    .line 655
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 656
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v8, v10, v8

    .line 660
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    long-to-double v8, v8

    div-double/2addr v2, v8

    .line 661
    const-wide v8, 0x40fe848000000000L

    div-double/2addr v0, v8

    .line 662
    add-long v8, v6, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 663
    long-to-double v8, v4

    mul-double/2addr v2, v8

    long-to-double v8, v6

    mul-double/2addr v0, v8

    add-double/2addr v0, v2

    add-long v2, v4, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 666
    :goto_1
    return-wide v0

    .line 656
    :cond_0
    const-wide/32 v8, 0x30d40

    goto :goto_0

    .line 666
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 707
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 708
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 709
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 710
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 712
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    :goto_0
    return-void

    .line 713
    :catch_0
    move-exception v0

    .line 714
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 75

    .prologue
    .line 380
    const-string v5, "sensor"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/hardware/SensorManager;

    .line 381
    .local v45, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v72, v0

    .line 382
    .local v72, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v50

    .line 383
    .local v50, speedSteps:I
    move/from16 v0, v50

    new-array v0, v0, [D

    move-object/from16 v35, v0

    .line 384
    .local v35, powerCpuNormal:[D
    move/from16 v0, v50

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 385
    .local v18, cpuSpeedStepTimes:[J
    const/16 v32, 0x0

    .local v32, p:I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v50

    if-ge v0, v1, :cond_0

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "cpu.active"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v35, v32

    .line 385
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 388
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v14

    .line 389
    .local v14, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object v0, v5

    move-wide v1, v6

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v62

    .line 390
    .local v62, uSecTime:J
    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 391
    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateStatsPeriod(J)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v64

    .line 393
    .local v64, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v64 .. v64}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 394
    .local v13, NU:I
    const/16 v29, 0x0

    .local v29, iu:I
    :goto_1
    move/from16 v0, v29

    move v1, v13

    if-ge v0, v1, :cond_13

    .line 395
    move-object/from16 v0, v64

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 396
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v33, 0x0

    .line 397
    .local v33, power:D
    const-wide/16 v26, 0x0

    .line 398
    .local v26, highestDrain:D
    const/4 v8, 0x0

    .line 400
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v38

    .line 401
    .local v38, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v19, 0x0

    .line 402
    .local v19, cpuTime:J
    const-wide/16 v16, 0x0

    .line 403
    .local v16, cpuFgTime:J
    const-wide/16 v70, 0x0

    .line 404
    .local v70, wakelockTime:J
    const-wide/16 v24, 0x0

    .line 405
    .local v24, gpsTime:J
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 408
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 410
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/BatteryStats$Uid$Proc;

    .line 411
    .local v39, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v65

    .line 412
    .local v65, userTime:J
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v52

    .line 413
    .local v52, systemTime:J
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    .line 414
    .local v22, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v22

    add-long v16, v16, v5

    .line 415
    add-long v5, v65, v52

    const-wide/16 v9, 0xa

    mul-long v59, v5, v9

    .line 416
    .local v59, tmpCpuTime:J
    const/16 v61, 0x0

    .line 418
    .local v61, totalTimeAtSpeeds:I
    const/16 v51, 0x0

    .local v51, step:I
    :goto_3
    move/from16 v0, v51

    move/from16 v1, v50

    if-ge v0, v1, :cond_2

    .line 419
    move-object/from16 v0, v39

    move/from16 v1, v51

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v18, v51

    .line 420
    move/from16 v0, v61

    int-to-long v0, v0

    move-wide v5, v0

    aget-wide v9, v18, v51

    add-long/2addr v5, v9

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v61, v0

    .line 418
    add-int/lit8 v51, v51, 0x1

    goto :goto_3

    .line 422
    :cond_2
    if-nez v61, :cond_3

    const/16 v61, 0x1

    .line 424
    :cond_3
    const-wide/16 v36, 0x0

    .line 425
    .local v36, processPower:D
    const/16 v51, 0x0

    :goto_4
    move/from16 v0, v51

    move/from16 v1, v50

    if-ge v0, v1, :cond_4

    .line 426
    aget-wide v5, v18, v51

    long-to-double v5, v5

    move/from16 v0, v61

    int-to-double v0, v0

    move-wide v9, v0

    div-double v40, v5, v9

    .line 427
    .local v40, ratio:D
    move-wide/from16 v0, v59

    long-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v40

    aget-wide v9, v35, v51

    mul-double/2addr v5, v9

    add-double v36, v36, v5

    .line 425
    add-int/lit8 v51, v51, 0x1

    goto :goto_4

    .line 429
    .end local v40           #ratio:D
    :cond_4
    add-long v19, v19, v59

    .line 430
    add-double v33, v33, v36

    .line 431
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 433
    :cond_5
    move-wide/from16 v26, v36

    .line 434
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 435
    :cond_6
    cmpg-double v5, v26, v36

    if-gez v5, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    move-wide/from16 v26, v36

    .line 438
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 444
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v22           #foregroundTime:J
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v36           #processPower:D
    .end local v39           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v51           #step:I
    .end local v52           #systemTime:J
    .end local v59           #tmpCpuTime:J
    .end local v61           #totalTimeAtSpeeds:I
    .end local v65           #userTime:J
    :cond_7
    cmp-long v5, v16, v19

    if-lez v5, :cond_8

    .line 448
    move-wide/from16 v19, v16

    .line 450
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v33, v33, v5

    .line 453
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v69

    .line 455
    .local v69, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v69 .. v69}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/util/Map$Entry;

    .line 456
    .local v68, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 459
    .local v67, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v67

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 460
    .local v58, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_9

    .line 461
    move-object/from16 v0, v58

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v70, v70, v5

    goto :goto_5

    .line 464
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    .end local v67           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v68           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v70, v70, v5

    .line 467
    move-wide/from16 v0, v70

    long-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v54

    .line 472
    .local v54, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v56

    .line 473
    .local v56, tcpBytesSent:J
    add-long v5, v54, v56

    long-to-double v5, v5

    mul-double/2addr v5, v14

    add-double v33, v33, v5

    .line 476
    move-object v0, v11

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v73, v5, v9

    .line 477
    .local v73, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    move-wide v5, v0

    add-long v5, v5, v73

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 478
    move-wide/from16 v0, v73

    long-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 482
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v46

    .line 484
    .local v46, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .line 485
    .local v44, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Sensor;

    .line 486
    .local v42, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v42 .. v42}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v49

    .line 487
    .local v49, sensorType:I
    invoke-virtual/range {v42 .. v42}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 488
    .restart local v58       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v58

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v47, v5, v9

    .line 489
    .local v47, sensorTime:J
    const-wide/16 v30, 0x0

    .line 490
    .local v30, multiplier:D
    packed-switch v49, :pswitch_data_0

    .line 496
    move-object/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v43

    .line 498
    .local v43, sensorData:Landroid/hardware/Sensor;
    if-eqz v43, :cond_b

    .line 499
    invoke-virtual/range {v43 .. v43}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 506
    .end local v43           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v47

    long-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v30

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 507
    goto :goto_6

    .line 492
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v30

    .line 493
    move-wide/from16 v24, v47

    .line 494
    goto :goto_7

    .line 512
    .end local v30           #multiplier:D
    .end local v42           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v44           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v47           #sensorTime:J
    .end local v49           #sensorType:I
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const-wide/16 v5, 0x0

    cmpl-double v5, v33, v5

    if-eqz v5, :cond_d

    .line 513
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v5, 0x1

    new-array v12, v5, [D

    const/4 v5, 0x0

    aput-wide v33, v12, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 516
    .local v4, app:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v19

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 517
    move-wide/from16 v0, v24

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 518
    move-wide/from16 v0, v73

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 519
    move-wide/from16 v0, v16

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 520
    move-wide/from16 v0, v70

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 521
    move-wide/from16 v0, v54

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 522
    move-wide/from16 v0, v56

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 523
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_e

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_d
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    .line 532
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 394
    :goto_9
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 525
    .restart local v4       #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_f

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 528
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 533
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_11

    .line 534
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 536
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    move-wide v5, v0

    cmpl-double v5, v33, v5

    if-lez v5, :cond_12

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 537
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto :goto_9

    .line 541
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v16           #cpuFgTime:J
    .end local v19           #cpuTime:J
    .end local v24           #gpsTime:J
    .end local v26           #highestDrain:D
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v33           #power:D
    .end local v38           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v46           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v54           #tcpBytesReceived:J
    .end local v56           #tcpBytesSent:J
    .end local v69           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v70           #wakelockTime:J
    .end local v73           #wifiRunningTimeMs:J
    :cond_13
    return-void

    .line 490
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 671
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 672
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 673
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 674
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 685
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 686
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 687
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 688
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 690
    return-void
.end method

.method private refreshStats()V
    .locals 14

    .prologue
    const-wide/high16 v12, 0x4059

    const-wide/16 v9, 0x0

    .line 318
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v8, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 321
    :cond_0
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 322
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 323
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 324
    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 325
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 327
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 328
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 329
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 330
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 332
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 334
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 336
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p0, v8}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 337
    .local v0, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 338
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 341
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 342
    .local v7, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4014

    cmpg-double v8, v8, v10

    if-ltz v8, :cond_1

    .line 343
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v8, v10

    mul-double v4, v8, v12

    .line 344
    .local v4, percentOfTotal:D
    const-wide/high16 v8, 0x3ff0

    cmpg-double v8, v4, v8

    if-ltz v8, :cond_1

    .line 345
    new-instance v6, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {v6, p0, v8, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 346
    .local v6, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v8

    mul-double/2addr v8, v12

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v2, v8, v10

    .line 347
    .local v2, percentOfMax:D
    iput-wide v4, v7, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 348
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 349
    invoke-virtual {v6, v4, v5}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 350
    const v8, 0x7fffffff

    invoke-virtual {v7}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    double-to-int v9, v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 351
    invoke-virtual {v6, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setGaugeValue(D)V

    .line 352
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v8, :cond_2

    .line 353
    iget-object v8, v7, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v8}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 355
    :cond_2
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 356
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    const/16 v9, 0xb

    if-le v8, v9, :cond_1

    .line 359
    .end local v2           #percentOfMax:D
    .end local v4           #percentOfTotal:D
    .end local v6           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v7           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 360
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_5

    .line 361
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v9, :cond_4

    .line 362
    new-instance v9, Ljava/lang/Thread;

    const-string v10, "BatteryUsage Icon Loader"

    invoke-direct {v9, p0, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 363
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/Thread;->setPriority(I)V

    .line 364
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 366
    :cond_4
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 368
    :cond_5
    monitor-exit v8

    .line 369
    return-void

    .line 368
    :catchall_0
    move-exception v9

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9
.end method

.method private updateStatsPeriod(J)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 372
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, durationString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0903c2

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 376
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setTitle(Ljava/lang/CharSequence;)V

    .line 377
    return-void

    .line 373
    .end local v1           #label:Ljava/lang/String;
    :cond_0
    const v2, 0x7f0903c9

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 108
    const v0, 0x7f040017

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 109
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 111
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 112
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 113
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 281
    const/4 v0, 0x2

    const v1, 0x7f0903fc

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x20200f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 284
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 299
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 313
    :goto_0
    return v0

    .line 301
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 306
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 307
    goto :goto_0

    .line 304
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 309
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 310
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 311
    goto :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 129
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 130
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 134
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 138
    instance-of v1, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_0

    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1, v8}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 141
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 142
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v3, "stats"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 145
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 147
    :cond_0
    instance-of v1, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_1

    move v1, v8

    .line 148
    goto :goto_0

    .line 150
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v1, v0

    .line 151
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v1

    .line 152
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v3, "title"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "percent"

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    const-string v3, "gauge"

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    const-string v3, "duration"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 159
    const-string v3, "iconPackage"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v3, "iconId"

    iget v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 161
    const-string v3, "noCoverage"

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 162
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_2

    .line 163
    const-string v3, "uid"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    :cond_2
    const-string v3, "drainType"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 169
    sget-object v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 259
    new-array v3, v9, [I

    const v4, 0x7f0903e2

    aput v4, v3, v8

    .line 262
    new-array v4, v9, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    move-object v1, v4

    .line 267
    :goto_1
    const-string v4, "types"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 268
    const-string v3, "values"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 271
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 172
    :pswitch_0
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 173
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 184
    const/16 v5, 0x9

    new-array v5, v5, [D

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v8

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v9

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v10

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v12

    const/4 v6, 0x4

    iget-wide v7, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v7, v7

    aput-wide v7, v5, v6

    const/4 v6, 0x5

    iget-wide v7, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v5, v6

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v5, v11

    const/4 v1, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v1

    const/16 v1, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v1

    .line 196
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 197
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 199
    const-string v6, "report_details"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 202
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 203
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v7, v6, v8, v3}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 204
    const-string v3, "report_checkin_details"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v5

    move-object v3, v4

    .line 206
    goto/16 :goto_1

    .line 209
    :pswitch_1
    new-array v3, v10, [I

    fill-array-data v3, :array_1

    .line 213
    new-array v4, v10, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v4, v9

    move-object v1, v4

    .line 218
    goto/16 :goto_1

    .line 221
    :pswitch_2
    new-array v3, v11, [I

    fill-array-data v3, :array_2

    .line 229
    new-array v4, v11, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v9

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v10

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v12

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    move-object v1, v4

    .line 237
    goto/16 :goto_1

    .line 240
    :pswitch_3
    new-array v3, v11, [I

    fill-array-data v3, :array_3

    .line 248
    new-array v4, v11, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v9

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v10

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v12

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    move-object v1, v4

    .line 256
    goto/16 :goto_1

    .line 169
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 173
    :array_0
    .array-data 0x4
        0xd8t 0x3t 0x9t 0x7ft
        0xd9t 0x3t 0x9t 0x7ft
        0xdat 0x3t 0x9t 0x7ft
        0xdbt 0x3t 0x9t 0x7ft
        0xdct 0x3t 0x9t 0x7ft
        0xdet 0x3t 0x9t 0x7ft
        0xdft 0x3t 0x9t 0x7ft
        0xe0t 0x3t 0x9t 0x7ft
        0xe1t 0x3t 0x9t 0x7ft
    .end array-data

    .line 209
    :array_1
    .array-data 0x4
        0xe2t 0x3t 0x9t 0x7ft
        0xe3t 0x3t 0x9t 0x7ft
    .end array-data

    .line 221
    :array_2
    .array-data 0x4
        0xdct 0x3t 0x9t 0x7ft
        0xd8t 0x3t 0x9t 0x7ft
        0xd9t 0x3t 0x9t 0x7ft
        0xdat 0x3t 0x9t 0x7ft
        0xdet 0x3t 0x9t 0x7ft
        0xdft 0x3t 0x9t 0x7ft
    .end array-data

    .line 240
    :array_3
    .array-data 0x4
        0xe2t 0x3t 0x9t 0x7ft
        0xd8t 0x3t 0x9t 0x7ft
        0xd9t 0x3t 0x9t 0x7ft
        0xdat 0x3t 0x9t 0x7ft
        0xdet 0x3t 0x9t 0x7ft
        0xdft 0x3t 0x9t 0x7ft
    .end array-data
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 124
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 125
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 721
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 722
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v2, :cond_1

    .line 723
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 724
    monitor-exit v1

    return-void

    .line 726
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 727
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 727
    .end local v0           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
