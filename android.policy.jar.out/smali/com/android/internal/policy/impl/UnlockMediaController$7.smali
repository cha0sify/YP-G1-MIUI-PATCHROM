.class Lcom/android/internal/policy/impl/UnlockMediaController$7;
.super Ljava/lang/Object;
.source "UnlockMediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/UnlockMediaController;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/UnlockMediaController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/UnlockMediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const-string v6, "musicplayer.from"

    const-string v5, "lockscreen"

    const-string v4, "com.android.music.musicservicecommand.rew.up"

    .line 405
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #calls: Lcom/android/internal/policy/impl/UnlockMediaController;->sendTouchDetection()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$100(Lcom/android/internal/policy/impl/UnlockMediaController;)V

    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020289

    if-ne v1, v2, :cond_0

    .line 409
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 448
    :cond_0
    :goto_0
    return v3

    .line 412
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    #getter for: Lcom/android/internal/policy/impl/UnlockMediaController;->mBeforeButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/android/internal/policy/impl/UnlockMediaController;->access$1100(Lcom/android/internal/policy/impl/UnlockMediaController;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->playSoundEffect(I)V

    goto :goto_0

    .line 416
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    if-eqz v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 436
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iget-boolean v1, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    if-eqz v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockMediaController$7;->this$0:Lcom/android/internal/policy/impl/UnlockMediaController;

    iput-boolean v3, v1, Lcom/android/internal/policy/impl/UnlockMediaController;->mREWLongPressed:Z

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.rew.up"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "musicplayer.from"

    const-string v1, "lockscreen"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 442
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand.previous"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
