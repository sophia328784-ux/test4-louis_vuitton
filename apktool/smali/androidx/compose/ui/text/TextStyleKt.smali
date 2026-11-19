.class public abstract Landroidx/compose/ui/text/TextStyleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/TextStyleKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;
    .locals 31

    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/text/TextStyle;

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    sget-object v3, Landroidx/compose/ui/text/SpanStyleKt;->d:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    new-instance v4, Lnw0;

    const/16 v5, 0x11

    invoke-direct {v4, v5}, Lnw0;-><init>(I)V

    invoke-interface {v3, v4}, Landroidx/compose/ui/text/style/TextForegroundStyle;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-result-object v7

    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->b:J

    sget-object v5, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    const-wide v27, 0xff00000000L

    and-long v5, v3, v27

    const-wide/16 v29, 0x0

    cmp-long v5, v5, v29

    if-nez v5, :cond_0

    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->a:J

    :cond_0
    move-wide v8, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-nez v3, :cond_1

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    :cond_1
    move-object v10, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v3, :cond_2

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->a:I

    goto :goto_0

    :cond_2
    sget-object v3, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    new-instance v11, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v11, v3}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    goto :goto_1

    :cond_3
    sget-object v3, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v3, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    :goto_1
    new-instance v12, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v12, v3}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v3, :cond_4

    sget-object v3, Landroidx/compose/ui/text/font/FontFamily;->b:Landroidx/compose/ui/text/font/FontFamily$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/font/FontFamily;->c:Landroidx/compose/ui/text/font/DefaultFontFamily;

    :cond_4
    move-object v13, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    if-nez v3, :cond_5

    const-string v3, ""

    :cond_5
    move-object v14, v3

    iget-wide v3, v2, Landroidx/compose/ui/text/SpanStyle;->h:J

    and-long v5, v3, v27

    cmp-long v5, v5, v29

    if-nez v5, :cond_6

    sget-wide v3, Landroidx/compose/ui/text/SpanStyleKt;->b:J

    :cond_6
    move-wide v15, v3

    iget-object v3, v2, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget v3, v3, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    goto :goto_2

    :cond_7
    sget-object v3, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v3, v4

    :goto_2
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_8

    sget-object v3, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_3

    :cond_8
    move v4, v3

    :goto_3
    new-instance v3, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v3, v4}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-nez v4, :cond_9

    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->c:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/style/TextGeometricTransform;->d:Landroidx/compose/ui/text/style/TextGeometricTransform;

    :cond_9
    move-object/from16 v18, v4

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    if-nez v4, :cond_a

    sget-object v4, Landroidx/compose/ui/text/intl/LocaleList;->d:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->a:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v4}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->a()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v4

    :cond_a
    move-object/from16 v19, v4

    iget-wide v4, v2, Landroidx/compose/ui/text/SpanStyle;->l:J

    const-wide/16 v20, 0x10

    cmp-long v6, v4, v20

    if-eqz v6, :cond_b

    :goto_4
    move-wide/from16 v20, v4

    goto :goto_5

    :cond_b
    sget-wide v4, Landroidx/compose/ui/text/SpanStyleKt;->c:J

    goto :goto_4

    :goto_5
    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    if-nez v4, :cond_c

    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    :cond_c
    move-object/from16 v22, v4

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-nez v4, :cond_d

    sget-object v4, Landroidx/compose/ui/graphics/Shadow;->d:Landroidx/compose/ui/graphics/Shadow$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/graphics/Shadow;->e:Landroidx/compose/ui/graphics/Shadow;

    :cond_d
    move-object/from16 v23, v4

    iget-object v4, v2, Landroidx/compose/ui/text/SpanStyle;->o:Landroidx/compose/ui/text/PlatformSpanStyle;

    iget-object v2, v2, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-nez v2, :cond_e

    sget-object v2, Landroidx/compose/ui/graphics/drawscope/Fill;->a:Landroidx/compose/ui/graphics/drawscope/Fill;

    :cond_e
    move-object/from16 v25, v2

    new-instance v6, Landroidx/compose/ui/text/SpanStyle;

    const/16 v26, 0x0

    move-object/from16 v17, v3

    move-object/from16 v24, v4

    invoke-direct/range {v6 .. v26}, Landroidx/compose/ui/text/SpanStyle;-><init>(Landroidx/compose/ui/text/style/TextForegroundStyle;JLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v0, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    sget v3, Landroidx/compose/ui/text/ParagraphStyleKt;->b:I

    new-instance v7, Landroidx/compose/ui/text/ParagraphStyle;

    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    iget v4, v2, Landroidx/compose/ui/text/ParagraphStyle;->h:I

    iget v5, v2, Landroidx/compose/ui/text/ParagraphStyle;->g:I

    sget-object v8, Landroidx/compose/ui/text/style/TextAlign;->b:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_f

    sget v3, Landroidx/compose/ui/text/style/TextAlign;->g:I

    :goto_6
    move v8, v3

    goto :goto_7

    :cond_f
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->a:I

    goto :goto_6

    :goto_7
    iget v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    sget-object v9, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/TextDirection;->e:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v3, v9, :cond_13

    sget-object v3, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v12, :cond_12

    if-ne v3, v11, :cond_11

    sget v3, Landroidx/compose/ui/text/style/TextDirection;->g:I

    :cond_10
    :goto_8
    move v9, v3

    goto :goto_9

    :cond_11
    invoke-static {}, Lv40;->g()V

    return-object v10

    :cond_12
    sget v3, Landroidx/compose/ui/text/style/TextDirection;->f:I

    goto :goto_8

    :cond_13
    if-nez v3, :cond_10

    sget-object v3, Landroidx/compose/ui/text/TextStyleKt$WhenMappings;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v3, v3, v9

    if-eq v3, v12, :cond_15

    if-ne v3, v11, :cond_14

    sget v3, Landroidx/compose/ui/text/style/TextDirection;->d:I

    goto :goto_8

    :cond_14
    invoke-static {}, Lv40;->g()V

    return-object v10

    :cond_15
    sget v3, Landroidx/compose/ui/text/style/TextDirection;->c:I

    goto :goto_8

    :goto_9
    iget-wide v10, v2, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    and-long v12, v10, v27

    cmp-long v3, v12, v29

    if-nez v3, :cond_16

    sget-wide v10, Landroidx/compose/ui/text/ParagraphStyleKt;->a:J

    :cond_16
    iget-object v3, v2, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-nez v3, :cond_17

    sget-object v3, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/style/TextIndent;->d:Landroidx/compose/ui/text/style/TextIndent;

    :cond_17
    move-object v12, v3

    iget-object v13, v2, Landroidx/compose/ui/text/ParagraphStyle;->e:Landroidx/compose/ui/text/PlatformParagraphStyle;

    iget-object v14, v2, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    sget-object v3, Landroidx/compose/ui/text/style/LineBreak;->b:Landroidx/compose/ui/text/style/LineBreak$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_18

    sget v5, Landroidx/compose/ui/text/style/LineBreak;->c:I

    :cond_18
    move v15, v5

    sget-object v3, Landroidx/compose/ui/text/style/Hyphens;->b:Landroidx/compose/ui/text/style/Hyphens$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v4, :cond_19

    sget v4, Landroidx/compose/ui/text/style/Hyphens;->c:I

    :cond_19
    move/from16 v16, v4

    iget-object v2, v2, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v2, :cond_1a

    sget-object v2, Landroidx/compose/ui/text/style/TextMotion;->c:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/text/style/TextMotion;->d:Landroidx/compose/ui/text/style/TextMotion;

    :cond_1a
    move-object/from16 v17, v2

    const/16 v18, 0x0

    invoke-direct/range {v7 .. v18}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    invoke-direct {v1, v6, v7, v0}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;Landroidx/compose/ui/text/PlatformTextStyle;)V

    return-object v1
.end method
