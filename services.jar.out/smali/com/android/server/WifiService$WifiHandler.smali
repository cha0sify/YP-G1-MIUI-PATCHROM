.class Lcom/android/server/WifiService$WifiHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method public constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 2301
    iput-object p1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    .line 2302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2303
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2307
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 2397
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 2310
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_1
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z
    invoke-static {v1, v4, v2, v3}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZZI)Z

    .line 2311
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2200(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;

    move-result-object v1

    if-nez v1, :cond_1

    .line 2312
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    new-instance v2, Lcom/android/server/WifiWatchdogService;

    iget-object v3, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/WifiWatchdogService;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    #setter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2314
    :cond_1
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_2
    move v2, v5

    .line 2310
    goto :goto_1

    .line 2318
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    .line 2319
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_3

    move v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->setScanOnlyMode(Z)V

    .line 2320
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    .line 2321
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    move v2, v4

    :goto_3
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->setHighPerfMode(Z)V

    .line 2323
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    :cond_3
    move v2, v5

    .line 2319
    goto :goto_2

    :cond_4
    move v2, v5

    .line 2321
    goto :goto_3

    .line 2327
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->doUpdateWifiState()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2500(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2333
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_5

    move v2, v4

    :goto_4
    iget v3, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z
    invoke-static {v1, v5, v2, v3}, Lcom/android/server/WifiService;->access$2100(Lcom/android/server/WifiService;ZZI)Z

    .line 2334
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    const/4 v2, 0x0

    #setter for: Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;
    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$2202(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;

    .line 2335
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    :cond_5
    move v2, v5

    .line 2333
    goto :goto_4

    .line 2339
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    goto/16 :goto_0

    .line 2344
    :pswitch_5
    invoke-static {}, Lcom/android/server/WifiService;->access$2600()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2348
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v1, v4, v2, p0}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2351
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2355
    .restart local p0
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v1, v5, v2, p0}, Lcom/android/server/WifiService;->access$2700(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 2358
    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/WifiService;->access$2300()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 2362
    .restart local p0
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    if-ne v3, v4, :cond_6

    move v3, v4

    :goto_5
    #calls: Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z
    invoke-static {v1, v2, v3}, Lcom/android/server/WifiService;->access$2800(Lcom/android/server/WifiService;IZ)Z

    goto/16 :goto_0

    :cond_6
    move v3, v5

    goto :goto_5

    .line 2366
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v2}, Lcom/android/server/WifiService;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableAllNetworks(Ljava/util/List;)V

    goto/16 :goto_0

    .line 2370
    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_7

    move v0, v4

    .line 2371
    .local v0, forceActive:Z
    :goto_6
    sget-object v1, Lcom/android/server/WifiService$5;->$SwitchMap$android$net$wifi$SupplicantState:[I

    iget-object v2, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v2}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 2378
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    .line 2382
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    .end local v0           #forceActive:Z
    :cond_7
    move v0, v5

    .line 2370
    goto :goto_6

    .line 2385
    :pswitch_c
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->reportStartWorkSource()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$2400(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2388
    :pswitch_d
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;
    invoke-static {v1}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_8

    move v2, v4

    :goto_7
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    goto/16 :goto_0

    :cond_8
    move v2, v5

    goto :goto_7

    .line 2391
    :pswitch_e
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->writeWifiApConfigBlocked(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, p0}, Lcom/android/server/WifiService;->access$2900(Lcom/android/server/WifiService;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2394
    .restart local p0
    :pswitch_f
    iget-object v1, p0, Lcom/android/server/WifiService$WifiHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->readWifiApConfigBlocked()V
    invoke-static {v1}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)V

    goto/16 :goto_0

    .line 2307
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 2371
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method
