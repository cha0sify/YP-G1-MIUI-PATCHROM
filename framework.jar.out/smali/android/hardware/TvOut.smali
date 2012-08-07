.class public Landroid/hardware/TvOut;
.super Ljava/lang/Object;
.source "TvOut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/TvOut$EventHandler;
    }
.end annotation


# static fields
.field private static final ITVOUT:Ljava/lang/String; = "android.hardware.tvout"

.field private static final LOG:Z = true

.field private static final TAG:Ljava/lang/String; = "TvOut-Client"

.field private static final TVOUT_COMPLETE:I = 0x2

.field private static final TVOUT_NOP:I = 0x0

.field private static final TVOUT_PREPARED:I = 0x1


# instance fields
.field private mEventHandler:Landroid/hardware/TvOut$EventHandler;

.field private mListenerContext:I

.field private mNativeContext:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string/jumbo v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/TvOut;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 62
    const-string v0, "TvOut-Client"

    const-string v0, "TvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Landroid/hardware/TvOut;->_native_setup(Ljava/lang/Object;)V

    .line 64
    const-string v0, "TvOut-Client"

    const-string v0, "TvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method private native _DisableTvOut()V
.end method

.method private native _EnableTvOut()V
.end method

.method private native _SetOrientation(I)V
.end method

.method private native _SetTvScreenSize(I)V
.end method

.method private native _SetTvSystem(I)V
.end method

.method private native _SetTvoutHdmiDualStatus(I)V
.end method

.method private native _SetTvoutHdmiStatus(I)Z
.end method

.method private native _TvOutDisableHDMISubtitleOn(I)V
.end method

.method private native _TvOutEnableHDMISubtitleOn(I)Z
.end method

.method private native _TvOutHdmiSuspend(Ljava/lang/String;)V
.end method

.method private native _TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;)V
.end method

.method private native _TvOutPostHDMISubtitle(Ljava/lang/String;)V
.end method

.method private native _TvOutResume(I)V
.end method

.method private native _TvOutSetImageString(Ljava/lang/String;)V
.end method

.method private native _TvOutSuspend(Ljava/lang/String;)V
.end method

.method private native _TvoutSubtitleIsEnable()Z
.end method

.method private native _TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z
.end method

.method private native _TvoutSubtitleSetStatus(I)Z
.end method

.method private native _fwHdmiStatus(I)V
.end method

.method private native _getHDCPStatus()Z
.end method

.method private native _getSubtitleHDMIHeight()I
.end method

.method private native _getSubtitleHDMIWidth()I
.end method

.method private native _isEnabled()Z
.end method

.method private native _isHDMISubtitleOn()Z
.end method

.method private native _isHdmiCableConnected()Z
.end method

.method private native _isHdmiDualEnabled()Z
.end method

.method private native _isHdmiEnabled()Z
.end method

.method private native _isHdmiSuspended()Z
.end method

.method private native _isSuspended()Z
.end method

.method private native _isTvoutCableConnected()Z
.end method

.method private final native _native_setup(Ljava/lang/Object;)V
.end method

.method private final native _release()V
.end method

.method private native _setHdmiCableConnected(I)V
.end method

.method private native _setTvoutCableConnected(I)V
.end method

