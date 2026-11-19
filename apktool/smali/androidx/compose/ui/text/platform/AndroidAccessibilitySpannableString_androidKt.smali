.class public abstract Landroidx/compose/ui/text/platform/AndroidAccessibilitySpannableString_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui-text"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/text/platform/URLSpanCache;)Landroid/text/SpannableString;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    new-instance v2, Landroid/text/SpannableString;

    iget-object v8, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    iget-object v9, v0, Landroidx/compose/ui/text/AnnotatedString;->b:Ljava/util/List;

    invoke-direct {v2, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Landroidx/compose/ui/text/AnnotatedString;->d:Ljava/util/ArrayList;

    const/16 v11, 0x21

    if-eqz v10, :cond_10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v13, :cond_10

    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v4, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v4, Landroidx/compose/ui/text/SpanStyle;

    iget v6, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v7, v3, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    const v3, 0xffdf

    invoke-static {v4, v12, v13, v3}, Landroidx/compose/ui/text/SpanStyle;->a(Landroidx/compose/ui/text/SpanStyle;JI)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v12

    iget-object v3, v12, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v13, v12, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    iget-object v4, v12, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v5, v12, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v15, v12, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    move-object/from16 v17, v4

    invoke-interface {v3}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroid/text/Spannable;JII)V

    iget-wide v3, v12, Landroidx/compose/ui/text/SpanStyle;->b:J

    move-object/from16 v19, v5

    move-object/from16 v18, v17

    move-object/from16 v5, p1

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    iget-object v3, v12, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v3, :cond_1

    if-eqz v15, :cond_0

    goto :goto_2

    :cond_0
    :goto_1
    move-object/from16 v3, v19

    goto :goto_7

    :cond_1
    :goto_2
    if-nez v3, :cond_2

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    :cond_2
    if-eqz v15, :cond_3

    iget v15, v15, Landroidx/compose/ui/text/font/FontStyle;->a:I

    goto :goto_3

    :cond_3
    sget-object v4, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v15, 0x0

    :goto_3
    new-instance v4, Landroid/text/style/StyleSpan;

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->f:Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/font/FontWeight;->a(Landroidx/compose/ui/text/font/FontWeight;)I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    :goto_4
    sget-object v17, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/text/font/FontStyle;->c:I

    if-ne v15, v5, :cond_5

    const/4 v15, 0x1

    goto :goto_5

    :cond_5
    const/4 v15, 0x0

    :goto_5
    if-eqz v15, :cond_6

    if-eqz v3, :cond_6

    const/4 v15, 0x3

    goto :goto_6

    :cond_6
    if-eqz v3, :cond_7

    const/4 v15, 0x1

    goto :goto_6

    :cond_7
    if-eqz v15, :cond_8

    const/4 v15, 0x2

    goto :goto_6

    :cond_8
    const/4 v15, 0x0

    :goto_6
    invoke-direct {v4, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v4, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    :goto_7
    if-eqz v3, :cond_9

    instance-of v4, v3, Landroidx/compose/ui/text/font/GenericFontFamily;

    if-eqz v4, :cond_a

    new-instance v4, Landroid/text/style/TypefaceSpan;

    move-object v5, v3

    check-cast v5, Landroidx/compose/ui/text/font/GenericFontFamily;

    iget-object v3, v5, Landroidx/compose/ui/text/font/GenericFontFamily;->h:Ljava/lang/String;

    invoke-direct {v4, v3}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v6, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_9
    move v3, v11

    :goto_8
    move-object/from16 v4, v18

    goto :goto_a

    :cond_a
    iget-object v4, v12, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v4, :cond_b

    iget v4, v4, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    goto :goto_9

    :cond_b
    sget-object v4, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    :goto_9
    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    sget-object v15, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v15, p2

    const/4 v11, 0x0

    invoke-interface {v15, v3, v5, v11, v4}, Landroidx/compose/ui/text/font/FontFamily$Resolver;->a(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/TypefaceResult;

    move-result-object v3

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Landroid/graphics/Typeface;

    new-instance v4, Landroid/text/style/TypefaceSpan;

    invoke-direct {v4, v3}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v3, 0x21

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :goto_a
    if-eqz v4, :cond_d

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v5

    if-eqz v5, :cond_c

    new-instance v5, Landroid/text/style/UnderlineSpan;

    invoke-direct {v5}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_c
    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->e:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v5}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v4, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v4}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_d
    if-eqz v13, :cond_e

    new-instance v4, Landroid/text/style/ScaleXSpan;

    iget v5, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    invoke-direct {v4, v5}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-virtual {v2, v4, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_e
    iget-object v3, v12, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v2, v3, v6, v7}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->e(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    iget-wide v3, v12, Landroidx/compose/ui/text/SpanStyle;->l:J

    const-wide/16 v11, 0x10

    cmp-long v5, v3, v11

    if-eqz v5, :cond_f

    new-instance v5, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v3

    invoke-direct {v5, v3}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v2, v5, v6, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_f
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, v16

    const/16 v11, 0x21

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v9, :cond_12

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v5, :cond_13

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v11, v11, Landroidx/compose/ui/text/TtsAnnotation;

    if-eqz v11, :cond_11

    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    const/4 v15, 0x0

    invoke-static {v15, v3, v11, v10}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_12
    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_15

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/text/TtsAnnotation;

    iget v10, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    instance-of v11, v7, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    if-eqz v11, :cond_14

    check-cast v7, Landroidx/compose/ui/text/VerbatimTtsAnnotation;

    new-instance v11, Landroid/text/style/TtsSpan$VerbatimBuilder;

    iget-object v7, v7, Landroidx/compose/ui/text/VerbatimTtsAnnotation;->a:Ljava/lang/String;

    invoke-direct {v11, v7}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/text/style/TtsSpan$Builder;->build()Landroid/text/style/TtsSpan;

    move-result-object v7

    const/16 v11, 0x21

    invoke-virtual {v2, v7, v10, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    :cond_14
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_15
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v9, :cond_19

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, v9

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v5, :cond_18

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v11, v11, Landroidx/compose/ui/text/UrlAnnotation;

    if-eqz v11, :cond_16

    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    const/4 v15, 0x0

    invoke-static {v15, v3, v11, v10}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_16
    const/4 v15, 0x0

    :cond_17
    :goto_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_18
    const/4 v15, 0x0

    goto :goto_f

    :cond_19
    const/4 v15, 0x0

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :goto_f
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v4

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v5, v15

    :goto_10
    if-ge v5, v3, :cond_1b

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v7, Landroidx/compose/ui/text/UrlAnnotation;

    iget v9, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget-object v10, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v10, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1a

    new-instance v11, Landroid/text/style/URLSpan;

    iget-object v12, v7, Landroidx/compose/ui/text/UrlAnnotation;->a:Ljava/lang/String;

    invoke-direct {v11, v12}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v11}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    check-cast v11, Landroid/text/style/URLSpan;

    const/16 v7, 0x21

    invoke-virtual {v2, v11, v9, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    :cond_1b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroidx/compose/ui/text/AnnotatedString;->b(I)Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    move v12, v15

    :goto_11
    if-ge v12, v3, :cond_20

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget-object v6, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    iget v7, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-eq v5, v7, :cond_1f

    move-object v8, v6

    check-cast v8, Landroidx/compose/ui/text/LinkAnnotation;

    instance-of v9, v8, Landroidx/compose/ui/text/LinkAnnotation$Url;

    if-eqz v9, :cond_1d

    move-object v9, v8

    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v9, v9, Landroidx/compose/ui/text/LinkAnnotation$Url;->c:Landroidx/compose/ui/text/LinkInteractionListener;

    if-nez v9, :cond_1d

    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/compose/ui/text/LinkAnnotation$Url;

    invoke-direct {v4, v6, v5, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    iget-object v6, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->b:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_1c

    new-instance v8, Landroid/text/style/URLSpan;

    iget-object v9, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/text/LinkAnnotation$Url;

    iget-object v9, v9, Landroidx/compose/ui/text/LinkAnnotation$Url;->a:Ljava/lang/String;

    invoke-direct {v8, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    check-cast v8, Landroid/text/style/URLSpan;

    const/16 v11, 0x21

    invoke-virtual {v2, v8, v5, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_12

    :cond_1d
    iget-object v6, v1, Landroidx/compose/ui/text/platform/URLSpanCache;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v6, v4}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1e

    new-instance v9, Landroidx/compose/ui/text/platform/ComposeClickableSpan;

    invoke-direct {v9, v8}, Landroidx/compose/ui/text/platform/ComposeClickableSpan;-><init>(Landroidx/compose/ui/text/LinkAnnotation;)V

    invoke-virtual {v6, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1e
    check-cast v9, Landroid/text/style/ClickableSpan;

    const/16 v11, 0x21

    invoke-virtual {v2, v9, v5, v7, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_12

    :cond_1f
    const/16 v11, 0x21

    :goto_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_11

    :cond_20
    return-object v2
.end method
