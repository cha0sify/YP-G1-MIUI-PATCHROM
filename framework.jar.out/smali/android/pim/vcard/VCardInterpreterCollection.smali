.class public final Landroid/pim/vcard/VCardInterpreterCollection;
.super Ljava/lang/Object;
.source "VCardInterpreterCollection.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# instance fields
.field private final mInterpreterCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, interpreterCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/pim/vcard/VCardInterpreter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    .line 33
    return-void
.end method


# virtual methods
.method public end()V
    .locals 3

    .prologue
    .line 46
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 47
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->end()V

    goto :goto_0

    .line 49
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public endEntry()V
    .locals 3

    .prologue
    .line 58
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 59
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->endEntry()V

    goto :goto_0

    .line 61
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public endProperty()V
    .locals 3

    .prologue
    .line 70
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 71
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->endProperty()V

    goto :goto_0

    .line 73
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public getCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/pim/vcard/VCardInterpreter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    return-object v0
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 3
    .parameter "group"

    .prologue
    .line 76
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 77
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyGroup(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 82
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 83
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyName(Ljava/lang/String;)V

    goto :goto_0

    .line 85
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 88
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 89
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamType(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 3
    .parameter "value"

    .prologue
    .line 94
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 95
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyParamValue(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 101
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;)V

    goto :goto_0

    .line 103
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public propertyValues(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 107
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 108
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0, p1, p2}, Landroid/pim/vcard/VCardInterpreter;->propertyValues(Ljava/util/List;Landroid/content/Context;)V

    goto :goto_0

    .line 110
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 40
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 41
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->start()V

    goto :goto_0

    .line 43
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public startEntry()V
    .locals 3

    .prologue
    .line 52
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 53
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->startEntry()V

    goto :goto_0

    .line 55
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method

.method public startProperty()V
    .locals 3

    .prologue
    .line 64
    iget-object v2, p0, Landroid/pim/vcard/VCardInterpreterCollection;->mInterpreterCollection:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardInterpreter;

    .line 65
    .local v0, builder:Landroid/pim/vcard/VCardInterpreter;
    invoke-interface {v0}, Landroid/pim/vcard/VCardInterpreter;->startProperty()V

    goto :goto_0

    .line 67
    .end local v0           #builder:Landroid/pim/vcard/VCardInterpreter;
    :cond_0
    return-void
.end method
