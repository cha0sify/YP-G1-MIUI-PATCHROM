.class Landroid/widget/DatePicker$3;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/widget/NumberPicker;II)V
    .locals 1
    .parameter "picker"
    .parameter "oldVal"
    .parameter "newVal"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #setter for: Landroid/widget/DatePicker;->mYear:I
    invoke-static {v0, p3}, Landroid/widget/DatePicker;->access$302(Landroid/widget/DatePicker;I)I

    .line 243
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->adjustMaxDay()V

    .line 244
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    #calls: Landroid/widget/DatePicker;->notifyDateChanged()V
    invoke-static {v0}, Landroid/widget/DatePicker;->access$100(Landroid/widget/DatePicker;)V

    .line 245
    iget-object v0, p0, Landroid/widget/DatePicker$3;->this$0:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->updateDaySpinner()V

    .line 246
    return-void
.end method