.class Landroid/media/AudioService$AudioServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioServiceBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2092
    iput-object p1, p0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2092
    invoke-direct {p0, p1}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2095
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2096
    .local v4, action:Ljava/lang/String;
    const/4 v14, 0x0

    .line 2097
    .local v14, isMuted:Z
    const-string v21, "AudioService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "AudioServiceBroadcastReceiver:onReceive: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2099
    const-string v21, "android.intent.action.DOCK_EVENT"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2100
    const-string v21, "android.intent.extra.DOCK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 2103
    .local v10, dockState:I
    packed-switch v10, :pswitch_data_0

    .line 2112
    const/4 v8, 0x0

    .line 2114
    .local v8, config:I
    :goto_0
    const/16 v21, 0x3

    move/from16 v0, v21

    move v1, v8

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2117
    .local v12, isConnected:Z
    if-nez v10, :cond_0

    if-eqz v12, :cond_0

    .line 2118
    const/16 v21, 0x1000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2327
    .end local v8           #config:I
    .end local v10           #dockState:I
    .end local v12           #isConnected:Z
    .end local p1
    :cond_0
    :goto_1
    const/16 v17, 0x0

    .local v17, spkIndex:I
    const/4 v11, 0x0

    .line 2329
    .local v11, hphIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v22

    const/16 v23, 0x3

    aget v22, v22, v23

    aget-object v20, v21, v22

    .line 2330
    .local v20, streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    #getter for: Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I
    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)[I

    move-result-object v22

    const/16 v23, 0xd

    aget v22, v22, v23

    aget-object v19, v21, v22

    .line 2331
    .local v19, streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    if-eqz v21, :cond_1c

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    move/from16 v17, v21

    .line 2332
    :goto_2
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    if-eqz v21, :cond_1d

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    move/from16 v11, v21

    .line 2336
    :goto_3
    const-wide/16 v21, 0x64

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V

    .line 2337
    const-string v21, "audioParam;curDevice"

    invoke-static/range {v21 .. v21}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2342
    .local v13, isMusicHPH:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 2343
    const-wide/16 v21, 0xc8

    invoke-static/range {v21 .. v22}, Landroid/os/SystemClock;->sleep(J)V

    .line 2344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 2345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v11

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static {v0, v1, v2}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 2351
    :cond_1
    const-string v21, "HPH"

    move-object v0, v13

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1e

    .line 2352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    move v3, v11

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    .line 2353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    move v3, v11

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    .line 2359
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v21

    if-eqz v21, :cond_1f

    .line 2360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v11

    move/from16 v3, v17

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    .line 2367
    :goto_5
    return-void

    .line 2105
    .end local v11           #hphIndex:I
    .end local v13           #isMusicHPH:Ljava/lang/String;
    .end local v17           #spkIndex:I
    .end local v19           #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .end local v20           #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    .restart local v10       #dockState:I
    .restart local p1
    :pswitch_0
    const/4 v8, 0x7

    .line 2106
    .restart local v8       #config:I
    goto/16 :goto_0

    .line 2108
    .end local v8           #config:I
    :pswitch_1
    const/4 v8, 0x6

    .line 2109
    .restart local v8       #config:I
    goto/16 :goto_0

    .line 2124
    .end local v8           #config:I
    .end local v10           #dockState:I
    :cond_2
    const-string v21, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2125
    const-string v21, "android.bluetooth.a2dp.extra.SINK_STATE"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2127
    .local v18, state:I
    const-string v21, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2128
    .local v7, btDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2129
    .local v5, address:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x80

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x80

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 2132
    .restart local v12       #isConnected:Z
    :goto_6
    if-eqz v12, :cond_5

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_5

    .line 2134
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 2135
    if-nez v18, :cond_0

    .line 2139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4400(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2129
    .end local v12           #isConnected:Z
    :cond_3
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_6

    .line 2143
    .restart local v12       #isConnected:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2145
    :cond_5
    if-nez v12, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    const/16 v21, 0x4

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2148
    :cond_6
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2150
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    #setter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4602(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;

    .line 2160
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    #calls: Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/media/AudioService;->access$4800(Landroid/media/AudioService;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2155
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #calls: Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4700(Landroid/media/AudioService;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 2156
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #calls: Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$4500(Landroid/media/AudioService;)V

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    #getter for: Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$4600(Landroid/media/AudioService;)Ljava/lang/String;

    move-result-object v22

    #calls: Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$4000(Landroid/media/AudioService;Ljava/lang/String;)V

    goto :goto_7

    .line 2162
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v12           #isConnected:Z
    .end local v18           #state:I
    .restart local p1
    :cond_9
    const-string v21, "android.bluetooth.headset.action.STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 2163
    const-string v21, "android.bluetooth.headset.extra.STATE"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2165
    .restart local v18       #state:I
    const/16 v9, 0x10

    .line 2166
    .local v9, device:I
    const-string v21, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 2167
    .restart local v7       #btDevice:Landroid/bluetooth/BluetoothDevice;
    const/4 v5, 0x0

    .line 2168
    .restart local v5       #address:Ljava/lang/String;
    if-eqz v7, :cond_a

    .line 2169
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 2170
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    .line 2171
    .local v6, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v6, :cond_a

    .line 2172
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    .line 2184
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_a
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const/16 v21, 0x1

    move/from16 v12, v21

    .line 2187
    .restart local v12       #isConnected:Z
    :goto_9
    if-eqz v12, :cond_c

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-eq v0, v1, :cond_c

    .line 2188
    const/16 v21, 0x0

    move v0, v9

    move/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2191
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/media/AudioService;->clearAllScoClients()V

    goto/16 :goto_1

    .line 2175
    .end local v12           #isConnected:Z
    .restart local v6       #btClass:Landroid/bluetooth/BluetoothClass;
    .restart local p1
    :sswitch_0
    const/16 v9, 0x20

    .line 2176
    goto :goto_8

    .line 2178
    :sswitch_1
    const/16 v9, 0x40

    goto :goto_8

    .line 2184
    .end local v6           #btClass:Landroid/bluetooth/BluetoothClass;
    .end local p1
    :cond_b
    const/16 v21, 0x0

    move/from16 v12, v21

    goto :goto_9

    .line 2194
    .restart local v12       #isConnected:Z
    :cond_c
    if-nez v12, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 2195
    const/16 v21, 0x1

    move v0, v9

    move/from16 v1, v21

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    move-object/from16 v0, v22

    move v1, v9

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z
    invoke-static/range {v21 .. v22}, Landroid/media/AudioService;->access$1502(Landroid/media/AudioService;Z)Z

    goto/16 :goto_1

    .line 2201
    .end local v5           #address:Ljava/lang/String;
    .end local v7           #btDevice:Landroid/bluetooth/BluetoothDevice;
    .end local v9           #device:I
    .end local v12           #isConnected:Z
    .end local v18           #state:I
    .restart local p1
    :cond_d
    const-string v21, "android.intent.action.HEADSET_PLUG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_14

    .line 2202
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2203
    .restart local v18       #state:I
    const-string v21, "microphone"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 2208
    .local v15, microphone:I
    const/16 v21, 0x3

    invoke-static/range {v21 .. v21}, Landroid/media/AudioSystem;->isStreamActive(I)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 2209
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static/range {v21 .. v23}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0xd

    const/16 v23, 0x0

    #calls: Landroid/media/AudioService;->setStreamVolumeIndex(II)V
    invoke-static/range {v21 .. v23}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;II)V

    .line 2211
    const/4 v14, 0x1

    .line 2215
    :cond_e
    if-eqz v15, :cond_11

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2217
    .restart local v12       #isConnected:Z
    if-nez v18, :cond_f

    if-eqz v12, :cond_f

    .line 2218
    const/16 v21, 0x4

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x4

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2222
    :cond_f
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2223
    const/16 v21, 0x4

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x4

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v21

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->getLocaleIndex()I

    move-result v21

    if-eqz v21, :cond_10

    invoke-static {}, Landroid/media/AudioSystem;->getLocaleIndex()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2229
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x17

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/media/AudioService;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 2232
    .end local v12           #isConnected:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2233
    .restart local v12       #isConnected:Z
    if-nez v18, :cond_12

    if-eqz v12, :cond_12

    .line 2234
    const/16 v21, 0x8

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2237
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x8

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2238
    :cond_12
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2239
    const/16 v21, 0x8

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x8

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    invoke-virtual/range {v21 .. v22}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v21

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    invoke-static {}, Landroid/media/AudioSystem;->getLocaleIndex()I

    move-result v21

    if-eqz v21, :cond_13

    invoke-static {}, Landroid/media/AudioSystem;->getLocaleIndex()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 2245
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x17

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Landroid/media/AudioService;->setStreamVolume(III)V

    goto/16 :goto_1

    .line 2249
    .end local v12           #isConnected:Z
    .end local v15           #microphone:I
    .end local v18           #state:I
    :cond_14
    const-string v21, "android.intent.action.HDMI_PLUG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    .line 2250
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2251
    .restart local v18       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x2000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2252
    .restart local v12       #isConnected:Z
    if-nez v18, :cond_15

    if-eqz v12, :cond_15

    .line 2253
    const-string v21, "AudioService"

    const-string v22, "ACTION_HDMI_PLUG - disconnected "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const/16 v21, 0x2000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x2000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2258
    :cond_15
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2259
    const-string v21, "AudioService"

    const-string v22, "ACTION_HDMI_PLUG - connected "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    const/16 v21, 0x2000

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x2000

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2266
    .end local v12           #isConnected:Z
    .end local v18           #state:I
    :cond_16
    const-string v21, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    .line 2267
    const-string v21, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/16 v22, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2269
    .restart local v18       #state:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v21

    monitor-enter v21

    .line 2270
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$1400(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_17

    .line 2271
    packed-switch v18, :pswitch_data_1

    .line 2279
    const/16 v18, -0x1

    .line 2282
    :goto_a
    const/16 v22, -0x1

    move/from16 v0, v18

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 2283
    new-instance v16, Landroid/content/Intent;

    const-string v22, "android.media.SCO_AUDIO_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2284
    .local v16, newIntent:Landroid/content/Intent;
    const-string v22, "android.media.extra.SCO_AUDIO_STATE"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v22, v0

    #getter for: Landroid/media/AudioService;->mContext:Landroid/content/Context;
    invoke-static/range {v22 .. v22}, Landroid/media/AudioService;->access$4900(Landroid/media/AudioService;)Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2288
    .end local v16           #newIntent:Landroid/content/Intent;
    :cond_17
    monitor-exit v21

    goto/16 :goto_1

    :catchall_0
    move-exception v22

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .line 2273
    :pswitch_2
    const/16 v18, 0x1

    .line 2274
    goto :goto_a

    .line 2276
    :pswitch_3
    const/16 v18, 0x0

    .line 2277
    goto :goto_a

    .line 2291
    .end local v18           #state:I
    :cond_18
    const-string v21, "android.intent.action.TVOUT_PLUG"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    .line 2292
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2293
    .restart local v18       #state:I
    const-string v21, "AudioService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "TVOUT_PLUG evt state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x800

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2296
    .restart local v12       #isConnected:Z
    if-nez v18, :cond_19

    if-eqz v12, :cond_19

    .line 2297
    const/16 v21, 0x800

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x800

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2301
    :cond_19
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2302
    const/16 v21, 0x800

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2305
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x800

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2308
    .end local v12           #isConnected:Z
    .end local v18           #state:I
    :cond_1a
    const-string v21, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    move-object v0, v4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2309
    const-string/jumbo v21, "state"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    .line 2310
    .restart local v18       #state:I
    const-string v21, "AudioService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EXTRA_DOCK_SPEAKER evt state : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    .line 2313
    .restart local v12       #isConnected:Z
    if-nez v18, :cond_1b

    if-eqz v12, :cond_1b

    .line 2314
    const/16 v21, 0x1000

    const/16 v22, 0x0

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    const/16 v22, 0x1000

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2318
    :cond_1b
    const/16 v21, 0x1

    move/from16 v0, v18

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    if-nez v12, :cond_0

    .line 2319
    const/16 v21, 0x1000

    const/16 v22, 0x1

    const-string v23, ""

    invoke-static/range {v21 .. v23}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 2322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    #getter for: Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;
    invoke-static/range {v21 .. v21}, Landroid/media/AudioService;->access$3600(Landroid/media/AudioService;)Ljava/util/HashMap;

    move-result-object v21

    new-instance v22, Ljava/lang/Integer;

    const/16 v23, 0x1000

    invoke-direct/range {v22 .. v23}, Ljava/lang/Integer;-><init>(I)V

    const-string v23, ""

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 2331
    .end local v12           #isConnected:Z
    .end local v18           #state:I
    .end local p1
    .restart local v11       #hphIndex:I
    .restart local v17       #spkIndex:I
    .restart local v19       #streamStateForHph:Landroid/media/AudioService$VolumeStreamState;
    .restart local v20       #streamStateForSpk:Landroid/media/AudioService$VolumeStreamState;
    :cond_1c
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v20 .. v20}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    move/from16 v17, v21

    goto/16 :goto_2

    .line 2332
    :cond_1d
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static/range {v19 .. v19}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v21

    move/from16 v11, v21

    goto/16 :goto_3

    .line 2355
    .restart local v13       #isMusicHPH:Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v11

    move/from16 v3, v17

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    .line 2356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0x9

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v11

    move/from16 v3, v17

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    goto/16 :goto_4

    .line 2362
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;->this$0:Landroid/media/AudioService;

    move-object/from16 v21, v0

    const/16 v22, 0xa

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v17

    move v3, v11

    #calls: Landroid/media/AudioService;->sendVolumeUpdate(III)V
    invoke-static {v0, v1, v2, v3}, Landroid/media/AudioService;->access$5000(Landroid/media/AudioService;III)V

    goto/16 :goto_5

    .line 2103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2172
    :sswitch_data_0
    .sparse-switch
        0x404 -> :sswitch_0
        0x408 -> :sswitch_0
        0x420 -> :sswitch_1
    .end sparse-switch

    .line 2271
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
