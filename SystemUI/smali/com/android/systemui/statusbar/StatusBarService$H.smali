.class Lcom/android/systemui/statusbar/StatusBarService$H;
.super Landroid/os/Handler;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/StatusBarService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/StatusBarService;Lcom/android/systemui/statusbar/StatusBarService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBarService$H;-><init>(Lcom/android/systemui/statusbar/StatusBarService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 808
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 826
    :cond_0
    :goto_0
    return-void

    .line 810
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doAnimation()V

    goto :goto_0

    .line 813
    :sswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->doRevealAnimation()V

    goto :goto_0

    .line 817
    :sswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    #getter for: Lcom/android/systemui/statusbar/StatusBarService;->mIsStatusBarBrightNess:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/StatusBarService;->access$300(Lcom/android/systemui/statusbar/StatusBarService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/statusbar/StatusBarService;->mIsBrightNessMode:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->access$402(Lcom/android/systemui/statusbar/StatusBarService;I)I

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarService;->updateExpandedViewPos(I)V

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarService$H;->this$0:Lcom/android/systemui/statusbar/StatusBarService;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarService;->performCollapse()V

    .line 821
    const-string v0, "StatusBarService"

    const-string v1, ".BRIGHTNESS MODE."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 808
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x7d0 -> :sswitch_2
    .end sparse-switch
.end method
