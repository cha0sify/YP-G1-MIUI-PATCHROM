.class final Lcom/android/server/EncryptService$CryptoNotification;
.super Ljava/lang/Object;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CryptoNotification"
.end annotation


# static fields
.field private static final NOTIFICATION_ID:I = 0x2712

.field static final PROGRESS_MAX:I = 0x64

.field private static final TAG:Ljava/lang/String; = "CryptoNotification"


# instance fields
.field private isWokingNotification:Z

.field mContentView:Landroid/widget/RemoteViews;

.field mCtx:Landroid/content/Context;

.field private mFinished:Z

.field mNotiManager:Landroid/app/NotificationManager;

.field mNotification:Landroid/app/Notification;

.field mPercent:I

.field private mbCryptoPolicy:Z

.field private mbFirstStorage:Z

.field private mnPercent:I

.field paused_text:Ljava/lang/String;

.field percent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/EncryptService;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/EncryptService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "ctx"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 598
    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    .line 580
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    .line 581
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    .line 582
    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    .line 584
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    .line 585
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->percent:Ljava/lang/String;

    .line 586
    iput-object v1, p0, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    .line 588
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    .line 589
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    .line 591
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mbCryptoPolicy:Z

    .line 592
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mbFirstStorage:Z

    .line 593
    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mnPercent:I

    .line 599
    iput-object p2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    .line 600
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    .line 601
    iput-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    .line 602
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/EncryptService$CryptoNotification;ZZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/EncryptService$CryptoNotification;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/EncryptService$CryptoNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/EncryptService$CryptoNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/EncryptService$CryptoNotification;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    iget-boolean v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/EncryptService$CryptoNotification;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 572
    iput-boolean p1, p0, Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z

    return p1
.end method

.method private updateActiveNotification(ZZI)V
    .locals 2
    .parameter "bCryptoPolicy"
    .parameter "bFirstStorage"
    .parameter "lv_percent"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/EncryptService$CryptoNotification$1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/EncryptService$CryptoNotification$1;-><init>(Lcom/android/server/EncryptService$CryptoNotification;IZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 688
    return-void
.end method

.method private updateCompletedNotification(ZZ)V
    .locals 2
    .parameter "bCryptoPolicy"
    .parameter "bFirstStorage"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->this$0:Lcom/android/server/EncryptService;

    #getter for: Lcom/android/server/EncryptService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/EncryptService;->access$700(Lcom/android/server/EncryptService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/EncryptService$CryptoNotification$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/EncryptService$CryptoNotification$2;-><init>(Lcom/android/server/EncryptService$CryptoNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 756
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 761
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 764
    :cond_0
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    .line 765
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    .line 766
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    .line 769
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    .line 770
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->percent:Ljava/lang/String;

    .line 771
    iput-object v2, p0, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    .line 772
    return-void
.end method
