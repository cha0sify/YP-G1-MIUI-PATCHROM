.class public Landroid/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"


# static fields
.field private static final ALARM_VOLUME_TEXT:I = 0x10403b7

.field private static final BEEP_DURATION:I = 0x96

.field private static final BLUETOOTH_INCALL_VOLUME_TEXT:I = 0x10403b6

.field private static final FM_VOLUME_TEXT:I = 0x10403b2

.field private static final FREE_DELAY:I = 0x2710

.field private static final INCALL_VOLUME_TEXT:I = 0x10403b5

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field private static final MUSIC_VOLUME_TEXT:I = 0x10403b1

.field private static final NOTIFICATION_VOLUME_TEXT:I = 0x10403b8

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final RINGTONE_VOLUME_TEXT:I = 0x10403b0

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final UNKNOWN_VOLUME_TEXT:I = 0x10403b9

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c

.field static final WARNING_PREV_VOLUME:I = 0x1a

.field static final WARNING_VOLUME:I = 0x1b

.field static getCurrentVol:I

.field static mFlag_isMusic:Z

.field static mFlag_prevol:Z


# instance fields
.field private final mAdditionalMessage:Landroid/widget/TextView;

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mFlag_isFMRadio:Z

.field private final mLargeStreamIcon:Landroid/widget/ImageView;

.field private final mLevel:Landroid/widget/ProgressBar;

.field private final mMessage:Landroid/widget/TextView;

.field private mRingIsSilent:Z

.field private final mSmallStreamIcon:Landroid/widget/ImageView;

.field private final mToast:Landroid/widget/Toast;

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mView:Landroid/view/View;

