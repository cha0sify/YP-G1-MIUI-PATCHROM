.class public Lcom/android/settings/UNASettingList;
.super Landroid/app/ListActivity;
.source "UNASettingList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UNASettingList$UNAListAdapter;,
        Lcom/android/settings/UNASettingList$UNAListItem;
    }
.end annotation


# static fields
.field private static final mUNAItems:[I

.field private static final mUNAItemsType:[I

.field private static final mWifiUNAItems:[I

.field private static final mWifiUNAItemsType:[I


# instance fields
.field protected mListAdapter:Lcom/android/settings/UNASettingList$UNAListAdapter;

.field private mResetDialog:Landroid/app/Dialog;

.field private mUNA_settings_mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x4

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/UNASettingList;->mUNAItems:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/UNASettingList;->mUNAItemsType:[I

    .line 32
    new-array v0, v2, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/UNASettingList;->mWifiUNAItems:[I

    .line 34
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/UNASettingList;->mWifiUNAItemsType:[I

    return-void

    .line 30
    nop

    :array_0
    .array-data 0x4
        0x1at 0x5t 0x9t 0x7ft
        0x1bt 0x5t 0x9t 0x7ft
        0x1ct 0x5t 0x9t 0x7ft
        0x1dt 0x5t 0x9t 0x7ft
    .end array-data

    .line 31
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 32
    :array_2
    .array-data 0x4
        0x1at 0x5t 0x9t 0x7ft
        0x1bt 0x5t 0x9t 0x7ft
        0x1et 0x5t 0x9t 0x7ft
        0xb9t 0x5t 0x9t 0x7ft
        0xbat 0x5t 0x9t 0x7ft
    .end array-data

    .line 34
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 178
    return-void
.end method

.method private setUNASettings(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mListAdapter:Lcom/android/settings/UNASettingList$UNAListAdapter;

    iget v1, p0, Lcom/android/settings/UNASettingList;->mUNA_settings_mode:I

    invoke-virtual {v0, v1}, Lcom/android/settings/UNASettingList$UNAListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UNASettingList$UNAListItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/UNASettingList$UNAListItem;->setChecked(Z)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mListAdapter:Lcom/android/settings/UNASettingList$UNAListAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/UNASettingList$UNAListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UNASettingList$UNAListItem;

    invoke-virtual {v0, v2}, Lcom/android/settings/UNASettingList$UNAListItem;->setChecked(Z)V

    .line 118
    iput p1, p0, Lcom/android/settings/UNASettingList;->mUNA_settings_mode:I

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "una_setting"

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 120
    const-string v0, "UNASetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->finish()V

    .line 122
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "una_setting"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/settings/UNASettingList;->mUNA_settings_mode:I

    .line 48
    const-string v4, "UNASetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate : Settings.System.UNA_SETTING : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/UNASettingList;->mUNA_settings_mode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 51
    .local v2, listView:Landroid/widget/ListView;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, item_list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/UNASettingList$UNAListItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v4, Lcom/android/settings/UNASettingList;->mWifiUNAItems:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 65
    iget v4, p0, Lcom/android/settings/UNASettingList;->mUNA_settings_mode:I

    if-ne v0, v4, :cond_0

    .line 66
    new-instance v3, Lcom/android/settings/UNASettingList$UNAListItem;

    sget-object v4, Lcom/android/settings/UNASettingList;->mWifiUNAItems:[I

    aget v4, v4, v0

    sget-object v5, Lcom/android/settings/UNASettingList;->mWifiUNAItemsType:[I

    aget v5, v5, v0

    invoke-direct {v3, p0, v4, v5, v7}, Lcom/android/settings/UNASettingList$UNAListItem;-><init>(Lcom/android/settings/UNASettingList;IIZ)V

    .line 70
    .local v3, wifi_item:Lcom/android/settings/UNASettingList$UNAListItem;
    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v3           #wifi_item:Lcom/android/settings/UNASettingList$UNAListItem;
    :cond_0
    new-instance v3, Lcom/android/settings/UNASettingList$UNAListItem;

    sget-object v4, Lcom/android/settings/UNASettingList;->mWifiUNAItems:[I

    aget v4, v4, v0

    sget-object v5, Lcom/android/settings/UNASettingList;->mWifiUNAItemsType:[I

    aget v5, v5, v0

    const/4 v6, 0x0

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/settings/UNASettingList$UNAListItem;-><init>(Lcom/android/settings/UNASettingList;IIZ)V

    .restart local v3       #wifi_item:Lcom/android/settings/UNASettingList$UNAListItem;
    goto :goto_1

    .line 75
    .end local v3           #wifi_item:Lcom/android/settings/UNASettingList$UNAListItem;
    :cond_1
    new-instance v4, Lcom/android/settings/UNASettingList$UNAListAdapter;

    const v5, 0x7f030052

    invoke-direct {v4, p0, p0, v5, v1}, Lcom/android/settings/UNASettingList$UNAListAdapter;-><init>(Lcom/android/settings/UNASettingList;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v4, p0, Lcom/android/settings/UNASettingList;->mListAdapter:Lcom/android/settings/UNASettingList$UNAListAdapter;

    .line 76
    iget-object v4, p0, Lcom/android/settings/UNASettingList;->mListAdapter:Lcom/android/settings/UNASettingList$UNAListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 92
    packed-switch p3, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    return-void

    .line 94
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/android/settings/UNASettingList;->setUNASettings(I)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mResetDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UNASettingList;->mResetDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 98
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/UNASettingList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0905bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0905bb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09032d

    new-instance v2, Lcom/android/settings/UNASettingList$1;

    invoke-direct {v2, p0}, Lcom/android/settings/UNASettingList$1;-><init>(Lcom/android/settings/UNASettingList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09032e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UNASettingList;->mResetDialog:Landroid/app/Dialog;

    goto :goto_0

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
