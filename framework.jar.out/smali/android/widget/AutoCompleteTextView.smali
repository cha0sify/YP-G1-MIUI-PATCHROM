.class public Landroid/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Landroid/widget/AutoCompleteTextView$PassThroughClickListener;,
        Landroid/widget/AutoCompleteTextView$Validator;,
        Landroid/widget/AutoCompleteTextView$DropDownListView;,
        Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Landroid/widget/AutoCompleteTextView$PopupScrollListener;,
        Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;,
        Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;,
        Landroid/widget/AutoCompleteTextView$ListSelectorHider;,
        Landroid/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field private static final HINT_VIEW_ID:I = 0x17

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorId:I

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownDismissedOnCompletion:Z

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private final mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

.field private mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownWidth:I

.field private mFilter:Landroid/widget/Filter;

.field private mForceIgnoreOutsideTouch:Z

.field private mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mResizePopupRunnable:Ljava/lang/Runnable;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mThreshold:I

.field private mValidator:Landroid/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 155
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    .line 127
    new-instance v2, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    .line 130
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 132
    iput-boolean v6, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 134
    iput-boolean v4, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 136
    iput v4, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 139
    iput-object v5, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 145
    new-instance v2, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$ResizePopupRunnable;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    .line 161
    new-instance v2, Landroid/widget/PopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    .line 163
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 165
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 169
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 172
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 174
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 176
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 178
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 185
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 190
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 192
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 195
    const v2, 0x1090066

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    .line 200
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 201
    .local v1, inputType:I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v6, :cond_0

    .line 203
    const/high16 v2, 0x1

    or-int/2addr v1, v2

    .line 204
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 209
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 211
    new-instance v2, Landroid/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$MyWatcher;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 213
    new-instance v2, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v5}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 214
    iget-object v2, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/AutoCompleteTextView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/AutoCompleteTextView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mResizePopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/AutoCompleteTextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/AutoCompleteTextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method static synthetic access$900(Landroid/widget/AutoCompleteTextView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private buildDropDown()I
    .locals 35

    .prologue
    .line 1237
    const/16 v29, 0x0

    .line 1239
    .local v29, otherHeights:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    move-object v11, v0

    .line 1240
    .local v11, adapter:Landroid/widget/ListAdapter;
    if-eqz v11, :cond_3

    .line 1241
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v25

    .line 1242
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v25, :cond_3

    .line 1243
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    const/16 v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1244
    .local v15, count:I
    new-array v13, v15, [Landroid/view/inputmethod/CompletionInfo;

    .line 1245
    .local v13, completions:[Landroid/view/inputmethod/CompletionInfo;
    const/16 v31, 0x0

    .line 1247
    .local v31, realCount:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_1

    .line 1248
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1249
    add-int/lit8 v31, v31, 0x1

    .line 1250
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v26

    .line 1251
    .local v26, item:Ljava/lang/Object;
    move-object v0, v11

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v22

    .line 1252
    .local v22, id:J
    new-instance v5, Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object v0, v5

    move-wide/from16 v1, v22

    move/from16 v3, v21

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v5, v13, v21

    .line 1247
    .end local v22           #id:J
    .end local v26           #item:Ljava/lang/Object;
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 1257
    :cond_1
    move/from16 v0, v31

    move v1, v15

    if-eq v0, v1, :cond_2

    .line 1258
    move/from16 v0, v31

    new-array v0, v0, [Landroid/view/inputmethod/CompletionInfo;

    move-object/from16 v32, v0

    .line 1259
    .local v32, tmp:[Landroid/view/inputmethod/CompletionInfo;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v13

    move v1, v5

    move-object/from16 v2, v32

    move v3, v6

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1260
    move-object/from16 v13, v32

    .line 1263
    .end local v32           #tmp:[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1267
    .end local v13           #completions:[Landroid/view/inputmethod/CompletionInfo;
    .end local v15           #count:I
    .end local v21           #i:I
    .end local v25           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v31           #realCount:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    if-nez v5, :cond_9

    .line 1268
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 1270
    .local v14, context:Landroid/content/Context;
    new-instance v5, Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$ListSelectorHider;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    .line 1278
    new-instance v5, Landroid/widget/AutoCompleteTextView$1;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$1;-><init>(Landroid/widget/AutoCompleteTextView;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1288
    new-instance v5, Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-direct {v5, v14}, Landroid/widget/AutoCompleteTextView$DropDownListView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    invoke-virtual {v5, v11}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownItemClickListener:Landroid/widget/AutoCompleteTextView$DropDownItemClickListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusable(Z)V

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$2;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView$2;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    new-instance v6, Landroid/widget/AutoCompleteTextView$PopupScrollListener;

    const/4 v7, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/AutoCompleteTextView$PopupScrollListener;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1317
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object/from16 v16, v0

    .line 1319
    .local v16, dropDownView:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/AutoCompleteTextView;->getHintView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v20

    .line 1320
    .local v20, hintView:Landroid/view/View;
    if-eqz v20, :cond_5

    .line 1323
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1324
    .local v18, hintContainer:Landroid/widget/LinearLayout;
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1326
    new-instance v19, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1329
    .local v19, hintParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1334
    invoke-virtual/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v34

    .line 1335
    .local v34, widthSpec:I
    const/16 v17, 0x0

    .line 1336
    .local v17, heightSpec:I
    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1338
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1339
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    .line 1342
    move-object/from16 v16, v18

    .line 1345
    .end local v17           #heightSpec:I
    .end local v18           #hintContainer:Landroid/widget/LinearLayout;
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v34           #widthSpec:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1358
    .end local v14           #context:Landroid/content/Context;
    .end local v20           #hintView:Landroid/view/View;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 1360
    .local v24, ignoreBottomDecorations:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-direct/range {p0 .. p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    move v7, v0

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v28

    .line 1365
    .local v28, maxHeight:I
    const/16 v30, 0x0

    .line 1366
    .local v30, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1367
    .local v12, background:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_7

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v5, v0

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mTempRect:Landroid/graphics/Rect;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int v30, v5, v6

    .line 1372
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    move v5, v0

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_b

    .line 1373
    :cond_8
    add-int v5, v28, v30

    .line 1382
    :goto_3
    return v5

    .line 1347
    .end local v12           #background:Landroid/graphics/drawable/Drawable;
    .end local v16           #dropDownView:Landroid/view/ViewGroup;
    .end local v24           #ignoreBottomDecorations:Z
    .end local v28           #maxHeight:I
    .end local v30           #padding:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 1348
    .restart local v16       #dropDownView:Landroid/view/ViewGroup;
    const/16 v5, 0x17

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v33

    .line 1349
    .local v33, view:Landroid/view/View;
    if-eqz v33, :cond_6

    .line 1350
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout$LayoutParams;

    .line 1352
    .restart local v19       #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v33 .. v33}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move v6, v0

    add-int v29, v5, v6

    goto/16 :goto_1

    .line 1358
    .end local v19           #hintParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v33           #view:Landroid/view/View;
    :cond_a
    const/4 v5, 0x0

    move/from16 v24, v5

    goto :goto_2

    .line 1376
    .restart local v12       #background:Landroid/graphics/drawable/Drawable;
    .restart local v24       #ignoreBottomDecorations:Z
    .restart local v28       #maxHeight:I
    .restart local v30       #padding:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    sub-int v9, v28, v29

    const/4 v10, 0x2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v27

    .line 1380
    .local v27, listContent:I
    if-lez v27, :cond_c

    add-int v29, v29, v30

    .line 1382
    :cond_c
    add-int v5, v27, v29

    goto :goto_3
.end method

.method private getDropDownAnchorView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1102
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 1105
    :cond_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    goto :goto_0
.end method

.method private getHintView(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1386
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1387
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1389
    .local v0, hintView:Landroid/widget/TextView;
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1390
    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V

    move-object v1, v0

    .line 1393
    .end local v0           #hintView:Landroid/widget/TextView;
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v3

    goto :goto_0
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 231
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 7
    .parameter "selectedView"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 930
    if-gez p2, :cond_1

    .line 931
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    .line 935
    .local v6, selectedItem:Ljava/lang/Object;
    :goto_0
    if-nez v6, :cond_2

    .line 936
    const-string v0, "AutoCompleteTextView"

    const-string/jumbo v2, "performCompletion: no selected item"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 933
    :cond_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    .restart local v6       #selectedItem:Ljava/lang/Object;
    goto :goto_0

    .line 940
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 941
    invoke-virtual {p0, v6}, Landroid/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 942
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 944
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 945
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 947
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 948
    :cond_3
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 949
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result p2

    .line 950
    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemId()J

    move-result-wide p3

    .line 952
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 956
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    .end local v6           #selectedItem:Ljava/lang/Object;
    :cond_5
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 957
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 1011
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1020
    :cond_1
    if-gtz p1, :cond_2

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1021
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 1024
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1025
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 847
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 848
    .local v0, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_0

    .line 850
    const/4 v1, 0x1

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 851
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->hideSelector()V

    .line 852
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestLayout()V

    .line 854
    :cond_0
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "selectedItem"

    .prologue
    .line 839
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1076
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1077
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {v0, p0, v2}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1080
    :cond_0
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1081
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1082
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 1083
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 794
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    :cond_2
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 808
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Landroid/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 814
    :cond_3
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 815
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 765
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 1124
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1126
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1127
    return-void

    .line 1124
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 308
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 883
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Landroid/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 428
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1063
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1064
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completion"

    .prologue
    .line 912
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 914
    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 917
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 918
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    .line 921
    .local v1, list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getId()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 925
    .end local v1           #list:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1068
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1069
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1070
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 1039
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1040
    packed-switch p1, :pswitch_data_0

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1042
    :pswitch_0
    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1040
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 1007
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1051
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1053
    if-nez p1, :cond_0

    .line 1054
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    .line 1056
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_1

    .line 1057
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1059
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 11
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 659
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 665
    const/16 v8, 0x3e

    if-eq p1, v8, :cond_8

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v8

    if-gez v8, :cond_0

    const/16 v8, 0x42

    if-eq p1, v8, :cond_8

    const/16 v8, 0x17

    if-eq p1, v8, :cond_8

    .line 669
    :cond_0
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 672
    .local v4, curIndex:I
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    move v2, v8

    .line 674
    .local v2, below:Z
    :goto_0
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 677
    .local v0, adapter:Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 678
    .local v5, firstItem:I
    const/high16 v7, -0x8000

    .line 680
    .local v7, lastItem:I
    if-eqz v0, :cond_1

    .line 681
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 682
    .local v1, allEnabled:Z
    if-eqz v1, :cond_5

    const/4 v8, 0x0

    move v5, v8

    .line 684
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move v7, v8

    .line 688
    .end local v1           #allEnabled:Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    const/16 v8, 0x14

    if-ne p1, v8, :cond_7

    if-lt v4, v7, :cond_7

    .line 692
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 693
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 694
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 695
    const/4 v8, 0x1

    .line 753
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :goto_3
    return v8

    .line 672
    .restart local v4       #curIndex:I
    :cond_4
    const/4 v8, 0x0

    move v2, v8

    goto :goto_0

    .line 682
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v1       #allEnabled:Z
    .restart local v2       #below:Z
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :cond_5
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v5, v8

    goto :goto_1

    .line 684
    :cond_6
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/widget/AutoCompleteTextView$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    move v7, v8

    goto :goto_2

    .line 699
    .end local v1           #allEnabled:Z
    :cond_7
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v9, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v8, v9}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 702
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 705
    .local v3, consumed:Z
    if-eqz v3, :cond_a

    .line 708
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 713
    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->requestFocusFromTouch()Z

    .line 714
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 716
    sparse-switch p1, :sswitch_data_0

    .line 745
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_8
    :goto_4
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 746
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    .line 747
    .local v6, handled:Z
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 749
    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v8, :cond_9

    .line 750
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_9
    move v8, v6

    .line 753
    goto :goto_3

    .line 723
    .end local v6           #handled:Z
    .restart local v0       #adapter:Landroid/widget/ListAdapter;
    .restart local v2       #below:Z
    .restart local v3       #consumed:Z
    .restart local v4       #curIndex:I
    .restart local v5       #firstItem:I
    .restart local v7       #lastItem:I
    :sswitch_0
    const/4 v8, 0x1

    goto :goto_3

    .line 726
    :cond_a
    if-eqz v2, :cond_b

    const/16 v8, 0x14

    if-ne p1, v8, :cond_b

    .line 729
    if-ne v4, v7, :cond_8

    .line 730
    const/4 v8, 0x1

    goto :goto_3

    .line 732
    :cond_b
    if-nez v2, :cond_8

    const/16 v8, 0x13

    if-ne p1, v8, :cond_8

    if-ne v4, v5, :cond_8

    .line 734
    const/4 v8, 0x1

    goto :goto_3

    .line 739
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #below:Z
    .end local v3           #consumed:Z
    .end local v4           #curIndex:I
    .end local v5           #firstItem:I
    .end local v7           #lastItem:I
    :cond_c
    packed-switch p1, :pswitch_data_0

    goto :goto_4

    .line 741
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_4

    .line 716
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 739
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 619
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_1

    .line 623
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 624
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    move v0, v1

    .line 634
    :goto_0
    return v0

    .line 626
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 627
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 628
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 629
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    move v0, v1

    .line 630
    goto :goto_0

    .line 634
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 639
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_0

    .line 640
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v1, p1, p2}, Landroid/widget/AutoCompleteTextView$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 641
    .local v0, consumed:Z
    if-eqz v0, :cond_0

    .line 642
    sparse-switch p1, :sswitch_data_0

    .line 653
    .end local v0           #consumed:Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 648
    .restart local v0       #consumed:Z
    :sswitch_0
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->performCompletion()V

    .line 649
    const/4 v1, 0x1

    goto :goto_0

    .line 642
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasWindowFocus"

    .prologue
    .line 1031
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 1032
    if-nez p1, :cond_0

    iget-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v0, :cond_0

    .line 1033
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1035
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 907
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 908
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "text"
    .parameter "keyCode"

    .prologue
    .line 898
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 899
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1428
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1430
    :cond_1
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1432
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1433
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Landroid/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 995
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearComposingText()V

    .line 997
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 999
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1000
    .local v0, spannable:Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1001
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, adapter:Landroid/widget/ListAdapter;,"TT;"
    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_2

    .line 599
    new-instance v0, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 603
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 604
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 606
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 607
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 612
    :goto_1
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_1

    .line 613
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 615
    :cond_1
    return-void

    .line 600
    :cond_2
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mObserver:Landroid/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 609
    :cond_3
    iput-object v2, p0, Landroid/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 243
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 244
    return-void
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .parameter "dropDownAlwaysVisible"

    .prologue
    .line 445
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    .line 446
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 321
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAnchorView:Landroid/view/View;

    .line 323
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .parameter "animationStyle"

    .prologue
    .line 407
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 408
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "d"

    .prologue
    .line 344
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 355
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .parameter "dropDownDismissedOnCompletion"

    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 467
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 297
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    .line 298
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 382
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    .line 383
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 364
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    .line 365
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 0
    .parameter "width"

    .prologue
    .line 269
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    .line 270
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .parameter "forceIgnoreOutsideTouch"

    .prologue
    .line 1226
    iput-boolean p1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    .line 1227
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1087
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1089
    .local v0, result:Z
    iget-object v1, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1090
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 1093
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 862
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .line 864
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 867
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 219
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPassThroughClickListener:Landroid/widget/AutoCompleteTextView$PassThroughClickListener;

    #setter for: Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->access$402(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 220
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 510
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 511
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 520
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 521
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .parameter "text"
    .parameter "filter"

    .prologue
    .line 978
    if-eqz p2, :cond_0

    .line 979
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :goto_0
    return-void

    .line 981
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 982
    invoke-virtual {p0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 983
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 496
    if-gtz p1, :cond_0

    .line 497
    const/4 p1, 0x1

    .line 500
    :cond_0
    iput p1, p0, Landroid/widget/AutoCompleteTextView;->mThreshold:I

    .line 501
    return-void
.end method

.method public setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .parameter "validator"

    .prologue
    .line 1406
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView;->mValidator:Landroid/widget/AutoCompleteTextView$Validator;

    .line 1407
    return-void
.end method

.method public showDropDown()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, -0x2

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 1140
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->buildDropDown()I

    move-result v6

    .line 1142
    .local v6, height:I
    const/4 v4, 0x0

    .line 1143
    .local v4, widthSpec:I
    const/4 v5, 0x0

    .line 1145
    .local v5, heightSpec:I
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->isInputMethodNotNeeded()Z

    move-result v7

    .line 1147
    .local v7, noInputMethod:Z
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1148
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_0

    .line 1151
    const/4 v4, -0x1

    .line 1158
    :goto_0
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_6

    .line 1161
    if-eqz v7, :cond_2

    move v5, v6

    .line 1162
    :goto_1
    if-eqz v7, :cond_4

    .line 1163
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_3

    move v1, v8

    :goto_2
    invoke-virtual {v0, v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1178
    :goto_3
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_8

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_8

    move v1, v9

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1180
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 1216
    :goto_5
    return-void

    .line 1152
    :cond_0
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_1

    .line 1153
    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_0

    .line 1155
    :cond_1
    iget v4, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    goto :goto_0

    :cond_2
    move v5, v8

    .line 1161
    goto :goto_1

    :cond_3
    move v1, v2

    .line 1163
    goto :goto_2

    .line 1167
    :cond_4
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v1, v8, :cond_5

    move v1, v8

    :goto_6
    invoke-virtual {v0, v1, v8}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_3

    :cond_5
    move v1, v2

    goto :goto_6

    .line 1172
    :cond_6
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_7

    .line 1173
    move v5, v6

    goto :goto_3

    .line 1175
    :cond_7
    iget v5, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1178
    goto :goto_4

    .line 1183
    :cond_9
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v8, :cond_a

    .line 1184
    const/4 v4, -0x1

    .line 1193
    :goto_7
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v8, :cond_c

    .line 1194
    const/4 v5, -0x1

    .line 1203
    :goto_8
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 1204
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v9}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1208
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mForceIgnoreOutsideTouch:Z

    if-nez v1, :cond_e

    iget-boolean v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownAlwaysVisible:Z

    if-nez v1, :cond_e

    move v1, v9

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 1209
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/AutoCompleteTextView$PopupTouchInterceptor;-><init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 1210
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHorizontalOffset:I

    iget v3, p0, Landroid/widget/AutoCompleteTextView;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1212
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;

    invoke-virtual {v0, v8}, Landroid/widget/AutoCompleteTextView$DropDownListView;->setSelection(I)V

    .line 1213
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 1214
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mHideSelector:Landroid/widget/AutoCompleteTextView$ListSelectorHider;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 1186
    :cond_a
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    if-ne v0, v3, :cond_b

    .line 1187
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7

    .line 1189
    :cond_b
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_7

    .line 1196
    :cond_c
    iget v0, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    if-ne v0, v3, :cond_d

    .line 1197
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_8

    .line 1199
    :cond_d
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/AutoCompleteTextView;->mDropDownHeight:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_8

    :cond_e
    move v1, v2

    .line 1208
    goto :goto_9
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Landroid/widget/AutoCompleteTextView;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 1115
    return-void
.end method