.field private final mWarningMessage:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-boolean v0, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 51
    sput v0, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 52
    sput-boolean v0, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 54
    sput-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 4
    .parameter "context"
    .parameter "volumeService"

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 83
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 115
    iput-object p1, p0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 116
    const-string v2, "audio"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    iput-object p2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 118
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    .line 120
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 122
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090072

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    .line 123
    .local v1, view:Landroid/view/View;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    .line 124
    const v2, 0x102024a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    .line 126
    const v2, 0x102024d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    .line 127
    const v2, 0x1020249

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    .line 128
    const v2, 0x102024b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    .line 129
    const v2, 0x102024c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    .line 131
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    new-array v2, v2, [Landroid/media/ToneGenerator;

    iput-object v2, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 132
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    .line 133
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 3
    .parameter "streamType"

    .prologue
    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x64

    invoke-direct {v1, p1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v1, v0, p1

    monitor-exit p0

    move-object v0, v1

    .line 397
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v0, v0, p1

    monitor-exit p0

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setLargeIcon(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 422
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 424
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 425
    return-void
.end method

.method private setRingerIcon()V
    .locals 5

    .prologue
    .line 432
    iget-object v2, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    iget-object v2, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v2}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 438
    .local v1, ringerMode:I
    sget-boolean v2, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v2, :cond_0

    const-string v2, "VolumePanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerIcon(), ringerMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    if-nez v1, :cond_1

    .line 441
    const v0, 0x10801e5

    .line 447
    .local v0, icon:I
    :goto_0
    iget-object v2, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 448
    return-void

    .line 442
    .end local v0           #icon:I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 443
    const v0, 0x10801e0

    .restart local v0       #icon:I
    goto :goto_0

    .line 445
    .end local v0           #icon:I
    :cond_2
    const v0, 0x10801e2

    .restart local v0       #icon:I
    goto :goto_0
.end method

.method private setSmallIcon(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 408
    iget-object v0, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 409
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 411
    iget-object v0, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const v1, 0x10801e6

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 414
    return-void

    .line 411
    :cond_0
    const v1, 0x10801e7

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 468
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 496
    :goto_0
    return-void

    .line 471
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onVolumeChanged(II)V

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 486
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Landroid/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v1, p0, Landroid/view/VolumePanel;->mSmallStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v1, p0, Landroid/view/VolumePanel;->mLargeStreamIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 456
    monitor-enter p0

    .line 457
    :try_start_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 458
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 461
    :cond_0
    iget-object v1, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 457
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 463
    :cond_1
    monitor-exit p0

    .line 464
    return-void

    .line 463
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 352
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 355
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 358
    :cond_0
    monitor-enter p0

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 360
    .local v0, toneGen:Landroid/media/ToneGenerator;
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 361
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    invoke-virtual {p0, v2}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 364
    return-void

    .line 361
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected onShowVolumeChanged(II)V
    .locals 18
    .parameter "streamType"
    .parameter "flags"

    .prologue
    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v5

    .line 171
    .local v5, index:I
    const v10, 0x10403b9

    .line 172
    .local v10, message:I
    const/4 v4, 0x0

    .line 173
    .local v4, additionalMessage:I
    const/4 v13, 0x0

    .line 174
    .local v13, warningMessage:I
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    .line 176
    const/4 v8, 0x0

    .line 178
    .local v8, mWarningVol:I
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_0

    .line 179
    const-string v14, "VolumePanel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "onShowVolumeChanged(streamType: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", flags: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "), index: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v9

    .line 186
    .local v9, max:I
    packed-switch p1, :pswitch_data_0

    .line 303
    :cond_1
    :goto_0
    :pswitch_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 304
    .local v11, messageString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_2
    if-nez v4, :cond_f

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/ProgressBar;->getMax()I

    move-result v14

    if-eq v9, v14, :cond_3

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14, v9}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 318
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mLevel:Landroid/widget/ProgressBar;

    move-object v14, v0

    invoke-virtual {v14, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 320
    sget-boolean v14, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    move v14, v0

    if-eqz v14, :cond_10

    .line 321
    :cond_4
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_5

    .line 322
    const-string v14, "VolumePanel"

    const-string v15, "mFlag_isMusic == true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_5
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_6

    .line 324
    const-string v14, "VolumePanel"

    const-string v15, "Show Waring Toast"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_6
    const v13, 0x1040497

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    const/4 v14, 0x0

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 328
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 336
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mView:Landroid/view/View;

    move-object v15, v0

    invoke-virtual {v14, v15}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/Toast;->setDuration(I)V

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    const/16 v15, 0x30

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/widget/Toast;->setGravity(III)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mToast:Landroid/widget/Toast;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 342
    and-int/lit8 v14, p2, 0x10

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    move-object v0, v14

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioService;->getRingerMode()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 346
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v15, 0x12c

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 348
    :cond_7
    return-void

    .line 189
    .end local v11           #messageString:Ljava/lang/String;
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/view/VolumePanel;->setRingerIcon()V

    .line 190
    const v10, 0x10403b0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-static {v14, v15}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    .line 193
    .local v12, ringuri:Landroid/net/Uri;
    if-nez v12, :cond_1

    .line 194
    const v4, 0x10403b4

    .line 196
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 210
    .end local v12           #ringuri:Landroid/net/Uri;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    sput v14, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioManager;->getWarningVolume()I

    move-result v8

    .line 213
    const-string v14, "audioParam;curDevice"

    invoke-static {v14}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 214
    .local v6, isMusicHPH:Ljava/lang/String;
    const-string v14, "VolumePanel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[VOL] onShowVolumeChanged"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    sget v14, Landroid/view/VolumePanel;->getCurrentVol:I

    const/16 v15, 0x1a

    if-ne v14, v15, :cond_9

    .line 216
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_8

    .line 217
    const-string v14, "VolumePanel"

    const-string v15, "kdh debug line-1"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_8
    const/4 v14, 0x1

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 222
    :cond_9
    sget v14, Landroid/view/VolumePanel;->getCurrentVol:I

    if-ne v14, v8, :cond_b

    sget-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_b

    const-string v14, "HPH"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 224
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_a

    .line 225
    const-string v14, "VolumePanel"

    const-string v15, "kdh debug line-2"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_a
    const/4 v14, 0x1

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_isMusic:Z

    .line 227
    const/4 v14, 0x0

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 229
    :cond_b
    const v10, 0x10403b1

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 231
    const v4, 0x10403b3

    .line 232
    const v14, 0x10801e3

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 234
    :cond_c
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 240
    .end local v6           #isMusicHPH:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v14

    sput v14, Landroid/view/VolumePanel;->getCurrentVol:I

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioManager;->getWarningVolume()I

    move-result v8

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/media/AudioManager;->isRadioSpeakerOn()Z

    move-result v7

    .line 243
    .local v7, isSpeakerOn:Z
    sget v14, Landroid/view/VolumePanel;->getCurrentVol:I

    const/16 v15, 0x1a

    if-ne v14, v15, :cond_d

    .line 244
    const/4 v14, 0x1

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 246
    :cond_d
    if-nez v7, :cond_e

    sget v14, Landroid/view/VolumePanel;->getCurrentVol:I

    if-ne v14, v8, :cond_e

    sget-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e

    .line 247
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mFlag_isFMRadio:Z

    .line 248
    const/4 v14, 0x0

    sput-boolean v14, Landroid/view/VolumePanel;->mFlag_prevol:Z

    .line 251
    :cond_e
    const v10, 0x10403b2

    .line 252
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 263
    .end local v7           #isSpeakerOn:Z
    :pswitch_4
    add-int/lit8 v5, v5, 0x1

    .line 264
    add-int/lit8 v9, v9, 0x1

    .line 265
    const v10, 0x10403b5

    .line 266
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 271
    :pswitch_5
    const v10, 0x10403b7

    .line 272
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    goto/16 :goto_0

    .line 277
    :pswitch_6
    const v10, 0x10403b8

    .line 278
    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setSmallIcon(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mContext:Landroid/content/Context;

    move-object v14, v0

    const/4 v15, 0x2

    invoke-static {v14, v15}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v12

    .line 281
    .restart local v12       #ringuri:Landroid/net/Uri;
    if-nez v12, :cond_1

    .line 282
    const v4, 0x10403b4

    .line 284
    const/4 v14, 0x1

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_0

    .line 295
    .end local v12           #ringuri:Landroid/net/Uri;
    :pswitch_7
    add-int/lit8 v5, v5, 0x1

    .line 296
    add-int/lit8 v9, v9, 0x1

    .line 297
    const v10, 0x10403b6

    .line 298
    const v14, 0x10801e4

    move-object/from16 v0, p0

    move v1, v14

    invoke-direct {v0, v1}, Landroid/view/VolumePanel;->setLargeIcon(I)V

    goto/16 :goto_0

    .line 311
    .restart local v11       #messageString:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mAdditionalMessage:Landroid/widget/TextView;

    move-object v14, v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 331
    :cond_10
    sget-boolean v14, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v14, :cond_11

    .line 332
    const-string v14, "VolumePanel"

    const-string v15, "mFlag_isMusic != true"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VolumePanel;->mWarningMessage:Landroid/widget/TextView;

    move-object v14, v0

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 370
    .local v1, numStreamTypes:I
    const/4 v3, 0x1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 371
    iget-object v3, p0, Landroid/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 372
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 373
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 370
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 376
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 377
    return-void

    .line 376
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 382
    iget-object v0, p0, Landroid/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Landroid/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(II)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 148
    sget-boolean v0, Landroid/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_1

    .line 151
    invoke-virtual {p0, p1, p2}, Landroid/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 154
    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_2

    .line 155
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 156
    invoke-virtual {p0, v3, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 159
    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {p0, v3}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 161
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 162
    invoke-virtual {p0}, Landroid/view/VolumePanel;->onStopSounds()V

    .line 165
    :cond_3
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 166
    invoke-virtual {p0, v4}, Landroid/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 167
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 2
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 136
    invoke-virtual {p0, v1}, Landroid/view/VolumePanel;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/VolumePanel;->removeMessages(I)V

    .line 138
    invoke-virtual {p0, v1, p1, p2}, Landroid/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
