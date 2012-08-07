.class Lcom/android/settings/UNASettingList$1;
.super Ljava/lang/Object;
.source "UNASettingList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/UNASettingList;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/UNASettingList;


# direct methods
.method constructor <init>(Lcom/android/settings/UNASettingList;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.samsungapps.reset.virtualMCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v0, i:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1, v0}, Lcom/android/settings/UNASettingList;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/UNASettingList$1;->this$0:Lcom/android/settings/UNASettingList;

    invoke-virtual {v1}, Lcom/android/settings/UNASettingList;->finish()V

    .line 107
    return-void
.end method
