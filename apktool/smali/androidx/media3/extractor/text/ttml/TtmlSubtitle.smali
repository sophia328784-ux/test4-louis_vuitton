.class final Landroidx/media3/extractor/text/ttml/TtmlSubtitle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/text/Subtitle;


# instance fields
.field public final b:Landroidx/media3/extractor/text/ttml/TtmlNode;

.field public final c:[J

.field public final d:Ljava/util/Map;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/text/ttml/TtmlNode;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/ttml/TtmlNode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlStyle;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroidx/media3/extractor/text/ttml/TtmlRegion;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->b:Landroidx/media3/extractor/text/ttml/TtmlNode;

    iput-object p3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->e:Ljava/util/Map;

    iput-object p4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->f:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    :goto_0
    iput-object p2, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->d:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroidx/media3/extractor/text/ttml/TtmlNode;->d(Ljava/util/TreeSet;Z)V

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result p1

    new-array p1, p1, [J

    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Long;

    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-int/lit8 p4, p3, 0x1

    aput-wide v0, p1, p3

    move p3, p4

    goto :goto_1

    :cond_1
    iput-object p1, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->c:[J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->c:[J

    invoke-static {p0, p1, p2, v0}, Landroidx/media3/common/util/Util;->b([JJZ)I

    move-result p1

    array-length p0, p0

    if-ge p1, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final b(J)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->b:Landroidx/media3/extractor/text/ttml/TtmlNode;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, v1, v7}, Landroidx/media3/extractor/text/ttml/TtmlNode;->g(JLjava/lang/String;Ljava/util/ArrayList;)V

    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroidx/media3/extractor/text/ttml/TtmlNode;->i(JZLjava/lang/String;Ljava/util/TreeMap;)V

    iget-object p1, v0, Landroidx/media3/extractor/text/ttml/TtmlNode;->h:Ljava/lang/String;

    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->d:Ljava/util/Map;

    iget-object v4, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->e:Ljava/util/Map;

    move-object v6, v5

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Landroidx/media3/extractor/text/ttml/TtmlNode;->h(JLjava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/util/TreeMap;)V

    move-object v5, v6

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    iget-object v3, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    array-length v3, v2

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/media3/common/text/Cue$Builder;

    invoke-direct {v3}, Landroidx/media3/common/text/Cue$Builder;-><init>()V

    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    iput-object v2, v3, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->b:F

    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->h:F

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->i:I

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->c:F

    iput v2, v3, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->f:I

    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->e:I

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->g:I

    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->f:F

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->l:F

    iget v1, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->g:F

    iput v1, v3, Landroidx/media3/common/text/Cue$Builder;->m:F

    iget v0, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->j:I

    iput v0, v3, Landroidx/media3/common/text/Cue$Builder;->p:I

    invoke-virtual {v3}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/common/text/Cue$Builder;

    iget-object v2, p2, Landroidx/media3/common/text/Cue$Builder;->a:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const-class v5, Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    invoke-virtual {v2, v1, v3, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroidx/media3/extractor/text/ttml/DeleteTextSpan;

    array-length v5, v3

    move v6, v1

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v3, v6

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const-string v9, ""

    invoke-virtual {v2, v8, v7, v9}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_3
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x20

    if-ge v3, v5, :cond_5

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_4

    add-int/lit8 v5, v3, 0x1

    move v7, v5

    :goto_4
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    sub-int/2addr v7, v5

    if-lez v7, :cond_4

    add-int/2addr v7, v3

    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/4 v5, 0x1

    if-lez v3, :cond_6

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_6

    invoke-virtual {v2, v1, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_6
    move v3, v1

    :goto_5
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v5

    const/16 v8, 0xa

    if-ge v3, v7, :cond_8

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_7

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_7

    add-int/lit8 v8, v3, 0x2

    invoke-virtual {v2, v7, v8}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_9

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    move v3, v1

    :goto_6
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v5

    if-ge v3, v7, :cond_b

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_a

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v2, v7}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v9

    if-ne v9, v8, :cond_a

    invoke-virtual {v2, v3, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v3

    if-ne v3, v8, :cond_c

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v2, v3, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_c
    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->c:F

    iget v3, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->d:I

    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->e:F

    iput v3, p2, Landroidx/media3/common/text/Cue$Builder;->f:I

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->e:I

    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->g:I

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->b:F

    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->h:F

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->f:F

    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->l:F

    iget v2, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->i:F

    iget v3, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->h:I

    iput v2, p2, Landroidx/media3/common/text/Cue$Builder;->k:F

    iput v3, p2, Landroidx/media3/common/text/Cue$Builder;->j:I

    iget v0, v0, Landroidx/media3/extractor/text/ttml/TtmlRegion;->j:I

    iput v0, p2, Landroidx/media3/common/text/Cue$Builder;->p:I

    invoke-virtual {p2}, Landroidx/media3/common/text/Cue$Builder;->a()Landroidx/media3/common/text/Cue;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    return-object p1
.end method

.method public final c(I)J
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->c:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/text/ttml/TtmlSubtitle;->c:[J

    array-length p0, p0

    return p0
.end method
