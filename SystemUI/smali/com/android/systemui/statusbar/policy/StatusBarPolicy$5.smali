.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;
.super Landroid/telephony/PhoneStateListener;
.source "StatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 970
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 989
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CN:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCallState(I)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 992
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->isCdma()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 995
    :cond_0
    return-void
.end method

.method public onDataActivity(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 1007
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataActivity-D:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataActivity:I

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1010
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 999
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " T:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mDataState:I

    .line 1001
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataNetType(I)V
    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;I)V

    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 1003
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 980
    const-string v0, "StatusBarPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged-S:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mServiceState:Landroid/telephony/ServiceState;

    .line 982
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateCdmaRoamingIcon(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2500(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/telephony/ServiceState;)V

    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateDataIcon()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2600(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 985
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 2
    .parameter "signalStrength"

    .prologue
    .line 973
    const-string v0, "StatusBarPolicy"

    const-string v1, "onSignalStrengthsChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    iput-object p1, v0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 975
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$5;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    #calls: Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->updateSignalStrength()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$1400(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V

    .line 976
    return-void
.end method
