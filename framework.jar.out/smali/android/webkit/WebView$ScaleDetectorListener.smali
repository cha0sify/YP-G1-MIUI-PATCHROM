.class Landroid/webkit/WebView$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 6623
    iput-object p1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6623
    invoke-direct {p0, p1}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 8
    .parameter "detector"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 6725
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    iget-boolean v2, v2, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v6, v2, :cond_0

    .line 6726
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;
    invoke-static {v2}, Landroid/webkit/WebView;->access$3400(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6730
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v6, :cond_3

    .line 6733
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2}, Landroid/webkit/WebView;->access$3000(Landroid/webkit/WebView;)I

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    .line 6734
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6735
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6737
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v7, v2, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6740
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6741
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6745
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onNewScale(Landroid/webkit/WebviewScaleGestureDetector;)Z

    move-result v0

    .line 6748
    .local v0, flag:Z
    if-ne v0, v6, :cond_2

    .line 6750
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    :cond_2
    move v2, v0

    .line 6773
    .end local v0           #flag:Z
    :goto_0
    return v2

    .line 6757
    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getScaleFactor()F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c8

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 6759
    .local v1, scale:F
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    sub-float v2, v1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 6760
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v6}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6762
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_4

    .line 6763
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const/high16 v3, 0x3fa0

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 6767
    :goto_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 6768
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6769
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/4 v3, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v1, v7, v7, v3}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6770
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    move v2, v6

    .line 6771
    goto :goto_0

    .line 6765
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    const v3, 0x3f4ccccd

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    :cond_5
    move v2, v7

    .line 6773
    goto :goto_0
.end method

.method public onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 6628
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6629
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6631
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iput-boolean v2, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6634
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v1}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6635
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v1}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6638
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->startZoom()V

    .line 6642
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 6644
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 6646
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6647
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v2, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6648
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6651
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/webkit/OnPinchZoomListener;->onScaleBegin(Landroid/webkit/WebviewScaleGestureDetector;FF)Z

    .line 6656
    :cond_2
    return v4
.end method

.method public onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V
    .locals 10
    .parameter "detector"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 6662
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_1

    .line 6664
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6665
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterX()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2102(Landroid/webkit/WebView;F)F

    .line 6666
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getCenterY()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2202(Landroid/webkit/WebView;F)F

    .line 6667
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getScale()F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6669
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 6670
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6672
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 6673
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMaxZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)F

    move-result v3

    #setter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$1002(Landroid/webkit/WebView;F)F

    .line 6676
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$2000(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6677
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mPreviewZoomOnly:Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2002(Landroid/webkit/WebView;Z)Z

    .line 6678
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterX:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2100(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2400(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorX:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2302(Landroid/webkit/WebView;I)I

    .line 6679
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v4, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mZoomCenterY:F
    invoke-static {v4}, Landroid/webkit/WebView;->access$2200(Landroid/webkit/WebView;)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/webkit/WebView;->access$2600(Landroid/webkit/WebView;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    #setter for: Landroid/webkit/WebView;->mAnchorY:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$2502(Landroid/webkit/WebView;I)I

    .line 6682
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mMinZoomScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1900(Landroid/webkit/WebView;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v2}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget-object v6, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_6

    :cond_2
    move v1, v8

    .line 6687
    .local v1, reflowNow:Z
    :goto_0
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v3, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v3

    const/4 v4, 0x0

    #calls: Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    invoke-static {v2, v3, v1, v8, v4}, Landroid/webkit/WebView;->access$2800(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6689
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->invalidate()V

    .line 6692
    .end local v1           #reflowNow:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->inEditingMode()Z
    invoke-static {v2}, Landroid/webkit/WebView;->access$1600(Landroid/webkit/WebView;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #calls: Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z
    invoke-static {v2, v9}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6696
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;
    invoke-static {v2}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6701
    :cond_4
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    const/16 v3, 0x8

    #setter for: Landroid/webkit/WebView;->mTouchMode:I
    invoke-static {v2, v3}, Landroid/webkit/WebView;->access$3002(Landroid/webkit/WebView;I)I

    .line 6702
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #setter for: Landroid/webkit/WebView;->mConfirmMove:Z
    invoke-static {v2, v8}, Landroid/webkit/WebView;->access$3102(Landroid/webkit/WebView;Z)Z

    .line 6703
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v4

    iget-object v5, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    #getter for: Landroid/webkit/WebView;->mLastTouchTime:J
    invoke-static {v5}, Landroid/webkit/WebView;->access$3200(Landroid/webkit/WebView;)J

    move-result-wide v5

    #calls: Landroid/webkit/WebView;->startTouch(FFJ)V
    invoke-static {v2, v3, v4, v5, v6}, Landroid/webkit/WebView;->access$3300(Landroid/webkit/WebView;FFJ)V

    .line 6706
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6710
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 6712
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2, p1}, Landroid/webkit/OnPinchZoomListener;->onScaleEnd(Landroid/webkit/WebviewScaleGestureDetector;)V

    .line 6713
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->getPluginMode()I

    move-result v2

    if-ne v2, v8, :cond_5

    .line 6715
    new-instance v0, Landroid/webkit/WebView$PluginUpdateData;

    invoke-direct {v0}, Landroid/webkit/WebView$PluginUpdateData;-><init>()V

    .line 6716
    .local v0, data:Landroid/webkit/WebView$PluginUpdateData;
    iput v8, v0, Landroid/webkit/WebView$PluginUpdateData;->mMode:I

    .line 6717
    iget-object v2, p0, Landroid/webkit/WebView$ScaleDetectorListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V

    .line 6720
    .end local v0           #data:Landroid/webkit/WebView$PluginUpdateData;
    :cond_5
    return-void

    :cond_6
    move v1, v9

    .line 6682
    goto/16 :goto_0
.end method
