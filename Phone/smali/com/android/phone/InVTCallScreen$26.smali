.class Lcom/android/phone/InVTCallScreen$26;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 7829
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    const-string v3, "InVTCallScreen"

    .line 7832
    const-string v0, "InVTCallScreen"

    const-string v0, "IN SURFACECHANGED method under surfaceCallback ===========================>"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7835
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 7836
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->selectVideo:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7838
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7840
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7841
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7842
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    .line 7843
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$7200(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0, v1}, Lcom/android/phone/InVTCallScreen;->access$7302(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 7845
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7300(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7856
    :cond_1
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside surfaceChanged."

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7860
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7861
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside surfaceChanged: Send Live Video"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7862
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 7870
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Out surfaceChanged"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7871
    return-void

    .line 7849
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->showcamera:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7850
    const-string v0, "InVTCallScreen"

    const-string v0, "In showcamera condition"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7851
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->showcamera:Z
    invoke-static {v0, v4}, Lcom/android/phone/InVTCallScreen;->access$7402(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_0

    .line 7853
    :cond_3
    const-string v0, "InVTCallScreen"

    const-string v0, "ELSE Condition"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7868
    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v0, " else condn of near_endsurhldr"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter "holder"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v2, 0x2

    const-string v4, "InVTCallScreen"

    .line 7874
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside Surface Create."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7875
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_6

    .line 7876
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is inside near_endsurhldr surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7879
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7880
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7881
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 7885
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7886
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7905
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 7906
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Height"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7957
    :cond_2
    :goto_1
    return-void

    .line 7888
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7889
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 7893
    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v0, "VTManager.StartCamera for Near end View"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7894
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7895
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_5

    .line 7896
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 7900
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    goto/16 :goto_0

    .line 7898
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    goto :goto_2

    .line 7909
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_2

    .line 7910
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This is inside far_endsurhldr surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTcalltype:I
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$1700(Lcom/android/phone/InVTCallScreen;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 7914
    const-string v0, "InVTCallScreen"

    const-string v0, "VTManager.StartCamera for Far end View"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7916
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7917
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_7

    .line 7918
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 7922
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    goto/16 :goto_1

    .line 7920
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    goto :goto_3

    .line 7927
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$6200(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 7928
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v5}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 7929
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7930
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_9

    .line 7931
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lsiso/vt/VTManager;->setOrientation(I)V

    .line 7936
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->startCamera(Landroid/view/Surface;II)V

    goto/16 :goto_1

    .line 7933
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lsiso/vt/VTManager;->setOrientation(I)V

    goto :goto_4

    .line 7941
    :cond_a
    const-string v0, "InVTCallScreen"

    const-string v0, "VTManager.SetPreviewDisplay for Far end View"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7943
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 7944
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, v2, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, v3, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lsiso/vt/VTManager;->setPreviewDisplay(Landroid/view/Surface;II)V

    .line 7948
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 7949
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 7951
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7952
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v0, v0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 7960
    const-string v0, "InVTCallScreen"

    const-string v1, "Into Surface Destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7968
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 7971
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$26;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 7973
    :cond_0
    return-void
.end method
