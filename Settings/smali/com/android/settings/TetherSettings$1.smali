.class Lcom/android/settings/TetherSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 106
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 110
    const-string v5, "level"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 111
    .local v2, level:I
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, plugged:I
    invoke-static {}, Lcom/android/settings/TetherSettings;->access$000()I

    move-result v5

    if-lt v5, v2, :cond_2

    if-nez v3, :cond_2

    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 113
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->bLowBattery:Z
    invoke-static {v5, v7}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Z)Z

    .line 114
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 115
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    const v6, 0x7f090541

    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->bLowBattery:Z
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$200(Lcom/android/settings/TetherSettings;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 118
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #setter for: Lcom/android/settings/TetherSettings;->bLowBattery:Z
    invoke-static {v5, v6}, Lcom/android/settings/TetherSettings;->access$202(Lcom/android/settings/TetherSettings;Z)Z

    .line 119
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 120
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    .end local v2           #level:I
    .end local v3           #plugged:I
    :cond_3
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    const-string v5, "state"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 125
    .local v1, extra:Z
    const/4 v4, 0x0

    .line 126
    .local v4, tempState:I
    if-eqz v1, :cond_4

    .line 127
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiApEnabler;->savePreviousWifiApStateForAirpalenMode()I

    move-result v4

    goto :goto_0

    .line 129
    :cond_4
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$100(Lcom/android/settings/TetherSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 130
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$300(Lcom/android/settings/TetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/wifi/WifiApEnabler;->getPreviousWifiApStateForAirpalenMode()I

    move-result v4

    .line 131
    if-eq v4, v7, :cond_0

    .line 132
    iget-object v5, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    #getter for: Lcom/android/settings/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v5}, Lcom/android/settings/TetherSettings;->access$400(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v5

    invoke-virtual {v5, v8, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0
.end method
