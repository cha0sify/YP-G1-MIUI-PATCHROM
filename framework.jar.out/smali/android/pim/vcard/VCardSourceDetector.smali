.class public Landroid/pim/vcard/VCardSourceDetector;
.super Ljava/lang/Object;
.source "VCardSourceDetector.java"

# interfaces
.implements Landroid/pim/vcard/VCardInterpreter;


# static fields
.field private static APPLE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static FOMA_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "VCardSourceDetector"

.field private static final PARSE_TYPE_APPLE:I = 0x1

.field private static final PARSE_TYPE_DOCOMO_TORELATE_NEST:I = 0x3

.field private static final PARSE_TYPE_MOBILE_PHONE_JP:I = 0x2

.field public static final PARSE_TYPE_UNKNOWN:I = 0x0

.field private static final PARSE_TYPE_WINDOWS_MOBILE_V65_JP:I = 0x4

.field private static TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

.field private static WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNeedToParseCharset:Z

.field private mNeedToParseVersion:Z

.field private mParseType:I

.field private mSpecifiedCharset:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-PHONETIC-FIRST-NAME"

    aput-object v2, v1, v3

    const-string v2, "X-PHONETIC-MIDDLE-NAME"

    aput-object v2, v1, v4

    const-string v2, "X-PHONETIC-LAST-NAME"

    aput-object v2, v1, v5

    const-string v2, "X-ABADR"

    aput-object v2, v1, v6

    const-string v2, "X-ABUID"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-GNO"

    aput-object v2, v1, v3

    const-string v2, "X-GN"

    aput-object v2, v1, v4

    const-string v2, "X-REDUCTION"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "X-MICROSOFT-ASST_TEL"

    aput-object v2, v1, v3

    const-string v2, "X-MICROSOFT-ASSISTANT"

    aput-object v2, v1, v4

    const-string v2, "X-MICROSOFT-OFFICELOC"

    aput-object v2, v1, v5

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "X-SD-VERN"

    aput-object v2, v1, v3

    const-string v2, "X-SD-FORMAT_VER"

    aput-object v2, v1, v4

    const-string v2, "X-SD-CATEGORIES"

    aput-object v2, v1, v5

    const-string v2, "X-SD-CLASS"

    aput-object v2, v1, v6

    const-string v2, "X-SD-DCREATED"

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const-string v3, "X-SD-DESCRIPTION"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/pim/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    .line 61
    const-string v0, "X-SD-CHAR_CODE"

    sput-object v0, Landroid/pim/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    .line 81
    iput-boolean v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseVersion:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    return-void
.end method


# virtual methods
.method public end()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public endEntry()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public endProperty()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public getEstimatedCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    .line 221
    :goto_0
    return-object v0

    .line 213
    :cond_0
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :pswitch_0
    const-string v0, "SHIFT_JIS"

    goto :goto_0

    .line 219
    :pswitch_1
    const-string v0, "UTF-8"

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getEstimatedType()I
    .locals 2

    .prologue
    .line 181
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    packed-switch v0, :pswitch_data_0

    .line 189
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    if-nez v0, :cond_0

    .line 190
    const/high16 v0, -0x4000

    .line 196
    :goto_0
    return v0

    .line 183
    :pswitch_0
    const v0, 0x39000008

    goto :goto_0

    .line 185
    :pswitch_1
    const v0, 0x18000008

    goto :goto_0

    .line 191
    :cond_0
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 192
    const v0, -0x3fffffff

    goto :goto_0

    .line 193
    :cond_1
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 194
    const v0, -0x3ffffffe

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 181
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public propertyGroup(Ljava/lang/String;)V
    .locals 0
    .parameter "group"

    .prologue
    .line 109
    return-void
.end method

.method public propertyName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 112
    const-string v0, "VERSION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iput-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseVersion:Z

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    sget-object v0, Landroid/pim/vcard/VCardSourceDetector;->TYPE_FOMA_CHARSET_SIGN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iput v2, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    .line 118
    iput-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseCharset:Z

    goto :goto_0

    .line 121
    :cond_2
    iget v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Landroid/pim/vcard/VCardSourceDetector;->WINDOWS_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_0

    .line 126
    :cond_3
    sget-object v0, Landroid/pim/vcard/VCardSourceDetector;->FOMA_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 127
    iput v2, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_0

    .line 128
    :cond_4
    sget-object v0, Landroid/pim/vcard/VCardSourceDetector;->JAPANESE_MOBILE_PHONE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_0

    .line 130
    :cond_5
    sget-object v0, Landroid/pim/vcard/VCardSourceDetector;->APPLE_SIGNS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iput v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mParseType:I

    goto :goto_0
.end method

.method public propertyParamType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 136
    return-void
.end method

.method public propertyParamValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 139
    return-void
.end method

.method public propertyValues(Ljava/util/List;)V
    .locals 4
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
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 142
    iget-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseVersion:Z

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 143
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    .local v0, versionString:Ljava/lang/String;
    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iput v2, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    .line 156
    .end local v0           #versionString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 146
    .restart local v0       #versionString:Ljava/lang/String;
    :cond_1
    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    const/4 v1, 0x1

    iput v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 148
    :cond_2
    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 149
    const/4 v1, 0x2

    iput v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 151
    :cond_3
    const-string v1, "VCardSourceDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 153
    .end local v0           #versionString:Ljava/lang/String;
    :cond_4
    iget-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseCharset:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 154
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public propertyValues(Ljava/util/List;Landroid/content/Context;)V
    .locals 4
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
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 160
    iget-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseVersion:Z

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 161
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, versionString:Ljava/lang/String;
    const-string v1, "2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iput v2, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    .line 174
    .end local v0           #versionString:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 164
    .restart local v0       #versionString:Ljava/lang/String;
    :cond_1
    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    const/4 v1, 0x1

    iput v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 166
    :cond_2
    const-string v1, "4.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    const/4 v1, 0x2

    iput v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mVersion:I

    goto :goto_0

    .line 169
    :cond_3
    const-string v1, "VCardSourceDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    .end local v0           #versionString:Ljava/lang/String;
    :cond_4
    iget-boolean v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseCharset:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardSourceDetector;->mSpecifiedCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public startEntry()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public startProperty()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseCharset:Z

    .line 99
    iput-boolean v0, p0, Landroid/pim/vcard/VCardSourceDetector;->mNeedToParseVersion:Z

    .line 100
    return-void
.end method
