.class final Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;
.super Landroid/os/Handler;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneInterfaceManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 97
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 163
    const-string v5, "PhoneInterfaceManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MainThreadHandler: unexpected message code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local p0
    :goto_0
    return-void

    .line 99
    .restart local p0
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 100
    .local v4, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p0, v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->argument:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-interface {v5, p0}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 103
    monitor-enter v4

    .line 104
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 105
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 109
    .end local v4           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    .restart local p0
    :pswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 110
    .restart local v4       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v5, 0x3

    invoke-virtual {p0, v5, v4}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 112
    .local v2, onCompleted:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5, v2}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    goto :goto_0

    .line 116
    .end local v2           #onCompleted:Landroid/os/Message;
    .end local v4           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 117
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 118
    .restart local v4       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_0

    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iput-object v5, v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 125
    :goto_1
    monitor-enter v4

    .line 126
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 122
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    goto :goto_1

    .line 131
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v4           #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    :pswitch_3
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->access$000(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    #calls: Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V
    invoke-static {v5}, Lcom/android/phone/PhoneInterfaceManager;->access$100(Lcom/android/phone/PhoneInterfaceManager;)V

    goto :goto_0

    .line 139
    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .line 140
    .restart local v4       #request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    const/4 v1, 0x0

    .line 141
    .local v1, hungUp:Z
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 142
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_1

    .line 145
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangupRingingAndActive(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    .line 155
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v4, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    .line 157
    monitor-enter v4

    .line 158
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 159
    monitor-exit v4

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v5

    .line 146
    :cond_1
    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    .line 148
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    goto :goto_2

    .line 149
    :cond_2
    if-nez v3, :cond_3

    .line 150
    iget-object v5, p0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->this$0:Lcom/android/phone/PhoneInterfaceManager;

    iget-object v5, v5, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    goto :goto_2

    .line 152
    :cond_3
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
