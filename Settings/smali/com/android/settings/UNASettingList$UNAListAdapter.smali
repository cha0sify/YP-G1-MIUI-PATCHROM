.class public Lcom/android/settings/UNASettingList$UNAListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UNASettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UNASettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UNAListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/android/settings/UNASettingList$UNAListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UNASettingList$UNAListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/UNASettingList;


# direct methods
.method public constructor <init>(Lcom/android/settings/UNASettingList;Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "textViewResourceId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/UNASettingList$UNAListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/UNASettingList$UNAListItem;>;"
    iput-object p1, p0, Lcom/android/settings/UNASettingList$UNAListAdapter;->this$0:Lcom/android/settings/UNASettingList;

    .line 183
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 184
    iput-object p4, p0, Lcom/android/settings/UNASettingList$UNAListAdapter;->mItems:Ljava/util/ArrayList;

    .line 185
    iput-object p2, p0, Lcom/android/settings/UNASettingList$UNAListAdapter;->mContext:Landroid/content/Context;

    .line 186
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v9, 0x0

    .line 190
    move-object v5, p2

    .line 191
    .local v5, v:Landroid/view/View;
    iget-object v7, p0, Lcom/android/settings/UNASettingList$UNAListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 193
    .local v6, vi:Landroid/view/LayoutInflater;
    iget-object v7, p0, Lcom/android/settings/UNASettingList$UNAListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/UNASettingList$UNAListItem;

    .line 195
    .local v4, ti:Lcom/android/settings/UNASettingList$UNAListItem;
    if-eqz v4, :cond_0

    .line 196
    invoke-virtual {v4}, Lcom/android/settings/UNASettingList$UNAListItem;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 217
    :cond_0
    :goto_0
    return-object v5

    .line 198
    :pswitch_0
    const v7, 0x7f030052

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 199
    const v7, 0x7f0b00f0

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 200
    .local v0, category_title:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/settings/UNASettingList$UNAListItem;->getTitle()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 203
    .end local v0           #category_title:Landroid/widget/TextView;
    :pswitch_1
    const v7, 0x7f03004f

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 204
    const v7, 0x1020014

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckedTextView;

    .line 205
    .local v3, radio_title:Landroid/widget/CheckedTextView;
    invoke-virtual {v4}, Lcom/android/settings/UNASettingList$UNAListItem;->getTitle()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 206
    invoke-virtual {v4}, Lcom/android/settings/UNASettingList$UNAListItem;->getChecked()Z

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_0

    .line 209
    .end local v3           #radio_title:Landroid/widget/CheckedTextView;
    :pswitch_2
    const v7, 0x109004c

    invoke-virtual {v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 210
    const v7, 0x1020016

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 211
    .local v2, normal_title:Landroid/widget/TextView;
    invoke-virtual {v4}, Lcom/android/settings/UNASettingList$UNAListItem;->getTitle()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 212
    const v7, 0x1020010

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 213
    .local v1, normal_summary:Landroid/widget/TextView;
    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
