.class final Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

.field featureId:I

.field frozenMenuState:Landroid/os/Bundle;

.field fullBackground:I

.field gravity:I

.field isHandled:Z

.field isInExpandedMode:Z

.field isOpen:Z

.field isPrepared:Z

.field menu:Landroid/view/Menu;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field shownPanelView:Landroid/view/View;

.field wasLastExpanded:Z

.field wasLastOpen:Z

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .parameter "featureId"

    .prologue
    .line 2689
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2690
    iput p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 2692
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->refreshDecorView:Z

    .line 2693
    return-void
.end method


# virtual methods
.method onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 2730
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    move-object v1, v0

    .line 2731
    .local v1, savedState:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    iput v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    .line 2732
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastOpen:Z

    .line 2733
    iget-boolean v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->wasLastExpanded:Z

    .line 2734
    iget-object v2, v1, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2743
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Landroid/view/Menu;

    .line 2744
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->createdPanelView:Landroid/view/View;

    .line 2745
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->shownPanelView:Landroid/view/View;

    .line 2746
    iput-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->decorView:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    .line 2747
    return-void
.end method

.method onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 2716
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;-><init>(Lcom/android/internal/policy/impl/PhoneWindow$1;)V

    .line 2717
    .local v0, savedState:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->featureId:I

    iput v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->featureId:I

    .line 2718
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isOpen:Z

    .line 2719
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isInExpandedMode:Z

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->isInExpandedMode:Z

    .line 2721
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    .line 2722
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 2723
    iget-object p0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Landroid/view/Menu;

    .end local p0
    check-cast p0, Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v1, v0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 2726
    :cond_0
    return-object v0
.end method

.method setMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 2707
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->menu:Landroid/view/Menu;

    .line 2709
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2710
    check-cast p1, Lcom/android/internal/view/menu/MenuBuilder;

    .end local p1
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 2711
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->frozenMenuState:Landroid/os/Bundle;

    .line 2713
    :cond_0
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 2696
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2697
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->background:I

    .line 2699
    const/16 v1, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->fullBackground:I

    .line 2701
    const/16 v1, 0x5d

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->windowAnimations:I

    .line 2703
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 2704
    return-void
.end method
