.class Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->registerScanSuspendCommandReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V
    .locals 0
    .parameter

    .prologue
    .line 6693
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 6695
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_SUSPEND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6696
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    const/4 v1, 0x1

    #setter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2202(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z

    .line 6697
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->suspend()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2300(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 6698
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->kickThumbWorkerSuspendTimer()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2400(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 6707
    :cond_0
    :goto_0
    return-void

    .line 6699
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_THUMBWORKER_RESUME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6700
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mApplicationSuspendThumbWorker:Z
    invoke-static {v0, v1}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2202(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;Z)Z

    .line 6701
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->stopThumbWorkerSuspendTimer()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2500(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    .line 6703
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #getter for: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->mMediaScanning:Z
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2600(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6704
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender$1;->this$1:Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;

    #calls: Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->resume()V
    invoke-static {v0}, Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;->access$2700(Lcom/android/providers/media/MediaProvider$ThumbWorkerSuspender;)V

    goto :goto_0
.end method
