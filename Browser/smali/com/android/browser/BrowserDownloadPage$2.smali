.class Lcom/android/browser/BrowserDownloadPage$2;
.super Ljava/lang/Object;
.source "BrowserDownloadPage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/BrowserDownloadPage;->onContextItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/BrowserDownloadPage;


# direct methods
.method constructor <init>(Lcom/android/browser/BrowserDownloadPage;)V
    .locals 0
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mDownloadAdapter:Lcom/android/browser/BrowserDownloadAdapter;
    invoke-static {v0}, Lcom/android/browser/BrowserDownloadPage;->access$000(Lcom/android/browser/BrowserDownloadPage;)Lcom/android/browser/BrowserDownloadAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    #getter for: Lcom/android/browser/BrowserDownloadPage;->mContextMenuPosition:J
    invoke-static {v1}, Lcom/android/browser/BrowserDownloadPage;->access$200(Lcom/android/browser/BrowserDownloadPage;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserDownloadAdapter;->moveCursorToPackedChildPosition(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "BrowserDownloadPage"

    const-string v1, "AlertDialog::onClick : Failed to move Cursor."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserDownloadPage$2;->this$0:Lcom/android/browser/BrowserDownloadPage;

    const/4 v1, 0x1

    #calls: Lcom/android/browser/BrowserDownloadPage;->openOrDeleteCurrentDownload(Z)V
    invoke-static {v0, v1}, Lcom/android/browser/BrowserDownloadPage;->access$300(Lcom/android/browser/BrowserDownloadPage;Z)V

    goto :goto_0
.end method
