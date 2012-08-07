.class public abstract Landroid/os/ITvOutService$Stub;
.super Landroid/os/Binder;
.source "ITvOutService.java"

# interfaces
.implements Landroid/os/ITvOutService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ITvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ITvOutService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.ITvOutService"

.field static final TRANSACTION_CableConnected:I = 0x2

.field static final TRANSACTION_DisableTvOut:I = 0x5

.field static final TRANSACTION_DisableTvOutForce:I = 0x6

.field static final TRANSACTION_EnableTvOut:I = 0x3

.field static final TRANSACTION_EnableTvOutForce:I = 0x4

.field static final TRANSACTION_SetCableStatus:I = 0xf

.field static final TRANSACTION_SetOrientation:I = 0x8

.field static final TRANSACTION_SetTvoutHdmiDualStatus:I = 0x1b

.field static final TRANSACTION_SetTvoutHdmiStatus:I = 0x13

.field static final TRANSACTION_TvOutDisableHDMISubtitleOn:I = 0x18

.field static final TRANSACTION_TvOutEnableHDMISubtitleOn:I = 0x15

.field static final TRANSACTION_TvOutHdmiSuspend:I = 0x14

.field static final TRANSACTION_TvOutPostHDMIBitmap:I = 0x19

.field static final TRANSACTION_TvOutPostHDMISubtitle:I = 0x16

.field static final TRANSACTION_TvOutResume:I = 0xa

.field static final TRANSACTION_TvOutSetImage:I = 0xb

.field static final TRANSACTION_TvOutSuspend:I = 0x9

.field static final TRANSACTION_TvoutSubtitleIsEnable:I = 0x11

.field static final TRANSACTION_TvoutSubtitlePostString:I = 0x12

.field static final TRANSACTION_TvoutSubtitleSetStatus:I = 0x10

.field static final TRANSACTION_fwHdmiStatus:I = 0x1e

.field static final TRANSACTION_getHDCPStatus:I = 0x1d

.field static final TRANSACTION_getIntent:I = 0x1

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isHDMISubtitleOn:I = 0x17

.field static final TRANSACTION_isHdmiDualEnabled:I = 0x1a

.field static final TRANSACTION_isHdmiEnabled:I = 0xc

.field static final TRANSACTION_isHdmiSuspended:I = 0xd

.field static final TRANSACTION_isSuspended:I = 0xe

