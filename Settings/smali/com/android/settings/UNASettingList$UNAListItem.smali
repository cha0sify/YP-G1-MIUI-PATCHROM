.class public Lcom/android/settings/UNASettingList$UNAListItem;
.super Ljava/lang/Object;
.source "UNASettingList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UNASettingList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UNAListItem"
.end annotation


# instance fields
.field private mChecked:Z

.field private mItemType:I

.field private mTitleRes:I

.field final synthetic this$0:Lcom/android/settings/UNASettingList;


# direct methods
.method public constructor <init>(Lcom/android/settings/UNASettingList;IIZ)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "type"
    .parameter "checked"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/settings/UNASettingList$UNAListItem;->this$0:Lcom/android/settings/UNASettingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mTitleRes:I

    .line 156
    iput p3, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mItemType:I

    .line 157
    iput-boolean p4, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mChecked:Z

    .line 158
    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mChecked:Z

    return v0
.end method

.method public getTitle()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mTitleRes:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mItemType:I

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/settings/UNASettingList$UNAListItem;->mChecked:Z

    .line 174
    return-void
.end method
