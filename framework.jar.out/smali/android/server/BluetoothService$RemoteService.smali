.class Landroid/server/BluetoothService$RemoteService;
.super Ljava/lang/Object;
.source "BluetoothService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteService"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public timestamp:J

.field public uuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/ParcelUuid;)V
    .locals 2
    .parameter "address"
    .parameter "uuid"

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    .line 226
    iput-object p2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/server/BluetoothService$RemoteService;->timestamp:J

    .line 230
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 233
    instance-of v2, p1, Landroid/server/BluetoothService$RemoteService;

    if-eqz v2, :cond_1

    .line 234
    move-object v0, p1

    check-cast v0, Landroid/server/BluetoothService$RemoteService;

    move-object v1, v0

    .line 235
    .local v1, service:Landroid/server/BluetoothService$RemoteService;
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    iget-object v3, v1, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    iget-object v3, v1, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Landroid/os/ParcelUuid;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 237
    .end local v1           #service:Landroid/server/BluetoothService$RemoteService;
    :goto_0
    return v2

    .restart local v1       #service:Landroid/server/BluetoothService$RemoteService;
    :cond_0
    move v2, v4

    .line 235
    goto :goto_0

    .end local v1           #service:Landroid/server/BluetoothService$RemoteService;
    :cond_1
    move v2, v4

    .line 237
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 242
    const/4 v0, 0x1

    .line 243
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 244
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v0, v1, v2

    .line 245
    return v0

    .line 243
    :cond_0
    iget-object v1, p0, Landroid/server/BluetoothService$RemoteService;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 244
    :cond_1
    iget-object v2, p0, Landroid/server/BluetoothService$RemoteService;->uuid:Landroid/os/ParcelUuid;

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->hashCode()I

    move-result v2

    goto :goto_1
.end method
