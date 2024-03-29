.class public Lcom/broadcom/bt/service/bpp/BppIntent;
.super Ljava/lang/Object;
.source "BppIntent.java"


# static fields
.field public static final EXTRA_CONTENT_HEIGHT:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.CONTENT_HEIGHT"

.field public static final EXTRA_CONTENT_NAME:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.CONTENT_NAME"

.field public static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.CONTENT_TYPE"

.field public static final EXTRA_CONTENT_URI:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.CONTENT_URI"

.field public static final EXTRA_CONTENT_WIDTH:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.CONTENT_WIDTH"

.field public static final EXTRA_SECONDARY_CONTENT_URI:Ljava/lang/String; = "com.broadcom.bt.service.bpp.print.extra.SECONDARY_CONTENT_URI"

.field public static final MULTI_PRINT_ACTION:Ljava/lang/String; = "com.broadcom.bt.service.bpp.action.MULTI_PRINT"

.field public static final PRINT_ACTION:Ljava/lang/String; = "com.broadcom.bt.service.bpp.action.PRINT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPrintAction(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;FF)Landroid/content/Intent;
    .locals 3
    .parameter "contentType"
    .parameter "contentName"
    .parameter "contentUri"
    .parameter "secondaryContentUri"
    .parameter "imageHeight"
    .parameter "imageWidth"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.service.bpp.action.PRINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_TYPE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_URI"

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.SECONDARY_CONTENT_URI"

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 50
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_HEIGHT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 51
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_WIDTH"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public static createPrintAction(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .local p1, heightList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, widthList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.broadcom.bt.service.bpp.action.MULTI_PRINT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_URI"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 61
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_HEIGHT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 62
    const-string v1, "com.broadcom.bt.service.bpp.print.extra.CONTENT_WIDTH"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 63
    return-object v0
.end method
