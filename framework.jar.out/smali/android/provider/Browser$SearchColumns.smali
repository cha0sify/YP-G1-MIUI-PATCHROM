.class public Landroid/provider/Browser$SearchColumns;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Browser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchColumns"
.end annotation


# static fields
.field public static final DATE:Ljava/lang/String; = "date"

.field public static final SEARCH:Ljava/lang/String; = "search"

.field public static final URL:Ljava/lang/String; = "url"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 701
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
