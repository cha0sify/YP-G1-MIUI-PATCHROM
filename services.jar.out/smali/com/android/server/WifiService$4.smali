.class Lcom/android/server/WifiService$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter

    .prologue
    .line 1957
    iput-object p1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private shouldDeviceStayAwake(II)Z
    .locals 1
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    .line 2113
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldWifiStayAwake(II)Z
    .locals 5
    .parameter "stayAwakeConditions"
    .parameter "pluggedType"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2082
    iget-object v1, p0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_sleep_policy"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2085
    .local v0, wifiSleepPolicy:I
    if-ne v0, v4, :cond_0

    move v1, v3

    .line 2094
    :goto_0
    return v1

    .line 2088
    :cond_0
    if-ne v0, v3, :cond_1

    if-eqz p2, :cond_1

    move v1, v3

    .line 2091
    goto :goto_0

    .line 2094
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService$4;->shouldDeviceStayAwake(II)Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1960
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 1962
    .local v6, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "wifi_idle_ms"

    const-wide/32 v20, 0xdbba0

    invoke-static/range {v18 .. v21}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v8

    .line 1965
    .local v8, idleMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "stay_on_while_plugged_in"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 1968
    .local v15, stayAwakeConditions:I
    const-string v18, "android.intent.action.SCREEN_ON"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v19 .. v19}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)V

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;Z)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiStateTracker;->isAnyNetworkDisabled()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/WifiService;->sendEnableNetworksMessage()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1500(Lcom/android/server/WifiService;)V

    .line 2071
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/WifiService;->updateWifiState()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 2072
    :cond_1
    :goto_1
    return-void

    .line 1985
    :cond_2
    const-string v18, "android.intent.action.SCREEN_OFF"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;Z)V

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)I

    move-result v18

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v18

    if-nez v18, :cond_1

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v10

    .line 1999
    .local v10, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v18

    sget-object v19, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_3

    .line 2004
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-wide/32 v20, 0x1d4c0

    add-long v16, v18, v20

    .line 2008
    .local v16, triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 2013
    .end local v16           #triggerTime:J
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v16, v18, v8

    .line 2018
    .restart local v16       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 2023
    .end local v10           #info:Landroid/net/wifi/WifiInfo;
    .end local v16           #triggerTime:J
    :cond_4
    const-string v18, "com.android.server.WifiManager.action.DEVICE_IDLE"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 2027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/android/server/WifiService;->mDeviceIdle:Z
    invoke-static/range {v18 .. v19}, Lcom/android/server/WifiService;->access$1002(Lcom/android/server/WifiService;Z)Z

    .line 2028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2029
    :cond_5
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 2037
    const-string v18, "plugged"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2041
    .local v12, pluggedType:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mScreenOff:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1100(Lcom/android/server/WifiService;)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1600(Lcom/android/server/WifiService;)I

    move-result v18

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    move v1, v15

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/server/WifiService$4;->shouldWifiStayAwake(II)Z

    move-result v18

    if-nez v18, :cond_6

    .line 2043
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v16, v18, v8

    .line 2047
    .restart local v16       #triggerTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v20, v0

    #getter for: Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;
    invoke-static/range {v20 .. v20}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;

    move-result-object v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-wide/from16 v2, v16

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;I)I

    goto/16 :goto_1

    .line 2051
    .end local v16           #triggerTime:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v12

    #setter for: Lcom/android/server/WifiService;->mPluggedType:I
    invoke-static {v0, v1}, Lcom/android/server/WifiService;->access$1602(Lcom/android/server/WifiService;I)I

    goto/16 :goto_0

    .line 2052
    .end local v12           #pluggedType:I
    :cond_7
    const-string v18, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 2053
    new-instance v5, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v18

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    .line 2054
    .local v5, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v14

    .line 2055
    .local v14, sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v11, 0x0

    .line 2056
    .local v11, isBluetoothPlaying:Z
    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/bluetooth/BluetoothDevice;

    .line 2057
    .local v13, sink:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v5, v13}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 2058
    const/4 v11, 0x1

    goto :goto_2

    .line 2061
    .end local v13           #sink:Landroid/bluetooth/BluetoothDevice;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    goto/16 :goto_0

    .line 2063
    .end local v5           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #isBluetoothPlaying:Z
    .end local v14           #sinks:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_a
    const-string v18, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 2064
    const-string v18, "WifiService"

    const-string v19, "Receive IP Policy Intent"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService$4;->this$0:Lcom/android/server/WifiService;

    move-object/from16 v18, v0

    #calls: Lcom/android/server/WifiService;->handleSecurityPolicy()V
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->access$1700(Lcom/android/server/WifiService;)V

    goto/16 :goto_0
.end method
