.class Lcom/android/server/WindowManagerService$DimAnimator;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DimAnimator"
.end annotation


# instance fields
.field mDimCurrentAlpha:F

.field mDimDeltaPerMs:F

.field mDimShown:Z

.field mDimSurface:Landroid/view/Surface;

.field mDimTargetAlpha:F

.field mLastDimAnimTime:J

.field mLastDimHeight:I

.field mLastDimWidth:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;)V
    .locals 10
    .parameter "session"

    .prologue
    const/4 v0, 0x0

    .line 10872
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10864
    iput-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 10873
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 10877
    :try_start_0
    new-instance v0, Landroid/view/Surface;

    const/4 v2, 0x0

    const-string v3, "DimSurface"

    const/4 v4, -0x1

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/4 v7, -0x1

    const/high16 v8, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceSession;ILjava/lang/String;IIIII)V

    iput-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    .line 10881
    iget-object v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Surface;->setAlpha(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10886
    :cond_0
    :goto_0
    return-void

    .line 10882
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 10883
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "WindowManager"

    const-string v1, "Exception creating Dim surface"

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public printTo(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 11007
    const-string v0, "  mDimShown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 11008
    const-string v0, " current="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11009
    const-string v0, " target="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11010
    const-string v0, " delta="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 11011
    const-string v0, " lastAnimTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    .line 11012
    return-void
.end method

.method show(II)V
    .locals 4
    .parameter "dw"
    .parameter "dh"

    .prologue
    .line 10892
    iget-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    if-nez v1, :cond_1

    .line 10895
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    .line 10897
    :try_start_0
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 10898
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 10899
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/Surface;->setPosition(II)V

    .line 10900
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    .line 10901
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10910
    :cond_0
    :goto_0
    return-void

    .line 10902
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 10903
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "WindowManager"

    const-string v2, "Failure showing dim surface"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10905
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_1
    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    if-ne v1, p1, :cond_2

    iget v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    if-eq v1, p2, :cond_0

    .line 10906
    :cond_2
    iput p1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimWidth:I

    .line 10907
    iput p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimHeight:I

    .line 10908
    iget-object v1, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v1, p1, p2}, Landroid/view/Surface;->setSize(II)V

    goto :goto_0
.end method

.method updateParameters(Lcom/android/server/WindowManagerService$WindowState;J)V
    .locals 6
    .parameter "w"
    .parameter "currentTime"

    .prologue
    .line 10917
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimLayer:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setLayer(I)V

    .line 10919
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mExiting:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move v2, v3

    .line 10922
    .local v2, target:F
    :goto_0
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v2

    if-eqz v3, :cond_2

    .line 10925
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10926
    iget-boolean v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimating:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v3

    move-wide v0, v3

    .line 10929
    .local v0, duration:J
    :goto_1
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    .line 10934
    const-wide/16 v3, 0x6

    mul-long/2addr v0, v3

    .line 10936
    :cond_0
    const-wide/16 v3, 0x1

    cmp-long v3, v0, v3

    if-gez v3, :cond_1

    .line 10938
    const-wide/16 v0, 0x1

    .line 10940
    :cond_1
    iput v2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 10941
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    sub-float/2addr v3, v4

    long-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 10943
    .end local v0           #duration:J
    :cond_2
    return-void

    .line 10919
    .end local v2           #target:F
    :cond_3
    iget-object v3, p1, Lcom/android/server/WindowManagerService$WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    move v2, v3

    goto :goto_0

    .line 10926
    .restart local v2       #target:F
    :cond_4
    const-wide/16 v3, 0xc8

    move-wide v0, v3

    goto :goto_1
.end method

.method updateSurface(ZJZ)Z
    .locals 10
    .parameter "dimming"
    .parameter "currentTime"
    .parameter "displayFrozen"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 10950
    if-nez p1, :cond_0

    .line 10951
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v7

    if-eqz v3, :cond_0

    .line 10952
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10953
    iput v7, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    .line 10954
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    neg-float v3, v3

    const/high16 v4, 0x4348

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    .line 10958
    :cond_0
    const/4 v0, 0x0

    .line 10959
    .local v0, animating:Z
    iget-wide v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    cmp-long v3, v3, v8

    if-eqz v3, :cond_2

    .line 10960
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    iget-wide v5, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    sub-long v5, p2, v5

    long-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 10962
    const/4 v2, 0x1

    .line 10963
    .local v2, more:Z
    if-eqz p4, :cond_3

    .line 10965
    const/4 v2, 0x0

    .line 10979
    :cond_1
    :goto_0
    if-eqz v2, :cond_6

    .line 10982
    iput-wide p2, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10983
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 10984
    const/4 v0, 0x1

    .line 11003
    .end local v2           #more:Z
    :cond_2
    :goto_1
    return v0

    .line 10966
    .restart local v2       #more:Z
    :cond_3
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_4

    .line 10967
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 10968
    const/4 v2, 0x0

    goto :goto_0

    .line 10970
    :cond_4
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimDeltaPerMs:F

    cmpg-float v3, v3, v7

    if-gez v3, :cond_5

    .line 10971
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 10972
    const/4 v2, 0x0

    goto :goto_0

    .line 10975
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 10986
    :cond_6
    iget v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimTargetAlpha:F

    iput v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    .line 10987
    iput-wide v8, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mLastDimAnimTime:J

    .line 10990
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    iget v4, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimCurrentAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setAlpha(F)V

    .line 10991
    if-nez p1, :cond_2

    .line 10995
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->hide()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10999
    :goto_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/WindowManagerService$DimAnimator;->mDimShown:Z

    goto :goto_1

    .line 10996
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 10997
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v3, "WindowManager"

    const-string v4, "Illegal argument exception hiding dim surface"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