.field static final TRANSACTION_updateHdmiCableConnected:I = 0x1c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p0, p0, v0}, Landroid/os/ITvOutService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/ITvOutService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.os.ITvOutService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/ITvOutService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/ITvOutService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/ITvOutService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/ITvOutService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.os.ITvOutService"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 320
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 43
    :sswitch_0
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->getIntent()Ljava/lang/String;

    move-result-object v6

    .line 50
    .local v6, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 52
    goto :goto_0

    .line 56
    .end local v6           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v7

    .line 59
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->CableConnected(Z)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 61
    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_0
    move v1, v9

    .line 58
    goto :goto_1

    .line 65
    :sswitch_3
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOut()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 68
    goto :goto_0

    .line 72
    :sswitch_4
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->EnableTvOutForce()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 75
    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOut()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 82
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->DisableTvOutForce()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 89
    goto :goto_0

    .line 93
    :sswitch_7
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isEnabled()Z

    move-result v6

    .line 95
    .local v6, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v6, :cond_1

    move v0, v7

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 97
    goto :goto_0

    :cond_1
    move v0, v9

    .line 96
    goto :goto_2

    .line 101
    .end local v6           #_result:Z
    :sswitch_8
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 104
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->SetOrientation(I)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 106
    goto/16 :goto_0

    .line 110
    .end local v1           #_arg0:I
    :sswitch_9
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvOutSuspend(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvOutResume()V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 122
    goto/16 :goto_0

    .line 126
    :sswitch_b
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 129
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvOutSetImage(I)V

    .line 130
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v1           #_arg0:I
    :sswitch_c
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isHdmiEnabled()Z

    move-result v6

    .line 137
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v6, :cond_2

    move v0, v7

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 139
    goto/16 :goto_0

    :cond_2
    move v0, v9

    .line 138
    goto :goto_3

    .line 143
    .end local v6           #_result:Z
    :sswitch_d
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isHdmiSuspended()Z

    move-result v6

    .line 145
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v6, :cond_3

    move v0, v7

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 147
    goto/16 :goto_0

    :cond_3
    move v0, v9

    .line 146
    goto :goto_4

    .line 151
    .end local v6           #_result:Z
    :sswitch_e
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isSuspended()Z

    move-result v6

    .line 153
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v6, :cond_4

    move v0, v7

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 155
    goto/16 :goto_0

    :cond_4
    move v0, v9

    .line 154
    goto :goto_5

    .line 159
    .end local v6           #_result:Z
    :sswitch_f
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    move v1, v7

    .line 162
    .local v1, _arg0:Z
    :goto_6
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->SetCableStatus(Z)V

    .line 163
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 164
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_5
    move v1, v9

    .line 161
    goto :goto_6

    .line 168
    :sswitch_10
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 171
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvoutSubtitleSetStatus(I)Z

    move-result v6

    .line 172
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v6, :cond_6

    move v0, v7

    :goto_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 174
    goto/16 :goto_0

    :cond_6
    move v0, v9

    .line 173
    goto :goto_7

    .line 178
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_11
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->TvoutSubtitleIsEnable()Z

    move-result v6

    .line 180
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    if-eqz v6, :cond_7

    move v0, v7

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 182
    goto/16 :goto_0

    :cond_7
    move v0, v9

    .line 181
    goto :goto_8

    .line 186
    .end local v6           #_result:Z
    :sswitch_12
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/os/ITvOutService$Stub;->TvoutSubtitlePostString(Ljava/lang/String;I)Z

    move-result v6

    .line 192
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v6, :cond_8

    move v0, v7

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 194
    goto/16 :goto_0

    :cond_8
    move v0, v9

    .line 193
    goto :goto_9

    .line 198
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v6           #_result:Z
    :sswitch_13
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 201
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->SetTvoutHdmiStatus(I)Z

    move-result v6

    .line 202
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    if-eqz v6, :cond_9

    move v0, v7

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 204
    goto/16 :goto_0

    :cond_9
    move v0, v9

    .line 203
    goto :goto_a

    .line 208
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_14
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 211
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvOutHdmiSuspend(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 213
    goto/16 :goto_0

    .line 217
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_15
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 220
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvOutEnableHDMISubtitleOn(I)Z

    move-result v6

    .line 221
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    if-eqz v6, :cond_a

    move v0, v7

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 223
    goto/16 :goto_0

    :cond_a
    move v0, v9

    .line 222
    goto :goto_b

    .line 227
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_16
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 235
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 237
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v5, v7

    .local v5, _arg4:Z
    :goto_c
    move-object v0, p0

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/os/ITvOutService$Stub;->TvOutPostHDMISubtitle(Ljava/lang/String;IIIZ)V

    .line 239
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 240
    goto/16 :goto_0

    .end local v5           #_arg4:Z
    :cond_b
    move v5, v9

    .line 237
    goto :goto_c

    .line 244
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_17
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isHDMISubtitleOn()Z

    move-result v6

    .line 246
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 247
    if-eqz v6, :cond_c

    move v0, v7

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 248
    goto/16 :goto_0

    :cond_c
    move v0, v9

    .line 247
    goto :goto_d

    .line 252
    .end local v6           #_result:Z
    :sswitch_18
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 255
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->TvOutDisableHDMISubtitleOn(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 257
    goto/16 :goto_0

    .line 261
    .end local v1           #_arg0:I
    :sswitch_19
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 270
    .local v1, _arg0:Landroid/graphics/Bitmap;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 271
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/os/ITvOutService$Stub;->TvOutPostHDMIBitmap(Landroid/graphics/Bitmap;I)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 273
    goto/16 :goto_0

    .line 267
    .end local v1           #_arg0:Landroid/graphics/Bitmap;
    .end local v2           #_arg1:I
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/graphics/Bitmap;
    goto :goto_e

    .line 277
    .end local v1           #_arg0:Landroid/graphics/Bitmap;
    :sswitch_1a
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->isHdmiDualEnabled()Z

    move-result v6

    .line 279
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v6, :cond_e

    move v0, v7

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 281
    goto/16 :goto_0

    :cond_e
    move v0, v9

    .line 280
    goto :goto_f

    .line 285
    .end local v6           #_result:Z
    :sswitch_1b
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->SetTvoutHdmiDualStatus(I)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 290
    goto/16 :goto_0

    .line 294
    .end local v1           #_arg0:I
    :sswitch_1c
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 297
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->updateHdmiCableConnected(I)Z

    move-result v6

    .line 298
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 299
    if-eqz v6, :cond_f

    move v0, v7

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 300
    goto/16 :goto_0

    :cond_f
    move v0, v9

    .line 299
    goto :goto_10

    .line 304
    .end local v1           #_arg0:I
    .end local v6           #_result:Z
    :sswitch_1d
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/os/ITvOutService$Stub;->getHDCPStatus()Z

    move-result v6

    .line 306
    .restart local v6       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    if-eqz v6, :cond_10

    move v0, v7

    :goto_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 308
    goto/16 :goto_0

    :cond_10
    move v0, v9

    .line 307
    goto :goto_11

    .line 312
    .end local v6           #_result:Z
    :sswitch_1e
    const-string v0, "android.os.ITvOutService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/os/ITvOutService$Stub;->fwHdmiStatus(I)V

    .line 316
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v7

    .line 317
    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
