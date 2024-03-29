.class public Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;
.super Landroid/app/ListActivity;
.source "BluetoothSendVcardSettingsActivity.java"


# instance fields
.field private helpTextView:Landroid/widget/TextView;

.field private titleView:Landroid/widget/TextView;

.field private viewForHelp:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905be

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x109000f

    invoke-direct {v0, p0, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 49
    .local v3, listView:Landroid/widget/ListView;
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 50
    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sendvcard"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 55
    .local v4, position:I
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 57
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f030042

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->viewForHelp:Landroid/widget/LinearLayout;

    .line 58
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->viewForHelp:Landroid/widget/LinearLayout;

    const v6, 0x7f0b00ae

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->titleView:Landroid/widget/TextView;

    .line 59
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->viewForHelp:Landroid/widget/LinearLayout;

    const v6, 0x1010004

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->helpTextView:Landroid/widget/TextView;

    .line 61
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->titleView:Landroid/widget/TextView;

    const v6, 0x7f0905c2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 63
    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->viewForHelp:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5, v9, v7}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 64
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    const-string v5, "BluetoothSendVcardSettingsActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate, postion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v3, v4, v8}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 68
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothSendVcardSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sendvcard"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const-string v0, "BluetoothSendVcardSettingsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListItemClick, postion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
