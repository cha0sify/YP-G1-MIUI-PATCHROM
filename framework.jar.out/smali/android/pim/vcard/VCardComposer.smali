.class public Landroid/pim/vcard/VCardComposer;
.super Ljava/lang/Object;
.source "VCardComposer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardComposer$HandlerForOutputStream;,
        Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    }
.end annotation


# static fields
.field private static final CHARSET_EUC_KR:I = 0x1

.field public static final CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri; = null

.field private static final EUC_KR:Ljava/lang/String; = "EUC-KR"

.field public static final FAILURE_REASON_FAILED_TO_GET_DATABASE_INFO:Ljava/lang/String; = "Failed to get database information"

.field public static final FAILURE_REASON_NOT_INITIALIZED:Ljava/lang/String; = "The vCard composer object is not correctly initialized"

.field public static final FAILURE_REASON_NO_ENTRY:Ljava/lang/String; = "There\'s no exportable in the database"

.field public static final FAILURE_REASON_UNSUPPORTED_URI:Ljava/lang/String; = "The Uri vCard composer received is not supported by the composer."

.field private static final LOG_TAG:Ljava/lang/String; = "VCardComposer"

.field public static final NO_ERROR:Ljava/lang/String; = "No error"

.field private static final SHIFT_JIS:Ljava/lang/String; = "SHIFT_JIS"

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final VCARD_TEST_AUTHORITY:Ljava/lang/String; = "com.android.unit_tests.vcard"

.field public static final VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri; = null

.field public static final VCARD_TYPE_STRING_DOCOMO:Ljava/lang/String; = "docomo"