.method static synthetic access$000(Landroid/hardware/TvOut;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Landroid/hardware/TvOut;->mNativeContext:I

    return v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .parameter "tvout_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    const-string v3, "TvOut-Client"

    .line 148
    const-string v2, "TvOut-Client"

    const-string/jumbo v2, "postEventFromNative +"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/TvOut;

    .line 150
    .local v1, tvout:Landroid/hardware/TvOut;
    if-nez v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    if-eqz v2, :cond_1

    .line 155
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/TvOut$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    invoke-virtual {v2, v0}, Landroid/hardware/TvOut$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .end local v0           #m:Landroid/os/Message;
    :cond_1
    const-string v2, "TvOut-Client"

    const-string/jumbo v2, "postEventFromNative -"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public DisableTvOut()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 194
    const-string v0, "TvOut-Client"

    const-string v0, "DisableTvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Landroid/hardware/TvOut;->_DisableTvOut()V

    .line 196
    const-string v0, "TvOut-Client"

    const-string v0, "DisableTvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public EnableTvOut()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 175
    const-string v0, "TvOut-Client"

    const-string v0, "EnableTvOut +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Landroid/hardware/TvOut;->_EnableTvOut()V

    .line 177
    const-string v0, "TvOut-Client"

    const-string v0, "EnableTvOut -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method public SetOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    const-string v1, "TvOut-Client"

    .line 287
    const-string v0, "TvOut-Client"

    const-string v0, "SetOrientation +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetOrientation(I)V

    .line 289
    const-string v0, "TvOut-Client"

    const-string v0, "SetOrientation -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method public SetTvScreenSize(I)V
    .locals 2
    .parameter "screen"

    .prologue
    const-string v1, "TvOut-Client"

    .line 249
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvScreenSize +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvScreenSize(I)V

    .line 251
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvScreenSize -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method

.method public SetTvSystem(I)V
    .locals 2
    .parameter "system"

    .prologue
    const-string v1, "TvOut-Client"

    .line 266
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvSystem +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvSystem(I)V

    .line 268
    const-string v0, "TvOut-Client"

    const-string v0, "SetTvSystem -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return-void
.end method

.method public SetTvoutHdmiDualStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvoutHdmiDualStatus(I)V

    .line 488
    return-void
.end method

.method public SetTvoutHdmiStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 407
    const-string v0, "TvOut-Client"

    const-string v1, "SetTvoutHdmiStatus +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_SetTvoutHdmiStatus(I)Z

    move-result v0

    return v0
.end method

.method public TvOutDisableHDMISubtitleOn(I)V
    .locals 2
    .parameter "mSubTitleOn"

    .prologue
    .line 469
    const-string v0, "TvOut-Client"

    const-string v1, "TvOutDisableHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutDisableHDMISubtitleOn(I)V

    .line 471
    return-void
.end method

.method public TvOutEnableHDMISubtitleOn(I)Z
    .locals 2
    .parameter "mSubTitleOn"

    .prologue
    .line 449
    const-string v0, "TvOut-Client"

    const-string v1, "TvOutEnableHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutEnableHDMISubtitleOn(I)Z

    move-result v0

    return v0
.end method

.method public TvOutHdmiSuspend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "tvText"

    .prologue
    const-string v4, "TvOut-Client"

    .line 317
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutHdmiSuspend +"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const v2, 0x1040468

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, text:Ljava/lang/String;
    const-string v2, "TvOut-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvOutHdmiSuspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 321
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, "TvOut-Client"

    const-string v2, "drawText succeeded "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 324
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutHdmiSuspend(Ljava/lang/String;)V

    .line 332
    :goto_0
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutHdmiSuspend -"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 330
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutHdmiSuspend(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "chroma_key"

    .prologue
    .line 476
    const-string v0, "TvOut-Client"

    const-string v1, "TvOutPostHDMIBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    return-void
.end method

.method public TvOutPostHDMISubtitle(Ljava/lang/String;)V
    .locals 2
    .parameter "mSubTitleText"

    .prologue
    .line 456
    const-string v0, "TvOut-Client"

    const-string v1, "TvOutPostHDMISubtitle"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutPostHDMISubtitle(Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public TvOutResume(I)V
    .locals 2
    .parameter "tvoutTime"

    .prologue
    const-string v1, "TvOut-Client"

    .line 338
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutResume +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutResume(I)V

    .line 340
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutResume -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-void
.end method

.method public TvOutSetImageString(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    const-string v1, "TvOut-Client"

    .line 359
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutSetImageString +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 361
    const-string v0, "TvOut-Client"

    const-string v0, "TvOutSetImageString -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void
.end method

.method public TvOutSuspend(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "tvText"

    .prologue
    const-string v4, "TvOut-Client"

    .line 296
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutSuspend +"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const v2, 0x10403e1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, text:Ljava/lang/String;
    const-string v2, "TvOut-Client"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvOutSuspend "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 300
    .local v0, resources:Landroid/content/res/Resources;
    const-string v2, "TvOut-Client"

    const-string v2, "drawText succeeded "

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-direct {p0, v1}, Landroid/hardware/TvOut;->_TvOutSetImageString(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    .line 311
    :goto_0
    const-string v2, "TvOut-Client"

    const-string v2, "TvOutSuspend -"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 309
    :cond_0
    invoke-direct {p0, p2}, Landroid/hardware/TvOut;->_TvOutSuspend(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public TvoutSubtitleGetHeight()I
    .locals 1

    .prologue
    .line 497
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public TvoutSubtitleGetWidth()I
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method public TvoutSubtitleIsEnable()Z
    .locals 2

    .prologue
    .line 429
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitleIsEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-direct {p0}, Landroid/hardware/TvOut;->_TvoutSubtitleIsEnable()Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z
    .locals 2
    .parameter "bitmap"
    .parameter "chromakey"

    .prologue
    .line 442
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitlePostBitmap"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, p1, p2}, Landroid/hardware/TvOut;->_TvoutSubtitlePostBitmap(Landroid/graphics/Bitmap;I)Z

    move-result v0

    return v0
.end method

.method public TvoutSubtitleSetStatus(I)Z
    .locals 2
    .parameter "status"

    .prologue
    .line 435
    const-string v0, "TvOut-Client"

    const-string v1, "TvoutSubtitleSetStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_TvoutSubtitleSetStatus(I)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 69
    const-string v0, "TvOut-Client"

    const-string v0, "finalize +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 71
    const-string v0, "TvOut-Client"

    const-string v0, "finalize -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public fwHdmiStatus(I)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 241
    const-string v0, "TvOut-Client"

    const-string v1, "fwHdmiStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_fwHdmiStatus(I)V

    .line 244
    return-void
.end method

.method public getHDCPStatus()Z
    .locals 2

    .prologue
    .line 234
    const-string v0, "TvOut-Client"

    const-string v1, "getHDCPStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getHDCPStatus()Z

    move-result v0

    return v0
.end method

.method public getSubtitleHDMIHeight()I
    .locals 1

    .prologue
    .line 507
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIHeight()I

    move-result v0

    return v0
.end method

.method public getSubtitleHDMIWidth()I
    .locals 1

    .prologue
    .line 502
    invoke-direct {p0}, Landroid/hardware/TvOut;->_getSubtitleHDMIWidth()I

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isEnabled()Z

    move-result v0

    return v0
.end method

.method public isHDMISubtitleOn()Z
    .locals 2

    .prologue
    .line 462
    const-string v0, "TvOut-Client"

    const-string v1, "isHDMISubtitleOn"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHDMISubtitleOn()Z

    move-result v0

    return v0
.end method

.method public isHdmiCableConnected()Z
    .locals 2

    .prologue
    .line 400
    const-string v0, "TvOut-Client"

    const-string v1, "isHdmiCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiCableConnected()Z

    move-result v0

    return v0
.end method

.method public isHdmiDualEnabled()Z
    .locals 1

    .prologue
    .line 482
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiDualEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiEnabled()Z
    .locals 2

    .prologue
    .line 369
    const-string v0, "TvOut-Client"

    const-string v1, "isHdmiEnabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiEnabled()Z

    move-result v0

    return v0
.end method

.method public isHdmiSuspended()Z
    .locals 2

    .prologue
    .line 384
    const-string v0, "TvOut-Client"

    const-string v1, "isHdmiSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isHdmiSuspended()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 2

    .prologue
    .line 376
    const-string v0, "TvOut-Client"

    const-string v1, "isSuspended"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isSuspended()Z

    move-result v0

    return v0
.end method

.method public isTvoutCableConnected()Z
    .locals 2

    .prologue
    .line 392
    const-string v0, "TvOut-Client"

    const-string v1, "isTvoutCableConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Landroid/hardware/TvOut;->_isTvoutCableConnected()Z

    move-result v0

    return v0
.end method

.method public newRequest()Landroid/os/Parcel;
    .locals 3

    .prologue
    const-string v2, "TvOut-Client"

    .line 85
    const-string v1, "TvOut-Client"

    const-string v1, "newRequest +"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 87
    .local v0, parcel:Landroid/os/Parcel;
    const-string v1, "android.hardware.tvout"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 88
    const-string v1, "TvOut-Client"

    const-string v1, "newRequest -"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const-string v1, "TvOut-Client"

    .line 112
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "release +"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0}, Landroid/hardware/TvOut;->_release()V

    .line 114
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "release -"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const-string v2, "TvOut-Client"

    .line 99
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "reset +"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Landroid/hardware/TvOut;->mEventHandler:Landroid/hardware/TvOut$EventHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/TvOut$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 102
    const-string v0, "TvOut-Client"

    const-string/jumbo v0, "reset -"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public setHdmiCableConnected(I)V
    .locals 2
    .parameter "hdmiCableConnected"

    .prologue
    .line 421
    const-string v0, "TvOut-Client"

    const-string/jumbo v1, "setHdmiCableConnected +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setHdmiCableConnected(I)V

    .line 423
    return-void
.end method

.method public setTvoutCableConnected(I)V
    .locals 2
    .parameter "tvoutCableConnected"

    .prologue
    .line 414
    const-string v0, "TvOut-Client"

    const-string/jumbo v1, "setTvoutCableConnected +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-direct {p0, p1}, Landroid/hardware/TvOut;->_setTvoutCableConnected(I)V

    .line 416
    return-void
.end method
