.class Lcom/android/settings/AskUSBMode$1;
.super Ljava/lang/Object;
.source "AskUSBMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AskUSBMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AskUSBMode;


# direct methods
.method constructor <init>(Lcom/android/settings/AskUSBMode;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    const-string v2, "KIES"

    #calls: Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/settings/AskUSBMode;->access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.TOAST_ASK_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, intentBroadcast:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    #getter for: Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AskUSBMode;->access$100(Lcom/android/settings/AskUSBMode;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0           #intentBroadcast:Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v1}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "media_player_mode"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    iget-object v1, p0, Lcom/android/settings/AskUSBMode$1;->this$0:Lcom/android/settings/AskUSBMode;

    invoke-virtual {v1}, Lcom/android/settings/AskUSBMode;->finish()V

    .line 90
    return-void

    .line 85
    :catch_0
    move-exception v1

    goto :goto_0
.end method
