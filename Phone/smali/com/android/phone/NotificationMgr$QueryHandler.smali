.class Lcom/android/phone/NotificationMgr$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NotificationMgr;


# direct methods
.method public constructor <init>(Lcom/android/phone/NotificationMgr;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    .line 280
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 281
    return-void
.end method

.method private final getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    .line 360
    new-instance v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    invoke-direct {v0, p0, v3}, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;-><init>(Lcom/android/phone/NotificationMgr$QueryHandler;Lcom/android/phone/NotificationMgr$1;)V

    .line 361
    .local v0, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 362
    const-string v1, "number"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 363
    const-string v1, "type"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->label:Ljava/lang/String;

    .line 364
    const-string v1, "date"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    .line 370
    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    const-string v2, "-3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 373
    :cond_0
    iput-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    .line 376
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NotificationInfo constructed for number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 378
    :cond_2
    return-object v0
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 10
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    .line 305
    packed-switch p1, :pswitch_data_0

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 307
    :pswitch_0
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "call log query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 310
    :cond_1
    if-eqz p3, :cond_0

    .line 311
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 314
    invoke-direct {p0, p3}, Lcom/android/phone/NotificationMgr$QueryHandler;->getNotificationInfo(Landroid/database/Cursor;)Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-result-object v3

    .line 316
    .local v3, n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "query contacts for number: "

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "null"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 318
    :cond_2
    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    #getter for: Lcom/android/phone/NotificationMgr;->mQueryHandler:Lcom/android/phone/NotificationMgr$QueryHandler;
    invoke-static {v1}, Lcom/android/phone/NotificationMgr;->access$400(Lcom/android/phone/NotificationMgr;)Lcom/android/phone/NotificationMgr$QueryHandler;

    move-result-object v1

    const/4 v2, -0x2

    sget-object v4, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v5, Lcom/android/phone/NotificationMgr;->PHONES_PROJECTION:[Ljava/lang/String;

    const-string v8, "number"

    move-object v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/android/phone/NotificationMgr$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 316
    :cond_3
    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    goto :goto_2

    .line 323
    .end local v3           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "closing call log cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 324
    :cond_5
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "contact query complete."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 331
    :cond_6
    if-eqz p3, :cond_0

    .line 332
    if-eqz p2, :cond_a

    .line 333
    move-object v0, p2

    check-cast v0, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;

    move-object v3, v0

    .line 335
    .restart local v3       #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 337
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " found for phone: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 338
    :cond_7
    const-string v1, "display_name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    .line 343
    :cond_8
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "sending notification."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 344
    :cond_9
    iget-object v4, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    iget-object v5, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->number:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->label:Ljava/lang/String;

    iget-wide v8, v3, Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;->date:J

    invoke-virtual/range {v4 .. v9}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 346
    invoke-static {}, Lcom/android/phone/NotificationMgr;->access$100()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/phone/NotificationMgr$QueryHandler;->this$0:Lcom/android/phone/NotificationMgr;

    const-string v2, "closing contact cursor."

    #calls: Lcom/android/phone/NotificationMgr;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/NotificationMgr;->access$200(Lcom/android/phone/NotificationMgr;Ljava/lang/String;)V

    .line 348
    .end local v3           #n:Lcom/android/phone/NotificationMgr$QueryHandler$NotificationInfo;
    :cond_a
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 305
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
