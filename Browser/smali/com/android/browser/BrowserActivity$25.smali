.class Lcom/android/browser/BrowserActivity$25;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserActivity;

.field final synthetic val$handler:Landroid/webkit/HttpAuthHandler;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 5249
    iput-object p1, p0, Lcom/android/browser/BrowserActivity$25;->this$0:Lcom/android/browser/BrowserActivity;

    iput-object p2, p0, Lcom/android/browser/BrowserActivity$25;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 5251
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$25;->val$handler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v0}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 5252
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$25;->this$0:Lcom/android/browser/BrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 5253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$25;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2702(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 5254
    iget-object v0, p0, Lcom/android/browser/BrowserActivity$25;->this$0:Lcom/android/browser/BrowserActivity;

    #setter for: Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;
    invoke-static {v0, v1}, Lcom/android/browser/BrowserActivity;->access$2802(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;

    .line 5255
    return-void
.end method
