.class Lcom/android/internal/telephony/SMSDispatcher$3;
.super Landroid/content/BroadcastReceiver;
.source "SMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 2461
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "SMSDispatcher"

    .line 2465
    const-string v4, "SMSDispatcher"

    const-string v4, "BroadcastReceiver - mResultReceiver "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    const-string/jumbo v4, "ril.sms.gcf-mode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2469
    .local v0, GcfMode:Ljava/lang/String;
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GcfMode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "intent.getAction() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DB_DEVICE_STORAGE_LOW"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2476
    :cond_0
    const-string v4, "SMSDispatcher"

    const-string v4, "ACTION_DEVICE_STORAGE_LOW "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v9, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2480
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v9, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2484
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2637
    :cond_1
    :goto_0
    return-void

    .line 2488
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.DB_DEVICE_STORAGE_OK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2491
    :cond_3
    const-string v4, "SMSDispatcher"

    const-string v4, "ACTION_DEVICE_STORAGE_OK "

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2494
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2498
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v6, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    goto :goto_0

    .line 2507
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v9, v4, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2511
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$200()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2513
    const-string v4, "SMSDispatcher"

    const-string v4, "boot_time : reportSmsMemoryStatus"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/16 v5, 0x11

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2515
    .local v2, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    invoke-interface {v4, v5, v2}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2516
    invoke-static {v9}, Lcom/android/internal/telephony/SMSDispatcher;->access$202(Z)Z

    .line 2519
    .end local v2           #reply:Landroid/os/Message;
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$300()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2521
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-eqz v4, :cond_6

    .line 2523
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClass0MsgFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2527
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    if-nez v4, :cond_1

    .line 2529
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-eqz v4, :cond_7

    .line 2531
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2535
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v4, :cond_8

    .line 2537
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v9, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2541
    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v5, 0x6

    invoke-virtual {v4, v9, v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2548
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/SMSDispatcher$3;->getResultCode()I

    move-result v1

    .line 2549
    .local v1, rc:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_a

    if-ne v1, v6, :cond_c

    :cond_a
    move v3, v6

    .line 2600
    .local v3, success:Z
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-eqz v4, :cond_b

    .line 2602
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mClass0MsgFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v6, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 2606
    :cond_b
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass0MsgFlag:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mClass2MsgFlag:Z

    if-nez v4, :cond_1

    .line 2608
    const-string v4, "SMSDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mResultReceiver : success = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    if-eqz v3, :cond_d

    .line 2612
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v3           #success:Z
    :cond_c
    move v3, v9

    .line 2549
    goto :goto_1

    .line 2616
    .restart local v3       #success:Z
    :cond_d
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-boolean v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mSimStorageAvailable:Z

    if-eqz v4, :cond_e

    .line 2618
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v4, v3, v10, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2622
    :cond_e
    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher$3;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v5, 0x6

    invoke-virtual {v4, v3, v5, v7}, Lcom/android/internal/telephony/SMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0
.end method
