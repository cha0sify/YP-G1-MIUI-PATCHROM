.class public Lcom/android/settings/flipfont/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/settings/flipfont/Typeface;

.field private mFontFile:Lcom/android/settings/flipfont/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 81
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 83
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    .line 99
    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    .line 101
    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .parameter "ch"
    .parameter "start"
    .parameter "length"

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setFileName(Ljava/lang/String;)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 229
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    const-string v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 237
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 241
    :cond_2
    const-string v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 243
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 247
    :cond_3
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 253
    :cond_4
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 255
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 257
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    if-eqz v0, :cond_0

    .line 259
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 265
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 271
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    iget-object v0, v0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 281
    :cond_7
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 283
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 287
    :cond_8
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iput-boolean v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method

.method public getParsedData()Lcom/android/settings/flipfont/Typeface;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Lcom/android/settings/flipfont/Typeface;

    invoke-direct {v0}, Lcom/android/settings/flipfont/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    .line 129
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "namespaceURI"
    .parameter "localName"
    .parameter "qName"
    .parameter "atts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 159
    const-string v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_font:Z

    .line 163
    const-string v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, attrValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFont:Lcom/android/settings/flipfont/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/settings/flipfont/Typeface;->setName(Ljava/lang/String;)V

    .line 209
    .end local v0           #attrValue:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-string v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_sans:Z

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 177
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_serif:Z

    goto :goto_0

    .line 181
    :cond_3
    const-string v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_monospace:Z

    goto :goto_0

    .line 187
    :cond_4
    const-string v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 189
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_file:Z

    .line 191
    new-instance v1, Lcom/android/settings/flipfont/TypefaceFile;

    invoke-direct {v1}, Lcom/android/settings/flipfont/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/settings/flipfont/TypefaceParser;->mFontFile:Lcom/android/settings/flipfont/TypefaceFile;

    goto :goto_0

    .line 195
    :cond_5
    const-string v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_filename:Z

    goto :goto_0

    .line 201
    :cond_6
    const-string v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iput-boolean v2, p0, Lcom/android/settings/flipfont/TypefaceParser;->in_droidname:Z

    goto :goto_0
.end method