.field private static final sContactsProjection:[Ljava/lang/String;

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCareHandlerErrors:Z

.field private final mCharset:Ljava/lang/String;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mErrorReason:Ljava/lang/String;

.field private final mHandlerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardComposer$OneEntryHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mIdColumn:I

.field private final mIsDoCoMo:Z

.field private mTerminateIsCalled:Z

.field private final mUsesEucKr:Z

.field private final mVCardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    const-string v0, "content://com.android.unit_tests.vcard"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    .line 137
    sget-object v0, Landroid/pim/vcard/VCardComposer;->VCARD_TEST_AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    .line 144
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-AIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-MSN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-YAHOO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-ICQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-JABBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Landroid/pim/vcard/VCardComposer;->sImMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "X-SKYPE-USERNAME"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 286
    sget v0, Landroid/pim/vcard/VCardConfig;->VCARD_TYPE_DEFAULT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 287
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "vcardType"

    .prologue
    .line 293
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 294
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"

    .prologue
    .line 297
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 9
    .parameter "context"
    .parameter "vcardType"
    .parameter "charset"
    .parameter "careHandlerErrors"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "UTF-8"

    const-string v5, "SHIFT_JIS"

    const-string v4, "VCardComposer"

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const-string v2, "No error"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 320
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    .line 321
    iput p2, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    .line 322
    iput-boolean p4, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    .line 325
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isDoCoMo(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    .line 326
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "characterset"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 330
    iput-boolean v7, p0, Landroid/pim/vcard/VCardComposer;->mUsesEucKr:Z

    .line 335
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "UTF-8"

    move-object p3, v8

    .line 336
    :cond_0
    invoke-static {p2}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "UTF-8"

    invoke-virtual {v8, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    move v1, v7

    .line 339
    .local v1, shouldAppendCharsetParam:Z
    :goto_1
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_8

    .line 340
    :cond_2
    const-string v2, "SHIFT_JIS"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 341
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    if-eqz v2, :cond_5

    .line 343
    :try_start_0
    const-string v2, "SHIFT_JIS"

    const-string v3, "docomo"

    invoke-static {v2, v3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 360
    :goto_2
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    .line 406
    :goto_3
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use the charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return-void

    .line 332
    .end local v1           #shouldAppendCharsetParam:Z
    :cond_3
    iput-boolean v6, p0, Landroid/pim/vcard/VCardComposer;->mUsesEucKr:Z

    goto :goto_0

    :cond_4
    move v1, v6

    .line 336
    goto :goto_1

    .line 344
    .restart local v1       #shouldAppendCharsetParam:Z
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 345
    .local v0, e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "DoCoMo-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const-string p3, "SHIFT_JIS"

    .line 349
    goto :goto_2

    .line 352
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_5
    :try_start_1
    const-string v2, "SHIFT_JIS"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_1
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    goto :goto_2

    .line 353
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 354
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "Career-specific SHIFT_JIS was not found. Use SHIFT_JIS as is."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string p3, "SHIFT_JIS"

    goto :goto_2

    .line 362
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_6
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The charset \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is used while "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SHIFT_JIS"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is needed to be used."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 366
    const-string v2, "SHIFT_JIS"

    iput-object v5, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto :goto_3

    .line 369
    :cond_7
    :try_start_2
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_2
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p3

    .line 375
    :goto_4
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_3

    .line 370
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 371
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 378
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_8
    iget-boolean v2, p0, Landroid/pim/vcard/VCardComposer;->mUsesEucKr:Z

    if-eqz v2, :cond_a

    .line 379
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 380
    const-string v2, "EUC-KR"

    iput-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_3

    .line 383
    :cond_9
    :try_start_3
    const-string v2, "EUC-KR"

    invoke-static {v2}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_3
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p3

    .line 389
    :goto_5
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_3

    .line 384
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 385
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    const-string v2, "Career-specific EUC_KR was not found. Use it as is."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 392
    .end local v0           #e:Ljava/nio/charset/UnsupportedCharsetException;
    :cond_a
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 393
    const-string v2, "UTF-8"

    iput-object v8, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_3

    .line 396
    :cond_b
    :try_start_4
    invoke-static {p3}, Landroid/util/CharsetUtils;->charsetForVendor(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_4
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object p3

    .line 402
    :goto_6
    iput-object p3, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    goto/16 :goto_3

    .line 397
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 398
    .restart local v0       #e:Ljava/nio/charset/UnsupportedCharsetException;
    const-string v2, "VCardComposer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Career-specific \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" was not found (as usual). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Use it as is."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .parameter "context"
    .parameter "vcardType"
    .parameter "careHandlerErrors"

    .prologue
    .line 305
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/pim/vcard/VCardComposer;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 306
    return-void
.end method

.method static synthetic access$000(Landroid/pim/vcard/VCardComposer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 103
    iput-object p1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Landroid/pim/vcard/VCardComposer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mIsDoCoMo:Z

    return v0
.end method

.method static synthetic access$300(Landroid/pim/vcard/VCardComposer;Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 23
    .parameter "contactId"
    .parameter "getEntityIteratorMethod"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/pim/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 546
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 551
    .local v12, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    const/16 v16, 0x0

    .line 553
    .local v16, entityIterator:Landroid/content/EntityIterator;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "for_export_only"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 557
    .local v4, uri:Landroid/net/Uri;
    const-string v21, "contact_id=?"

    .line 558
    .local v21, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v7, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 559
    .local v7, selectionArgs:[Ljava/lang/String;
    if-eqz p2, :cond_3

    .line 562
    const/4 v3, 0x0

    const/4 v5, 0x5

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v8, v0

    aput-object v8, v5, v6

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const/4 v4, 0x2

    const-string v6, "contact_id=?"

    .end local v4           #uri:Landroid/net/Uri;
    aput-object v6, v5, v4

    const/4 v4, 0x3

    aput-object v7, v5, v4

    const/4 v4, 0x4

    const/4 v6, 0x0

    aput-object v6, v5, v4

    move-object/from16 v0, p2

    move-object v1, v3

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Landroid/content/EntityIterator;

    move-object/from16 v16, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 584
    :goto_0
    if-nez v16, :cond_4

    .line 585
    :try_start_2
    const-string v3, "VCardComposer"

    const-string v4, "EntityIterator is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 611
    if-eqz v16, :cond_0

    .line 612
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 616
    :cond_0
    :goto_1
    return-object v3

    .line 564
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 565
    .local v13, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalArgumentException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 611
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v13           #e:Ljava/lang/IllegalArgumentException;
    .end local v21           #selection:Ljava/lang/String;
    :catchall_0
    move-exception v3

    if-eqz v16, :cond_1

    .line 612
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    :cond_1
    throw v3

    .line 567
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v21       #selection:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 568
    .local v13, e:Ljava/lang/IllegalAccessException;
    :try_start_4
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IllegalAccessException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 570
    .end local v13           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    move-object v13, v3

    .line 571
    .local v13, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "VCardComposer"

    const-string v4, "InvocationTargetException has been thrown: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v22

    .line 573
    .local v22, stackTraceElements:[Ljava/lang/StackTraceElement;
    move-object/from16 v9, v22

    .local v9, arr$:[Ljava/lang/StackTraceElement;
    move-object v0, v9

    array-length v0, v0

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v17, 0x0

    .local v17, i$:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v14, v9, v17

    .line 574
    .local v14, element:Ljava/lang/StackTraceElement;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 576
    .end local v14           #element:Ljava/lang/StackTraceElement;
    :cond_2
    new-instance v3, Landroid/pim/vcard/exception/VCardException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InvocationTargetException has been thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/pim/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 580
    .end local v9           #arr$:[Ljava/lang/StackTraceElement;
    .end local v13           #e:Ljava/lang/reflect/InvocationTargetException;
    .end local v17           #i$:I
    .end local v19           #len$:I
    .end local v22           #stackTraceElements:[Ljava/lang/StackTraceElement;
    .restart local v4       #uri:Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v3, v0

    const/4 v5, 0x0

    const-string v6, "contact_id=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/ContactsContract$RawContacts;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v16

    goto/16 :goto_0

    .line 589
    .end local v4           #uri:Landroid/net/Uri;
    :cond_4
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 590
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Data does not exist. contactId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 611
    if-eqz v16, :cond_0

    .line 612
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    goto/16 :goto_1

    .line 594
    :cond_5
    :try_start_5
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 595
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/Entity;

    .line 596
    .local v15, entity:Landroid/content/Entity;
    invoke-virtual {v15}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/Entity$NamedContentValues;

    .line 597
    .local v20, namedContentValues:Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    move-object v10, v0

    .line 598
    .local v10, contentValues:Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 599
    .local v18, key:Ljava/lang/String;
    if-eqz v18, :cond_6

    .line 600
    move-object v0, v12

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 602
    .local v11, contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v11, :cond_7

    .line 603
    new-instance v11, Ljava/util/ArrayList;

    .end local v11           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 604
    .restart local v11       #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    move-object v0, v12

    move-object/from16 v1, v18

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_7
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 611
    .end local v10           #contentValues:Landroid/content/ContentValues;
    .end local v11           #contentValuesList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v15           #entity:Landroid/content/Entity;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v18           #key:Ljava/lang/String;
    .end local v20           #namedContentValues:Landroid/content/Entity$NamedContentValues;
    :cond_8
    if-eqz v16, :cond_9

    .line 612
    invoke-interface/range {v16 .. v16}, Landroid/content/EntityIterator;->close()V

    .line 616
    :cond_9
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardComposer;->buildVCard(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method


# virtual methods
.method public addHandler(Landroid/pim/vcard/VCardComposer$OneEntryHandler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 413
    if-eqz p1, :cond_0

    .line 414
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    :cond_0
    return-void
.end method

.method public buildVCard(Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 624
    .local p1, contentValuesListMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Landroid/content/ContentValues;>;>;"
    if-nez p1, :cond_0

    .line 625
    const-string v1, "VCardComposer"

    const-string v2, "The given map is null. Ignore and return empty String"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    const-string v1, ""

    .line 645
    .end local p0
    :goto_0
    return-object v1

    .line 630
    .restart local p0
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardBuilder;

    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    iget-object v2, p0, Landroid/pim/vcard/VCardComposer;->mCharset:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardBuilder;-><init>(ILjava/lang/String;Landroid/content/Context;)V

    .line 631
    .local v0, builder:Landroid/pim/vcard/VCardBuilder;
    const-string/jumbo v1, "vnd.android.cursor.item/name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardBuilder;->appendNameProperties(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/nickname"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendNickNames(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPhones(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/email_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendEmails(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendPostals(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/organization"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendOrganizations(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v2

    const-string/jumbo v1, "vnd.android.cursor.item/website"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Landroid/pim/vcard/VCardBuilder;->appendWebsites(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 638
    iget v1, p0, Landroid/pim/vcard/VCardComposer;->mVCardType:I

    const/high16 v2, 0x80

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 639
    const-string/jumbo v1, "vnd.android.cursor.item/photo"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendPhotos(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 641
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/note"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v0, p0}, Landroid/pim/vcard/VCardBuilder;->appendNotes(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/contact_event"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendEvents(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/im"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendIms(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    move-result-object v1

    const-string/jumbo v2, "vnd.android.cursor.item/relation"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-virtual {v1, p0}, Landroid/pim/vcard/VCardBuilder;->appendRelation(Ljava/util/List;)Landroid/pim/vcard/VCardBuilder;

    .line 645
    invoke-virtual {v0}, Landroid/pim/vcard/VCardBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public createOneEntry()Z
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/pim/vcard/VCardComposer;->createOneEntry(Ljava/lang/reflect/Method;)Z

    move-result v0

    return v0
.end method

.method public createOneEntry(Ljava/lang/reflect/Method;)Z
    .locals 11
    .parameter "getEntityIteratorMethod"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v6, "VCardComposer"

    .line 499
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 500
    :cond_0
    const-string v6, "The vCard composer object is not correctly initialized"

    iput-object v6, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    move v6, v9

    .line 541
    :goto_0
    return v6

    .line 505
    :cond_1
    :try_start_0
    iget v6, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    if-ltz v6, :cond_3

    .line 506
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Landroid/pim/vcard/VCardComposer;->createOneEntryInternal(Ljava/lang/String;Ljava/lang/reflect/Method;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 523
    .local v5, vcard:Ljava/lang/String;
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 527
    iget-boolean v6, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v6, :cond_4

    .line 528
    new-instance v2, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 530
    .local v2, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 531
    .local v3, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    move v6, v9

    .line 532
    goto :goto_0

    .line 509
    .end local v2           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #vcard:Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incorrect mIdColumn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/pim/vcard/exception/VCardException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 523
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto :goto_0

    .line 512
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 513
    .local v0, e:Landroid/pim/vcard/exception/VCardException;
    :try_start_2
    const-string v6, "VCardComposer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "VCardException has been thrown: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/pim/vcard/exception/VCardException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 523
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v9

    goto/16 :goto_0

    .line 515
    .end local v0           #e:Landroid/pim/vcard/exception/VCardException;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 518
    .local v1, error:Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v6, "VCardComposer"

    const-string v7, "OutOfMemoryError occured. Ignore the entry."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move v6, v10

    goto/16 :goto_0

    .end local v1           #error:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v6

    iget-object v7, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    throw v6

    .line 536
    .restart local v5       #vcard:Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 537
    .restart local v3       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v3, v5}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_1

    .end local v3           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_5
    move v6, v10

    .line 541
    goto/16 :goto_0
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 668
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    if-nez v0, :cond_0

    .line 669
    const-string v0, "VCardComposer"

    const-string/jumbo v1, "terminate() is not called yet. We call it in finalize() step."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->terminate()V

    .line 672
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 680
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 681
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    return-object v0
.end method

.method public init()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 423
    invoke-virtual {p0, v0, v0}, Landroid/pim/vcard/VCardComposer;->init(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "contentUri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 435
    if-nez p1, :cond_0

    .line 436
    const/4 v0, 0x0

    .line 487
    :goto_0
    return v0

    .line 439
    :cond_0
    iget-boolean v0, p0, Landroid/pim/vcard/VCardComposer;->mCareHandlerErrors:Z

    if-eqz v0, :cond_3

    .line 440
    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 442
    .local v8, finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 443
    .local v9, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 444
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 445
    .local v7, finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v7}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_1

    .line 447
    .end local v7           #finished:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 452
    .end local v8           #finishedList:Ljava/util/List;,"Ljava/util/List<Landroid/pim/vcard/VCardComposer$OneEntryHandler;>;"
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 453
    .restart local v9       #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContext:Landroid/content/Context;

    invoke-interface {v9, v0}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onInit(Landroid/content/Context;)Z

    goto :goto_2

    .line 458
    .end local v9           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_4
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/pim/vcard/VCardComposer;->CONTACTS_TEST_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    :cond_5
    sget-object v2, Landroid/pim/vcard/VCardComposer;->sContactsProjection:[Ljava/lang/String;

    .line 465
    .local v2, projection:[Ljava/lang/String;
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 468
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_7

    .line 469
    const-string v0, "Failed to get database information"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 470
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    .end local v2           #projection:[Ljava/lang/String;
    :cond_6
    const-string v0, "The Uri vCard composer received is not supported by the composer."

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 463
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 473
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Landroid/pim/vcard/VCardComposer;->getCount()I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_9

    .line 475
    :cond_8
    :try_start_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 480
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    .line 482
    .end local v2           #projection:[Ljava/lang/String;
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 476
    .restart local v2       #projection:[Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 477
    .local v6, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "VCardComposer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SQLiteException on Cursor#close(): "

    .end local v2           #projection:[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 480
    const-string v0, "There\'s no exportable in the database"

    iput-object v0, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    goto :goto_3

    .line 479
    .end local v6           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 480
    const-string v1, "There\'s no exportable in the database"

    iput-object v1, p0, Landroid/pim/vcard/VCardComposer;->mErrorReason:Ljava/lang/String;

    throw v0

    .line 485
    .restart local v2       #projection:[Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/pim/vcard/VCardComposer;->mIdColumn:I

    .line 487
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public init(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 427
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/pim/vcard/VCardComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAfterLast()Z
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 693
    const-string v0, "VCardComposer"

    const-string v1, "This object is not ready yet."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    const/4 v0, 0x0

    .line 696
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    goto :goto_0
.end method

.method public terminate()V
    .locals 6

    .prologue
    .line 650
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mHandlerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/pim/vcard/VCardComposer$OneEntryHandler;

    .line 651
    .local v1, handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    invoke-interface {v1}, Landroid/pim/vcard/VCardComposer$OneEntryHandler;->onTerminate()V

    goto :goto_0

    .line 654
    .end local v1           #handler:Landroid/pim/vcard/VCardComposer$OneEntryHandler;
    :cond_0
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 656
    :try_start_0
    iget-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 660
    :goto_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/pim/vcard/VCardComposer;->mCursor:Landroid/database/Cursor;

    .line 663
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/pim/vcard/VCardComposer;->mTerminateIsCalled:Z

    .line 664
    return-void

    .line 657
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 658
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "VCardComposer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLiteException on Cursor#close(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
