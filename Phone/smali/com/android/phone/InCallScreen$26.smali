.class synthetic Lcom/android/phone/InCallScreen$26;
.super Ljava/lang/Object;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$internal$telephony$Call$State:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

.field static final synthetic $SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

.field static final synthetic $SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 5866
    invoke-static {}, Lcom/android/internal/telephony/Call$State;->values()[Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    :try_start_0
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1a

    .line 4590
    :goto_2
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallScreenMode;->values()[Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    :try_start_3
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_19

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_18

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_17

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_16

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_15

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_14

    .line 4003
    :goto_8
    invoke-static {}, Lcom/android/phone/InCallScreen$InCallInitStatus;->values()[Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    :try_start_9
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_13

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_12

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_11

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_10

    :goto_c
    :try_start_d
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_f

    :goto_d
    :try_start_e
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_d

    :goto_f
    :try_start_10
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_c

    .line 2575
    :goto_10
    invoke-static {}, Lcom/android/internal/telephony/Connection$PostDialState;->values()[Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    :try_start_11
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->STARTED:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_b

    :goto_11
    :try_start_12
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_a

    :goto_12
    :try_start_13
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->WILD:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_9

    :goto_13
    :try_start_14
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->COMPLETE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_8

    :goto_14
    :try_start_15
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    sget-object v1, Lcom/android/internal/telephony/Connection$PostDialState;->PAUSE:Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_7

    .line 2048
    :goto_15
    invoke-static {}, Lcom/android/internal/telephony/Phone$SuppService;->values()[Lcom/android/internal/telephony/Phone$SuppService;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    :try_start_16
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_6

    :goto_16
    :try_start_17
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_5

    :goto_17
    :try_start_18
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_4

    :goto_18
    :try_start_19
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_3

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_2

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/android/phone/InCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_0

    :goto_1c
    return-void

    :catch_0
    move-exception v0

    goto :goto_1c

    :catch_1
    move-exception v0

    goto :goto_1b

    :catch_2
    move-exception v0

    goto :goto_1a

    :catch_3
    move-exception v0

    goto :goto_19

    :catch_4
    move-exception v0

    goto :goto_18

    :catch_5
    move-exception v0

    goto :goto_17

    :catch_6
    move-exception v0

    goto :goto_16

    .line 2575
    :catch_7
    move-exception v0

    goto :goto_15

    :catch_8
    move-exception v0

    goto :goto_14

    :catch_9
    move-exception v0

    goto :goto_13

    :catch_a
    move-exception v0

    goto/16 :goto_12

    :catch_b
    move-exception v0

    goto/16 :goto_11

    .line 4003
    :catch_c
    move-exception v0

    goto/16 :goto_10

    :catch_d
    move-exception v0

    goto/16 :goto_f

    :catch_e
    move-exception v0

    goto/16 :goto_e

    :catch_f
    move-exception v0

    goto/16 :goto_d

    :catch_10
    move-exception v0

    goto/16 :goto_c

    :catch_11
    move-exception v0

    goto/16 :goto_b

    :catch_12
    move-exception v0

    goto/16 :goto_a

    :catch_13
    move-exception v0

    goto/16 :goto_9

    .line 4590
    :catch_14
    move-exception v0

    goto/16 :goto_8

    :catch_15
    move-exception v0

    goto/16 :goto_7

    :catch_16
    move-exception v0

    goto/16 :goto_6

    :catch_17
    move-exception v0

    goto/16 :goto_5

    :catch_18
    move-exception v0

    goto/16 :goto_4

    :catch_19
    move-exception v0

    goto/16 :goto_3

    .line 5866
    :catch_1a
    move-exception v0

    goto/16 :goto_2

    :catch_1b
    move-exception v0

    goto/16 :goto_1

    :catch_1c
    move-exception v0

    goto/16 :goto_0
.end method
