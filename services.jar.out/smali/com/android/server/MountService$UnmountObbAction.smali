.class Lcom/android/server/MountService$UnmountObbAction;
.super Lcom/android/server/MountService$ObbAction;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;Z)V
    .locals 0
    .parameter
    .parameter "obbState"
    .parameter "force"

    .prologue
    .line 3031
    iput-object p1, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    .line 3032
    invoke-direct {p0, p1, p2}, Lcom/android/server/MountService$ObbAction;-><init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3033
    iput-boolean p3, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    .line 3034
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 3091
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3092
    return-void
.end method

.method public handleExecute()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const-string v11, "MountService"

    .line 3037
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->waitForReady()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)V

    .line 3038
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->warnOnNotMounted()V
    invoke-static {v6}, Lcom/android/server/MountService;->access$3300(Lcom/android/server/MountService;)V

    .line 3040
    invoke-virtual {p0}, Lcom/android/server/MountService$UnmountObbAction;->getObbInfo()Landroid/content/res/ObbInfo;

    move-result-object v3

    .line 3043
    .local v3, obbInfo:Landroid/content/res/ObbInfo;
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3044
    :try_start_0
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbPathToStateMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/android/server/MountService;->access$2900(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v7

    iget-object v8, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/MountService$ObbState;

    .line 3045
    .local v4, obbState:Lcom/android/server/MountService$ObbState;
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3047
    if-nez v4, :cond_0

    .line 3048
    const/16 v6, 0x17

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3088
    :goto_0
    return-void

    .line 3045
    .end local v4           #obbState:Lcom/android/server/MountService$ObbState;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 3052
    .restart local v4       #obbState:Lcom/android/server/MountService$ObbState;
    :cond_0
    iget v6, v4, Lcom/android/server/MountService$ObbState;->callerUid:I

    iget-object v7, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v7, v7, Lcom/android/server/MountService$ObbState;->callerUid:I

    if-eq v6, v7, :cond_1

    .line 3053
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permission denied attempting to unmount OBB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (owned by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/res/ObbInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    const/16 v6, 0x19

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_0

    .line 3059
    :cond_1
    iget-object v6, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v3, Landroid/content/res/ObbInfo;->filename:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    .line 3061
    const/4 v5, 0x0

    .line 3062
    .local v5, rc:I
    const-string v6, "obb unmount %s%s"

    new-array v7, v10, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v9, v9, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v9, :cond_2

    const-string v9, " force"

    :goto_1
    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3065
    .local v0, cmd:Ljava/lang/String;
    :try_start_2
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v6}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/NativeDaemonConnector;->doCommand(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3078
    :goto_2
    if-nez v5, :cond_5

    .line 3079
    iget-object v6, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mObbMounts:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/server/MountService;->access$2800(Lcom/android/server/MountService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3080
    :try_start_3
    iget-object v7, p0, Lcom/android/server/MountService$UnmountObbAction;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->removeObbStateLocked(Lcom/android/server/MountService$ObbState;)V
    invoke-static {v7, v4}, Lcom/android/server/MountService;->access$3000(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V

    .line 3081
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3083
    invoke-virtual {p0, v10}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_0

    .line 3062
    .end local v0           #cmd:Ljava/lang/String;
    :cond_2
    const-string v9, ""

    goto :goto_1

    .line 3066
    .restart local v0       #cmd:Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 3067
    .local v2, e:Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3068
    .local v1, code:I
    const/16 v6, 0x195

    if-ne v1, v6, :cond_3

    .line 3069
    const/4 v5, -0x7

    goto :goto_2

    .line 3070
    :cond_3
    const/16 v6, 0x196

    if-ne v1, v6, :cond_4

    .line 3072
    const/4 v5, 0x0

    goto :goto_2

    .line 3074
    :cond_4
    const/4 v5, -0x1

    goto :goto_2

    .line 3081
    .end local v1           #code:I
    .end local v2           #e:Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v7

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v7

    .line 3085
    :cond_5
    const-string v6, "MountService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not mount OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v7, v7, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    const/16 v6, 0x16

    invoke-virtual {p0, v6}, Lcom/android/server/MountService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "null"

    .line 3096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3097
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3098
    const-string v1, "filename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->filename:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    const-string v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    iget-boolean v1, p0, Lcom/android/server/MountService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3102
    const-string v1, ",callerUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3103
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget v1, v1, Lcom/android/server/MountService$ObbState;->callerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3104
    const-string v1, ",token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    const-string v1, ",binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3107
    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/MountService$ObbAction;->mObbState:Lcom/android/server/MountService$ObbState;

    invoke-virtual {v1}, Lcom/android/server/MountService$ObbState;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3108
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3099
    :cond_0
    const-string v1, "null"

    move-object v1, v2

    goto :goto_0

    .line 3105
    :cond_1
    const-string v1, "null"

    move-object v1, v2

    goto :goto_1

    .line 3107
    :cond_2
    const-string v1, "null"

    move-object v1, v2

    goto :goto_2
.end method
