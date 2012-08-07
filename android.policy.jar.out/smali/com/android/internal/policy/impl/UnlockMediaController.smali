.class public Lcom/android/internal/policy/impl/UnlockMediaController;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;
    }
.end annotation


# static fields
.field private static final LONG_PRESSED_WAKELOCK:I = 0x1

.field private static final MUSICPLAYER_CHECK_PLAY_STATUS:Ljava/lang/String; = "com.android.music.musicservicecommand.checkplaystatus"

.field private static final MUSICPLAYER_FF_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.down"

.field private static final MUSICPLAYER_FF_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.ff.up"

.field private static final MUSICPLAYER_NEXT:Ljava/lang/String; = "com.android.music.musicservicecommand.next"

.field private static final MUSICPLAYER_PREVIOUS:Ljava/lang/String; = "com.android.music.musicservicecommand.previous"

.field private static final MUSICPLAYER_REW_DOWN_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.down"

.field private static final MUSICPLAYER_REW_UP_ACTION:Ljava/lang/String; = "com.android.music.musicservicecommand.rew.up"

.field private static final MUSICPLAYER_TOGGLEPAUSE:Ljava/lang/String; = "com.android.music.musicservicecommand.togglepause"

.field private static final SOUND_TOUCH_ID:I = 0x9

.field private static final TAG:Ljava/lang/String; = "UnlockMediaController"

.field private static mOverlayCanvas:Landroid/graphics/Canvas;

.field private static mRect:Landroid/graphics/Rect;

.field public static mScaleBitmap:Landroid/graphics/Bitmap;


# instance fields
.field private final DEBUG:Z

.field protected changeMusic:Z

.field private controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

.field private controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

.field private currentAlbumID:Ljava/lang/String;

.field private currentAlbumTitle:Ljava/lang/String;

.field private currentArtist:Ljava/lang/String;

.field private currentTitle:Ljava/lang/String;

.field private mBeforeButton:Landroid/widget/ImageButton;

.field private mCDHandleLayout:Landroid/widget/RelativeLayout;

.field private mCDImage:Landroid/widget/ImageView;

.field mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mControllerOpened:Z

.field protected mFFLongPressed:Z

.field final mHandler:Landroid/os/Handler;

.field private mIsPlaying:Z

.field private mMainLayout:Landroid/widget/LinearLayout;

.field private mMusicBoxAlbumImage:Landroid/widget/ImageView;

.field private mMusicBoxUpDownAllow:Landroid/widget/ImageView;

.field private mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

.field private mMusicControlBox:Landroid/widget/LinearLayout;

.field private mMusicControllerAnimationDutation:I

.field private mMusicControllerCDImageExposureHeight:I

.field private mMusicControllerCDImageHeight:I

.field private mMusicControllerCDImageWidth:I

.field private mMusicControllerInitYOffset:I

.field private mMusicControllerMaxPullValue:I

.field private mMusicControllerPullYOffset:I

.field private mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

.field private mNextButton:Landroid/widget/ImageButton;

.field private mPath:Landroid/graphics/Path;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPlayFlag:Z

.field protected mREWLongPressed:Z

