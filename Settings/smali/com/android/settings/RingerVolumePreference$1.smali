.class Lcom/android/settings/RingerVolumePreference$1;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolumePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$1;->this$0:Lcom/android/settings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x3

    .line 265
    if-nez p2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v1, 0x1

    .line 269
    .local v1, musicSeekBarIdx:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$000()[I

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 270
    invoke-static {}, Lcom/android/settings/RingerVolumePreference;->access$100()[I

    move-result-object v3

    aget v3, v3, v0

    if-ne v3, v5, :cond_2

    .line 271
    move v1, v0

    .line 276
    :cond_1
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 277
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference$1;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/settings/RingerVolumePreference;->access$200(Lcom/android/settings/RingerVolumePreference;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 278
    .local v2, musicVol:I
    iget-object v3, p0, Lcom/android/settings/RingerVolumePreference$1;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mSeekBarVolumizer:[Landroid/preference/VolumePreference$SeekBarVolumizer;
    invoke-static {v3}, Lcom/android/settings/RingerVolumePreference;->access$300(Lcom/android/settings/RingerVolumePreference;)[Landroid/preference/VolumePreference$SeekBarVolumizer;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/preference/VolumePreference$SeekBarVolumizer;->setSeekBarVolume(I)V

    goto :goto_0

    .line 269
    .end local v2           #musicVol:I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
