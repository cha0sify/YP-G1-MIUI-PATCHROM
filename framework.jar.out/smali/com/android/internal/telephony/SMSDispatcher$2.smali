.class Lcom/android/internal/telephony/SMSDispatcher$2;
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
    .line 2418
    iput-object p1, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "SMSDispatcher"

    .line 2422
    const-string v0, "SMSDispatcher"

    const-string v0, "BroadcastReceiver - mGcfResultReceiver "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2425
    const-string v0, "SMSDispatcher"

    const-string v0, "ACTION_GCF_DEVICE_STORAGE_LOW "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2430
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2431
    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 2434
    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Z)Z

    .line 2435
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v3, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2436
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2440
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.GCF_DEVICE_STORAGE_OK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2441
    const-string v0, "SMSDispatcher"

    const-string v0, "ACTION_GCF_DEVICE_STORAGE_OK "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    invoke-static {}, Lcom/android/internal/telephony/SMSDispatcher;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2446
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportSmsMemoryStatus(ZLandroid/os/Message;)V

    .line 2447
    invoke-static {v3}, Lcom/android/internal/telephony/SMSDispatcher;->access$002(Z)Z

    .line 2450
    :cond_2
    invoke-static {v2}, Lcom/android/internal/telephony/SMSDispatcher;->access$102(Z)Z

    .line 2452
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    .line 2453
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher$2;->this$0:Lcom/android/internal/telephony/SMSDispatcher;

    iput-boolean v2, v0, Lcom/android/internal/telephony/SMSDispatcher;->receive_intent:Z

    .line 2457
    :cond_3
    return-void
.end method
