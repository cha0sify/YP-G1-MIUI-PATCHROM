.class Lcom/android/server/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "looper"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    .line 455
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    .line 456
    return-void
.end method

.method private connectToService()Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 434
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/android/server/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 435
    .local v0, service:Landroid/content/Intent;
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 436
    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    invoke-static {v2}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 439
    iput-boolean v3, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move v1, v3

    .line 443
    :goto_0
    return v1

    .line 442
    :cond_0
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v4

    .line 443
    goto :goto_0
.end method

.method private disconnectService()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    const/4 v1, 0x0

    #setter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 448
    iput-boolean v2, p0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    .line 449
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 450
    iget-object v0, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    #getter for: Lcom/android/server/PackageManagerService;->mDefContainerConn:Lcom/android/server/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/PackageManagerService;->access$200(Lcom/android/server/PackageManagerService;)Lcom/android/server/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 451
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 452
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .locals 31
    .parameter "msg"

    .prologue
    .line 467
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 698
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 470
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 471
    .local v19, params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 476
    .local v15, idx:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-nez v26, :cond_2

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v26

    if-nez v26, :cond_1

    .line 480
    const-string v26, "PackageManager"

    const-string v27, "Failed to bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_0

    .line 486
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 489
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move v1, v15

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 492
    if-nez v15, :cond_0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 500
    .end local v15           #idx:I
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/app/IMediaContainerService;

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    #setter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$302(Lcom/android/server/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 503
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    #getter for: Lcom/android/server/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static/range {v26 .. v26}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v26

    if-nez v26, :cond_5

    .line 505
    const-string v26, "PackageManager"

    const-string v27, "Cannot bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 507
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 509
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1

    .line 511
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 512
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_6

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 514
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    if-eqz v19, :cond_0

    .line 515
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->startCopy()V

    goto/16 :goto_0

    .line 519
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_6
    const-string v26, "PackageManager"

    const-string v27, "Empty queue"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    .restart local p1
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_0

    .line 526
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    .line 529
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->connectToService()Z

    move-result v26

    if-nez v26, :cond_0

    .line 530
    const-string v26, "PackageManager"

    const-string v27, "Failed to bind to media container service"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 532
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 534
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_2

    .line 536
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 544
    .end local v14           #i$:Ljava/util/Iterator;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-lez v26, :cond_9

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v26

    if-nez v26, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mBound:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 549
    invoke-direct/range {p0 .. p0}, Lcom/android/server/PackageManagerService$PackageHandler;->disconnectService()V

    goto/16 :goto_0

    .line 555
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    move-object/from16 v26, v0

    const/16 v27, 0x3

    invoke-virtual/range {v26 .. v27}, Lcom/android/server/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 561
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->mPendingInstalls:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/PackageManagerService$HandlerParams;

    .line 562
    .restart local v19       #params:Lcom/android/server/PackageManagerService$HandlerParams;
    goto/16 :goto_0

    .line 567
    .end local v19           #params:Lcom/android/server/PackageManagerService$HandlerParams;
    :pswitch_6
    const/16 v23, 0x0

    .line 569
    .local v23, size:I
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 571
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    .line 572
    monitor-exit v26

    goto/16 :goto_0

    .line 595
    .end local p1
    :catchall_0
    move-exception v27

    monitor-exit v26
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v27

    .line 574
    .restart local p1
    :cond_b
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->size()I

    move-result v23

    .line 575
    if-gtz v23, :cond_c

    .line 577
    monitor-exit v26

    goto/16 :goto_0

    .line 579
    :cond_c
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 580
    .local v18, packages:[Ljava/lang/String;
    move/from16 v0, v23

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object v6, v0

    .line 581
    .local v6, components:[Ljava/util/ArrayList;
    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 583
    .local v24, uids:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 584
    .local v16, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    const/4 v13, 0x0

    .line 585
    .end local p1
    .local v13, i:I
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_e

    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 586
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 587
    .local v11, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    aput-object p1, v18, v13

    .line 588
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    aput-object p1, v6, v13

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    #getter for: Lcom/android/server/PackageManagerService$Settings;->mPackages:Ljava/util/HashMap;
    invoke-static/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->access$400(Lcom/android/server/PackageManagerService$Settings;)Ljava/util/HashMap;

    move-result-object v27

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/PackageManagerService$PackageSetting;

    .line 590
    .local v20, ps:Lcom/android/server/PackageManagerService$PackageSetting;
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageSetting;->userId:I

    move/from16 v27, v0

    :goto_4
    aput v27, v24, v13

    .line 591
    add-int/lit8 v13, v13, 0x1

    .line 592
    goto :goto_3

    .line 590
    :cond_d
    const/16 v27, -0x1

    goto :goto_4

    .line 593
    .end local v11           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v20           #ps:Lcom/android/server/PackageManagerService$PackageSetting;
    :cond_e
    move/from16 v23, v13

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPendingBroadcasts:Ljava/util/HashMap;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/HashMap;->clear()V

    .line 595
    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    const/4 v13, 0x0

    :goto_5
    move v0, v13

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    aget-object v27, v18, v13

    const/16 v28, 0x1

    aget-object v29, v6, v13

    aget v30, v24, v13

    #calls: Lcom/android/server/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static/range {v26 .. v30}, Lcom/android/server/PackageManagerService;->access$500(Lcom/android/server/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 597
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 601
    :cond_f
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 605
    .end local v6           #components:[Ljava/util/ArrayList;
    .end local v13           #i:I
    .end local v16           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v18           #packages:[Ljava/lang/String;
    .end local v23           #size:I
    .end local v24           #uids:[I
    .restart local p1
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    .line 606
    .local v17, packageName:Ljava/lang/String;
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 608
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_10

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$Settings;->mPackagesToBeCleaned:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 611
    :cond_10
    monitor-exit v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 612
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_0

    .line 611
    :catchall_1
    move-exception v27

    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v27

    .line 617
    .end local v17           #packageName:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/PackageManagerService$PostInstallData;

    .line 618
    .local v7, data:Lcom/android/server/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/util/SparseArray;->delete(I)V

    .line 619
    const/4 v8, 0x0

    .line 621
    .local v8, deleteOld:Z
    if-eqz v7, :cond_16

    .line 622
    iget-object v4, v7, Lcom/android/server/PackageManagerService$PostInstallData;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 623
    .local v4, args:Lcom/android/server/PackageManagerService$InstallArgs;
    move-object v0, v7

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PostInstallData;->res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v22, v0

    .line 625
    .local v22, res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    .line 626
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x1

    invoke-virtual/range {v26 .. v28}, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZ)V

    .line 627
    new-instance v12, Landroid/os/Bundle;

    const/16 v26, 0x1

    move-object v0, v12

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 628
    .local v12, extras:Landroid/os/Bundle;
    const-string v26, "android.intent.extra.UID"

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->uid:I

    move/from16 v27, v0

    move-object v0, v12

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 629
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_15

    const/16 v26, 0x1

    move/from16 v25, v26

    .line 630
    .local v25, update:Z
    :goto_6
    if-eqz v25, :cond_11

    .line 631
    const-string v26, "android.intent.extra.REPLACING"

    const/16 v27, 0x1

    move-object v0, v12

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 633
    :cond_11
    const-string v26, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v12

    move-object/from16 v3, v28

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 636
    if-eqz v25, :cond_12

    .line 637
    const-string v26, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object v2, v12

    move-object/from16 v3, v28

    #calls: Lcom/android/server/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 641
    :cond_12
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v26, v0

    if-eqz v26, :cond_13

    .line 643
    const/4 v8, 0x1

    .line 647
    .end local v12           #extras:Landroid/os/Bundle;
    .end local v25           #update:Z
    :cond_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Runtime;->gc()V

    .line 649
    if-eqz v8, :cond_14

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 651
    :try_start_4
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/PackageManagerService$PackageRemovedInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/PackageManagerService$InstallArgs;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/server/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 652
    monitor-exit v26
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 654
    :cond_14
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 656
    :try_start_5
    move-object v0, v4

    iget-object v0, v0, Lcom/android/server/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move/from16 v28, v0

    invoke-interface/range {v26 .. v28}, Landroid/content/pm/IPackageInstallObserver;->packageInstalled(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 657
    :catch_0
    move-exception v26

    move-object/from16 v10, v26

    .line 658
    .local v10, e:Landroid/os/RemoteException;
    const-string v26, "PackageManager"

    const-string v27, "Observer no longer exists."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 629
    .end local v10           #e:Landroid/os/RemoteException;
    .restart local v12       #extras:Landroid/os/Bundle;
    :cond_15
    const/16 v26, 0x0

    move/from16 v25, v26

    goto/16 :goto_6

    .line 652
    .end local v12           #extras:Landroid/os/Bundle;
    :catchall_2
    move-exception v27

    :try_start_6
    monitor-exit v26
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v27

    .line 662
    .end local v4           #args:Lcom/android/server/PackageManagerService$InstallArgs;
    .end local v22           #res:Lcom/android/server/PackageManagerService$PackageInstalledInfo;
    :cond_16
    const-string v26, "PackageManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Bogus post-install token "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 667
    .end local v7           #data:Lcom/android/server/PackageManagerService$PostInstallData;
    .end local v8           #deleteOld:Z
    :pswitch_9
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_19

    const/16 v26, 0x1

    move/from16 v21, v26

    .line 668
    .local v21, reportStatus:Z
    :goto_7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    const/16 v26, 0x1

    move/from16 v9, v26

    .line 670
    .local v9, doGc:Z
    :goto_8
    if-eqz v9, :cond_17

    .line 672
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Runtime;->gc()V

    .line 674
    :cond_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 675
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/util/Set;

    .line 678
    .local v5, args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v5

    #calls: Lcom/android/server/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v0, v1}, Lcom/android/server/PackageManagerService;->access$700(Lcom/android/server/PackageManagerService;Ljava/util/Set;)V

    .line 680
    .end local v5           #args:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/server/PackageManagerService$SdInstallArgs;>;"
    :cond_18
    if-eqz v21, :cond_0

    .line 683
    :try_start_7
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 684
    :catch_1
    move-exception v26

    move-object/from16 v10, v26

    .line 685
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v26, "PackageManager"

    const-string v27, "MountService not running?"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 667
    .end local v9           #doGc:Z
    .end local v10           #e:Landroid/os/RemoteException;
    .end local v21           #reportStatus:Z
    :cond_19
    const/16 v26, 0x0

    move/from16 v21, v26

    goto :goto_7

    .line 668
    .restart local v21       #reportStatus:Z
    :cond_1a
    const/16 v26, 0x0

    move/from16 v9, v26

    goto :goto_8

    .line 690
    .end local v21           #reportStatus:Z
    :pswitch_a
    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 692
    const/16 v27, 0xd

    :try_start_8
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/PackageManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 694
    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 695
    const/16 v26, 0xa

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 694
    :catchall_3
    move-exception v27

    :try_start_9
    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v27

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/16 v1, 0xa

    .line 460
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 464
    return-void

    .line 462
    :catchall_0
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