.field private mTitleTextViewInBox:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 121
    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 122
    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 123
    sput-object v0, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 9
    .parameter "context"
    .parameter "callback"

    .prologue
    const/16 v8, -0x9a

    const/16 v7, 0x190

    const/16 v6, 0xc8

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->DEBUG:Z

    .line 75
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    .line 88
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    .line 98
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    .line 101
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    .line 102
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    .line 103
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    .line 104
    iput-object v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumTitle:Ljava/lang/String;

    .line 106
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->changeMusic:Z

    .line 107
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    .line 194
    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$1;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mHandler:Landroid/os/Handler;

    .line 132
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    .line 133
    iput-object p2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 134
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 135
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109007d

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    .line 138
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 139
    .local v2, params:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 143
    .local v0, densityDpi:I
    sparse-switch v0, :sswitch_data_0

    .line 172
    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    .line 173
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    .line 174
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    .line 175
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    .line 176
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    .line 177
    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    .line 178
    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    .line 183
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->init(Landroid/content/Context;)V

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    .line 186
    return-void

    .line 145
    :sswitch_0
    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    .line 146
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    .line 147
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    .line 148
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    .line 149
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    .line 150
    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    .line 151
    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    .line 154
    :sswitch_1
    iput v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    .line 155
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    .line 156
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    .line 157
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    .line 158
    iput v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    .line 159
    const/16 v3, 0x54

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    .line 160
    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    .line 163
    :sswitch_2
    const/16 v3, -0x4d

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    .line 164
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    .line 165
    iput v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    .line 166
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    .line 167
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    .line 168
    const/16 v3, 0x2a

    iput v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageExposureHeight:I

    .line 169
    iput v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    goto :goto_0

    .line 143
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/UnlockMediaController;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/UnlockMediaController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/UnlockMediaController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/UnlockMediaController;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/UnlockMediaController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerMaxPullValue:I

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const v9, 0x10a0006

    const/high16 v8, 0x42e2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 219
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 220
    .local v0, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iput v6, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 221
    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 222
    iget v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x102028c

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020282

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020286

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    .line 228
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020287

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    .line 229
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020288

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    .line 230
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020285

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    .line 232
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020283

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDHandleLayout:Landroid/widget/RelativeLayout;

    .line 233
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020284

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDHandleLayout:Landroid/widget/RelativeLayout;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$2;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 301
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControlBox:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$3;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$3;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x102028b

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    .line 309
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$4;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$4;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 329
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$5;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$5;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 378
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x1020289

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    .line 381
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$6;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$6;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$7;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/UnlockMediaController$7;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 452
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const v3, 0x102028a

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    .line 453
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/internal/policy/impl/UnlockMediaController$8;

    invoke-direct {v3, p0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController$8;-><init>(Lcom/android/internal/policy/impl/UnlockMediaController;Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    .line 461
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-static {p1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 462
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 463
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 465
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-static {p1, v9}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 467
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerAnimationDutation:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 468
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 471
    const/16 v1, 0x64

    .line 473
    .local v1, radius:I
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    .line 474
    :cond_0
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    if-nez v2, :cond_1

    new-instance v2, Landroid/graphics/Canvas;

    sget-object v3, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    .line 477
    :cond_1
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    .line 478
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 479
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v1

    int-to-float v5, v1

    div-float/2addr v5, v8

    const/high16 v6, 0x42d8

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 480
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 481
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 482
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    int-to-float v3, v1

    int-to-float v4, v1

    int-to-float v5, v1

    div-float/2addr v5, v8

    const/high16 v6, 0x4210

    mul-float/2addr v5, v6

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 483
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 485
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Rect;

    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    invoke-direct {v2, v7, v7, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    .line 487
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803ac

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 488
    return-void
.end method

.method private refreshMediaPlayer()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    .line 530
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 533
    .local v5, newTitleText:Ljava/lang/CharSequence;
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_2

    .line 534
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 538
    :goto_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://media/external/audio/albumart/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 542
    .local v0, currentAlbumArtURI:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 543
    .local v4, mInputStream:Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 545
    .local v2, mAlbumArtBitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 546
    .local v3, mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    iput v8, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 547
    iget v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageWidth:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 548
    iget v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerCDImageHeight:I

    iput v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 551
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v6, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 557
    :goto_1
    if-eqz v4, :cond_0

    .line 558
    invoke-static {v4, v9, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 560
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 564
    :goto_2
    const/4 v4, 0x0

    .line 567
    :cond_0
    if-eqz v2, :cond_3

    .line 570
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    new-instance v7, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->getCDImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 571
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    const v7, 0x10803a9

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 575
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 585
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->invalidate()V

    .line 586
    return-void

    .line 536
    .end local v0           #currentAlbumArtURI:Landroid/net/Uri;
    .end local v2           #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .end local v3           #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .end local v4           #mInputStream:Ljava/io/InputStream;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 561
    .restart local v0       #currentAlbumArtURI:Landroid/net/Uri;
    .restart local v2       #mAlbumArtBitmap:Landroid/graphics/Bitmap;
    .restart local v3       #mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    .restart local v4       #mInputStream:Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 562
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "UnlockMediaController"

    const-string v7, "mInputStream.close() Failed!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 577
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    if-nez v2, :cond_1

    .line 579
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 580
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImage:Landroid/widget/ImageView;

    const v7, 0x10803ab

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 582
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxWithoutAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 552
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method private sendMediaControllerOpen(Z)V
    .locals 1
    .parameter "opened"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;->onControllerOpened(Z)V

    .line 623
    :cond_0
    return-void
.end method

.method private sendTouchDetection()V
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;->onTouchedCD()V

    .line 618
    :cond_0
    return-void
.end method


# virtual methods
.method public getCDImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "image"

    .prologue
    .line 670
    :try_start_0
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 671
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 672
    .local v0, bd:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 673
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mOverlayCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 674
    sget-object v2, Lcom/android/internal/policy/impl/UnlockMediaController;->mScaleBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v0           #bd:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-object v2

    .line 675
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 676
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "UnlockMediaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getMainLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 506
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mTitleTextViewInBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 521
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 526
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 492
    return-void
.end method

.method public playingFlagSet(Z)V
    .locals 0
    .parameter "bIsPlaying"

    .prologue
    .line 636
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mIsPlaying:Z

    .line 637
    return-void
.end method

.method public setControllerVisibility(Z)V
    .locals 2
    .parameter "bIsStop"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 683
    return-void

    .line 682
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnCDImageTouchListener(Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;)V
    .locals 0
    .parameter "imageTouchListener"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mCDImageTouchListener:Lcom/android/internal/policy/impl/UnlockMediaController$CDImageTouchListener;

    .line 627
    return-void
.end method

.method public startControllerAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 650
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 651
    .local v1, width:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    .line 652
    .local v0, height:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v2

    if-gez v2, :cond_0

    .line 653
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    .line 654
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPushAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 655
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerPullYOffset:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 656
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 657
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803aa

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 665
    :goto_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    .line 666
    return-void

    .line 659
    :cond_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    .line 660
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->controllerPullAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 661
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    iget v3, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    iget v4, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicControllerInitYOffset:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v5, v3, v1, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 662
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicMovingBoxLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->forceLayout()V

    .line 663
    iget-object v2, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMusicBoxUpDownAllow:Landroid/widget/ImageView;

    const v3, 0x10803ac

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public startPlaying()V
    .locals 2

    .prologue
    .line 645
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    .line 646
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803c4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 647
    return-void
.end method

.method public stopPlaying()V
    .locals 2

    .prologue
    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPlayFlag:Z

    .line 641
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x10803c5

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 642
    return-void
.end method

.method public updateMediaPlayer(Landroid/net/Uri;)V
    .locals 8
    .parameter "mediaUri"

    .prologue
    const/4 v2, 0x0

    .line 589
    if-nez p1, :cond_0

    .line 611
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 594
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 595
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 597
    :try_start_0
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentTitle:Ljava/lang/String;

    .line 598
    const-string v0, "artist"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentArtist:Ljava/lang/String;

    .line 599
    const-string v0, "album_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumID:Ljava/lang/String;

    .line 600
    const-string v0, "album"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->currentAlbumTitle:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 606
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockMediaController;->refreshMediaPlayer()V

    .line 607
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mControllerOpened:Z

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/UnlockMediaController;->sendMediaControllerOpen(Z)V

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 602
    .local v6, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockMediaController;->mMainLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
