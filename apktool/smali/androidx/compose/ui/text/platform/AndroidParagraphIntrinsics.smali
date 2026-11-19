.class public final Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0014\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0006\u0008\u0001\u0012\u00020\u00080\u00070\u0006\u0012\u0012\u0010\u000b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00070\u0006\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;",
        "Landroidx/compose/ui/text/ParagraphIntrinsics;",
        "",
        "text",
        "Landroidx/compose/ui/text/TextStyle;",
        "style",
        "",
        "Landroidx/compose/ui/text/AnnotatedString$Range;",
        "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
        "annotations",
        "Landroidx/compose/ui/text/Placeholder;",
        "placeholders",
        "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
        "fontFamilyResolver",
        "Landroidx/compose/ui/unit/Density;",
        "density",
        "<init>",
        "(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V",
        "ui-text"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Landroidx/compose/ui/text/TextStyle;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/List;

.field public final e:Landroidx/compose/ui/text/font/FontFamily$Resolver;

.field public final f:Landroidx/compose/ui/unit/Density;

.field public final g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

.field public final h:Ljava/lang/CharSequence;

.field public final i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

.field public j:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

.field public final k:Z

.field public final l:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V
    .locals 43
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/text/TextStyle;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "+",
            "Landroidx/compose/ui/text/AnnotatedString$Annotation;",
            ">;>;",
            "Ljava/util/List<",
            "Landroidx/compose/ui/text/AnnotatedString$Range<",
            "Landroidx/compose/ui/text/Placeholder;",
            ">;>;",
            "Landroidx/compose/ui/text/font/FontFamily$Resolver;",
            "Landroidx/compose/ui/unit/Density;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    iput-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    move-object/from16 v4, p4

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    move-object/from16 v4, p5

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->e:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    iput-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f:Landroidx/compose/ui/unit/Density;

    new-instance v4, Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-interface {v3}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result v5

    const/4 v6, 0x1

    invoke-direct {v4, v6, v5}, Landroidx/compose/ui/text/platform/AndroidTextPaint;-><init>(IF)V

    iput-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-static {v1}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->a(Landroidx/compose/ui/text/TextStyle;)Z

    move-result v5

    iget-object v7, v1, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v1, v1, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    const/4 v8, 0x0

    if-nez v5, :cond_0

    move v5, v8

    goto :goto_1

    :cond_0
    sget-object v5, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    sget-object v5, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    check-cast v5, Landroidx/compose/ui/text/platform/DefaultImpl;

    iget-object v9, v5, Landroidx/compose/ui/text/platform/DefaultImpl;->a:Landroidx/compose/runtime/State;

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Landroidx/compose/ui/text/platform/DefaultImpl;->a()Landroidx/compose/runtime/State;

    move-result-object v9

    iput-object v9, v5, Landroidx/compose/ui/text/platform/DefaultImpl;->a:Landroidx/compose/runtime/State;

    goto :goto_0

    :cond_2
    sget-object v9, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->a:Landroidx/compose/ui/text/platform/ImmutableBool;

    :goto_0
    invoke-interface {v9}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_1
    iput-boolean v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    iget v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->b:I

    iget-object v9, v7, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    sget-object v10, Landroidx/compose/ui/text/style/TextDirection;->b:Landroidx/compose/ui/text/style/TextDirection$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v10, Landroidx/compose/ui/text/style/TextDirection;->f:I

    if-ne v5, v10, :cond_4

    :cond_3
    :goto_2
    const/4 v5, 0x2

    goto :goto_4

    :cond_4
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->g:I

    if-ne v5, v10, :cond_6

    :cond_5
    const/4 v5, 0x3

    goto :goto_4

    :cond_6
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->c:I

    if-ne v5, v10, :cond_7

    move v5, v8

    goto :goto_4

    :cond_7
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->d:I

    if-ne v5, v10, :cond_8

    move v5, v6

    goto :goto_4

    :cond_8
    sget v10, Landroidx/compose/ui/text/style/TextDirection;->e:I

    if-ne v5, v10, :cond_9

    goto :goto_3

    :cond_9
    if-nez v5, :cond_7e

    :goto_3
    if-eqz v9, :cond_a

    iget-object v5, v9, Landroidx/compose/ui/text/intl/LocaleList;->b:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/intl/Locale;

    iget-object v5, v5, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    if-nez v5, :cond_b

    :cond_a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v5

    if-eqz v5, :cond_3

    if-eq v5, v6, :cond_5

    goto :goto_2

    :goto_4
    iput v5, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    new-instance v5, Landroidx/compose/ui/text/platform/a;

    invoke-direct {v5, v0}, Landroidx/compose/ui/text/platform/a;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;)V

    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->i:Landroidx/compose/ui/text/style/TextMotion;

    if-nez v1, :cond_c

    sget-object v1, Landroidx/compose/ui/text/style/TextMotion;->c:Landroidx/compose/ui/text/style/TextMotion$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/ui/text/style/TextMotion;->d:Landroidx/compose/ui/text/style/TextMotion;

    :cond_c
    iget-boolean v9, v1, Landroidx/compose/ui/text/style/TextMotion;->b:Z

    if-eqz v9, :cond_d

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v9

    or-int/lit16 v9, v9, 0x80

    goto :goto_5

    :cond_d
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, -0x81

    :goto_5
    invoke-virtual {v4, v9}, Landroid/graphics/Paint;->setFlags(I)V

    iget v1, v1, Landroidx/compose/ui/text/style/TextMotion;->a:I

    sget-object v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->b:Landroidx/compose/ui/text/style/TextMotion$Linearity$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->c:I

    if-ne v1, v9, :cond_e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x40

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_e
    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->d:I

    if-ne v1, v9, :cond_f

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_f
    sget v9, Landroidx/compose/ui/text/style/TextMotion$Linearity;->e:I

    if-ne v1, v9, :cond_10

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setHinting(I)V

    goto :goto_6

    :cond_10
    invoke-virtual {v4}, Landroid/graphics/Paint;->getFlags()I

    :goto_6
    move-object v1, v2

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move v9, v8

    :goto_7
    if-ge v9, v1, :cond_12

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v14, v10

    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v14, v14, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v14, :cond_11

    goto :goto_8

    :cond_11
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_12
    const/4 v10, 0x0

    :goto_8
    if-eqz v10, :cond_13

    move v1, v6

    goto :goto_9

    :cond_13
    move v1, v8

    :goto_9
    iget-wide v9, v7, Landroidx/compose/ui/text/SpanStyle;->b:J

    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v14, v7, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v15, v7, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    iget-object v11, v7, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object v12, v7, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    const/16 p4, 0x0

    iget-object v13, v7, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-wide/from16 v16, v9

    iget-wide v8, v7, Landroidx/compose/ui/text/SpanStyle;->h:J

    move v10, v6

    move-object/from16 v18, v7

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v6

    sget-object v19, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p3, v10

    move-object/from16 v19, v11

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_15

    move-wide/from16 v10, v16

    invoke-interface {v3, v10, v11}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    move/from16 v16, v1

    move-object/from16 v17, v2

    :cond_14
    :goto_a
    move-object/from16 v1, v18

    goto :goto_b

    :cond_15
    move-wide/from16 v10, v16

    move/from16 v16, v1

    move-object/from16 v17, v2

    sget-wide v1, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v6, v7, v1, v2}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v2

    mul-float/2addr v2, v1

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_a

    :goto_b
    iget-object v2, v1, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v2, :cond_16

    if-nez v14, :cond_16

    if-eqz v17, :cond_1a

    :cond_16
    if-nez v17, :cond_17

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->c:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/text/font/FontWeight;->h:Landroidx/compose/ui/text/font/FontWeight;

    goto :goto_c

    :cond_17
    move-object/from16 v6, v17

    :goto_c
    if-eqz v14, :cond_18

    iget v7, v14, Landroidx/compose/ui/text/font/FontStyle;->a:I

    goto :goto_d

    :cond_18
    sget-object v7, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    :goto_d
    new-instance v10, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v10, v7}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    iget-object v7, v1, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v7, :cond_19

    iget v7, v7, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    goto :goto_e

    :cond_19
    sget-object v7, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v7, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    :goto_e
    new-instance v11, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v11, v7}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    invoke-virtual {v5, v2, v6, v10, v11}, Landroidx/compose/ui/text/platform/a;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_1a
    const/16 v2, 0xa

    if-eqz v19, :cond_1c

    sget-object v6, Landroidx/compose/ui/text/intl/LocaleList;->d:Landroidx/compose/ui/text/intl/LocaleList$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/text/intl/PlatformLocaleKt;->a:Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;

    invoke-virtual {v6}, Landroidx/compose/ui/text/intl/AndroidLocaleDelegateAPI24;->a()Landroidx/compose/ui/text/intl/LocaleList;

    move-result-object v6

    move-object/from16 v7, v19

    invoke-virtual {v7, v6}, Landroidx/compose/ui/text/intl/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1c

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v7, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v7, Landroidx/compose/ui/text/intl/LocaleList;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/compose/ui/text/intl/Locale;

    iget-object v10, v10, Landroidx/compose/ui/text/intl/Locale;->a:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1b
    const/4 v10, 0x0

    new-array v7, v10, [Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    array-length v7, v6

    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    new-instance v7, Landroid/os/LocaleList;

    invoke-direct {v7, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    :cond_1c
    if-eqz v15, :cond_1d

    const-string v6, ""

    invoke-virtual {v15, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1d

    invoke-virtual {v4, v15}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_1d
    if-eqz v13, :cond_1e

    sget-object v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->c:Landroidx/compose/ui/text/style/TextGeometricTransform$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Landroidx/compose/ui/text/style/TextGeometricTransform;->d:Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v13, v6}, Landroidx/compose/ui/text/style/TextGeometricTransform;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v6

    iget v7, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextScaleX(F)V

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v6

    iget v7, v13, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    add-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_1e
    invoke-interface {v12}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->d(J)V

    invoke-interface {v12}, Landroidx/compose/ui/text/style/TextForegroundStyle;->e()Landroidx/compose/ui/graphics/Brush;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/geometry/Size;->b:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/geometry/Size;->c:J

    invoke-interface {v12}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v7

    invoke-virtual {v4, v6, v10, v11, v7}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->c(Landroidx/compose/ui/graphics/Brush;JF)V

    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->f(Landroidx/compose/ui/graphics/Shadow;)V

    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->g(Landroidx/compose/ui/text/style/TextDecoration;)V

    iget-object v6, v1, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    invoke-virtual {v4, v6}, Landroidx/compose/ui/text/platform/AndroidTextPaint;->e(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v6

    sget-object v10, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v6, v7, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_21

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v6

    cmpg-float v6, v6, v7

    if-nez v6, :cond_1f

    goto :goto_10

    :cond_1f
    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextScaleX()F

    move-result v12

    mul-float/2addr v12, v6

    invoke-interface {v3, v8, v9}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v3

    cmpg-float v6, v12, v7

    if-nez v6, :cond_20

    goto :goto_11

    :cond_20
    div-float/2addr v3, v12

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    goto :goto_11

    :cond_21
    :goto_10
    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v12

    sget-wide v14, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v3

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    :cond_22
    :goto_11
    iget-wide v3, v1, Landroidx/compose/ui/text/SpanStyle;->l:J

    iget-object v1, v1, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v16, :cond_24

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v12

    invoke-static {v12, v13, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v6

    cmpg-float v6, v6, v7

    if-nez v6, :cond_23

    goto :goto_12

    :cond_23
    move/from16 v6, p3

    goto :goto_13

    :cond_24
    :goto_12
    const/4 v6, 0x0

    :goto_13
    sget-object v10, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v3, v4, v10, v11}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v12

    if-nez v12, :cond_25

    sget-wide v12, Landroidx/compose/ui/graphics/Color;->h:J

    invoke-static {v3, v4, v12, v13}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v12

    if-nez v12, :cond_25

    move/from16 v12, p3

    goto :goto_14

    :cond_25
    const/4 v12, 0x0

    :goto_14
    if-eqz v1, :cond_27

    sget-object v13, Landroidx/compose/ui/text/style/BaselineShift;->b:Landroidx/compose/ui/text/style/BaselineShift$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v13, v1, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    invoke-static {v13, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-nez v13, :cond_26

    goto :goto_15

    :cond_26
    move/from16 v13, p3

    goto :goto_16

    :cond_27
    :goto_15
    const/4 v13, 0x0

    :goto_16
    if-nez v6, :cond_28

    if-nez v12, :cond_28

    if-nez v13, :cond_28

    move-object/from16 v14, p4

    goto :goto_1b

    :cond_28
    if-eqz v6, :cond_29

    :goto_17
    move-wide/from16 v24, v8

    goto :goto_18

    :cond_29
    sget-object v6, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v8, Landroidx/compose/ui/unit/TextUnit;->d:J

    goto :goto_17

    :goto_18
    if-eqz v12, :cond_2a

    move-wide/from16 v29, v3

    goto :goto_19

    :cond_2a
    move-wide/from16 v29, v10

    :goto_19
    if-eqz v13, :cond_2b

    move-object/from16 v26, v1

    goto :goto_1a

    :cond_2b
    move-object/from16 v26, p4

    :goto_1a
    new-instance v14, Landroidx/compose/ui/text/SpanStyle;

    const v35, 0xf67f

    const/16 v36, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-direct/range {v14 .. v36}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1b
    iget-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    if-eqz v14, :cond_2e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_1c
    if-ge v4, v1, :cond_2d

    if-nez v4, :cond_2c

    new-instance v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v10, 0x0

    invoke-direct {v6, v14, v10, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    goto :goto_1d

    :cond_2c
    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->c:Ljava/util/List;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    :goto_1d
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2d
    move-object v1, v3

    :cond_2e
    iget-object v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->a:Ljava/lang/String;

    iget-object v4, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    iget-object v6, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    iget-object v8, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->d:Ljava/util/List;

    iget-object v12, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->f:Landroidx/compose/ui/unit/Density;

    iget-boolean v9, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    sget-object v10, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    if-eqz v9, :cond_32

    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    move-result v9

    if-eqz v9, :cond_32

    iget-object v9, v6, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v9, :cond_2f

    iget-object v9, v9, Landroidx/compose/ui/text/PlatformTextStyle;->b:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v9, :cond_2f

    iget v9, v9, Landroidx/compose/ui/text/PlatformParagraphStyle;->b:I

    new-instance v10, Landroidx/compose/ui/text/EmojiSupportMatch;

    invoke-direct {v10, v9}, Landroidx/compose/ui/text/EmojiSupportMatch;-><init>(I)V

    goto :goto_1e

    :cond_2f
    move-object/from16 v10, p4

    :goto_1e
    sget-object v9, Landroidx/compose/ui/text/EmojiSupportMatch;->b:Landroidx/compose/ui/text/EmojiSupportMatch$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Landroidx/compose/ui/text/EmojiSupportMatch;->d:I

    if-nez v10, :cond_31

    :cond_30
    const/4 v9, 0x0

    goto :goto_1f

    :cond_31
    iget v10, v10, Landroidx/compose/ui/text/EmojiSupportMatch;->a:I

    if-ne v10, v9, :cond_30

    move/from16 v9, p3

    :goto_1f
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->a()Landroidx/emoji2/text/EmojiCompat;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v11, v9, v3}, Landroidx/emoji2/text/EmojiCompat;->j(IIILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_20

    :cond_32
    move-object v9, v3

    :goto_20
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    const-wide/16 v13, 0x0

    const-wide v15, 0xff00000000L

    if-eqz v10, :cond_33

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, v6, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->c:Landroidx/compose/ui/text/style/TextIndent$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/text/style/TextIndent;->d:Landroidx/compose/ui/text/style/TextIndent;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, v6, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-wide v10, v10, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    sget-object v17, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    and-long/2addr v10, v15

    cmp-long v10, v10, v13

    if-nez v10, :cond_33

    goto/16 :goto_50

    :cond_33
    instance-of v10, v9, Landroid/text/Spannable;

    if-eqz v10, :cond_34

    check-cast v9, Landroid/text/Spannable;

    goto :goto_21

    :cond_34
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v9}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v9, v10

    :goto_21
    iget-object v10, v6, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v11, v6, Landroidx/compose/ui/text/TextStyle;->b:Landroidx/compose/ui/text/ParagraphStyle;

    iget-object v10, v10, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    sget-object v17, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v17, v7

    sget-object v7, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/16 v10, 0x21

    if-eqz v7, :cond_35

    sget-object v7, Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt;->a:Landroidx/compose/ui/text/platform/AndroidParagraphHelper_androidKt$NoopSpan$1;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    move-wide/from16 v18, v13

    const/4 v13, 0x0

    invoke-interface {v9, v7, v13, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_22

    :cond_35
    move-wide/from16 v18, v13

    :goto_22
    iget-object v3, v6, Landroidx/compose/ui/text/TextStyle;->c:Landroidx/compose/ui/text/PlatformTextStyle;

    if-eqz v3, :cond_36

    iget-object v3, v3, Landroidx/compose/ui/text/PlatformTextStyle;->b:Landroidx/compose/ui/text/PlatformParagraphStyle;

    if-eqz v3, :cond_36

    iget-boolean v3, v3, Landroidx/compose/ui/text/PlatformParagraphStyle;->a:Z

    goto :goto_23

    :cond_36
    const/4 v3, 0x0

    :goto_23
    if-eqz v3, :cond_38

    iget-object v3, v11, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v3, :cond_38

    iget-wide v2, v11, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    invoke-static {v2, v3, v4, v12}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(JFLandroidx/compose/ui/unit/Density;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_37

    new-instance v3, Landroidx/compose/ui/text/android/style/LineHeightSpan;

    invoke-direct {v3, v2}, Landroidx/compose/ui/text/android/style/LineHeightSpan;-><init>(F)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v13, 0x0

    invoke-interface {v9, v3, v13, v2, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_37
    const/4 v13, 0x0

    goto :goto_29

    :cond_38
    iget-object v3, v11, Landroidx/compose/ui/text/ParagraphStyle;->f:Landroidx/compose/ui/text/style/LineHeightStyle;

    if-nez v3, :cond_39

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle;->d:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle;->e:Landroidx/compose/ui/text/style/LineHeightStyle;

    :cond_39
    iget-wide v13, v11, Landroidx/compose/ui/text/ParagraphStyle;->c:J

    invoke-static {v13, v14, v4, v12}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->b(JFLandroidx/compose/ui/unit/Density;)F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_37

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3a

    goto :goto_24

    :cond_3a
    invoke-static {v9}, Lkotlin/text/StringsKt;->x(Ljava/lang/CharSequence;)C

    move-result v7

    if-ne v7, v2, :cond_3b

    :goto_24
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    :goto_25
    move/from16 v23, v2

    goto :goto_26

    :cond_3b
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_25

    :goto_26
    new-instance v20, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;

    iget v2, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->b:I

    and-int/lit8 v7, v2, 0x1

    if-lez v7, :cond_3c

    move/from16 v24, p3

    goto :goto_27

    :cond_3c
    const/16 v24, 0x0

    :goto_27
    and-int/lit8 v2, v2, 0x10

    if-lez v2, :cond_3d

    move/from16 v25, p3

    goto :goto_28

    :cond_3d
    const/16 v25, 0x0

    :goto_28
    iget v2, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->a:F

    iget v3, v3, Landroidx/compose/ui/text/style/LineHeightStyle;->c:I

    const/16 v28, 0x0

    const/16 v22, 0x0

    move/from16 v26, v2

    move/from16 v27, v3

    invoke-direct/range {v20 .. v28}, Landroidx/compose/ui/text/android/style/LineHeightStyleSpan;-><init>(FIIZZFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v2, v20

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v13, 0x0

    invoke-interface {v9, v2, v13, v3, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_29
    iget-object v2, v11, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v2, :cond_46

    move/from16 p5, v13

    iget-wide v13, v2, Landroidx/compose/ui/text/style/TextIndent;->a:J

    iget-wide v2, v2, Landroidx/compose/ui/text/style/TextIndent;->b:J

    move-object v7, v11

    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v10

    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_3f

    invoke-static/range {p5 .. p5}, Landroidx/compose/ui/unit/TextUnitKt;->c(I)J

    move-result-wide v10

    invoke-static {v2, v3, v10, v11}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v10

    if-nez v10, :cond_3e

    goto :goto_2b

    :cond_3e
    move-object v15, v7

    const/16 v7, 0x21

    :goto_2a
    move-object/from16 v19, v8

    goto/16 :goto_2f

    :cond_3f
    :goto_2b
    and-long v10, v13, v15

    cmp-long v10, v10, v18

    if-nez v10, :cond_40

    :goto_2c
    move-object v15, v7

    move-object/from16 v19, v8

    const/16 v7, 0x21

    goto/16 :goto_2f

    :cond_40
    and-long v10, v2, v15

    cmp-long v10, v10, v18

    if-nez v10, :cond_41

    goto :goto_2c

    :cond_41
    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v10

    sget-object v15, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v15, v7

    move-object/from16 v19, v8

    sget-wide v7, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v10, v11, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v16

    if-eqz v16, :cond_42

    invoke-interface {v12, v13, v14}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v10

    goto :goto_2d

    :cond_42
    move-wide/from16 v20, v13

    sget-wide v13, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v10, v11, v13, v14}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v10

    mul-float/2addr v10, v4

    goto :goto_2d

    :cond_43
    move/from16 v10, v17

    :goto_2d
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v13

    invoke-static {v13, v14, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_44

    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v2

    goto :goto_2e

    :cond_44
    sget-wide v7, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v13, v14, v7, v8}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v7

    if-eqz v7, :cond_45

    invoke-static {v2, v3}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v2

    mul-float/2addr v2, v4

    goto :goto_2e

    :cond_45
    move/from16 v2, v17

    :goto_2e
    new-instance v3, Landroid/text/style/LeadingMarginSpan$Standard;

    float-to-double v7, v10

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v7, v7

    float-to-int v7, v7

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-float v2, v10

    float-to-int v2, v2

    invoke-direct {v3, v7, v2}, Landroid/text/style/LeadingMarginSpan$Standard;-><init>(II)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v7, 0x21

    const/4 v13, 0x0

    invoke-interface {v9, v3, v13, v2, v7}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2f

    :cond_46
    move v7, v10

    move-object v15, v11

    goto/16 :goto_2a

    :goto_2f
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_30
    if-ge v10, v8, :cond_4a

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v13, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v14, v13, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v14, :cond_49

    move-object v14, v13

    check-cast v14, Landroidx/compose/ui/text/SpanStyle;

    iget-object v7, v14, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v7, :cond_48

    iget-object v7, v14, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v7, :cond_48

    iget-object v7, v14, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v7, :cond_47

    goto :goto_31

    :cond_47
    check-cast v13, Landroidx/compose/ui/text/SpanStyle;

    iget-object v7, v13, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v7, :cond_49

    :cond_48
    :goto_31
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_49
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x21

    goto :goto_30

    :cond_4a
    iget-object v6, v6, Landroidx/compose/ui/text/TextStyle;->a:Landroidx/compose/ui/text/SpanStyle;

    iget-object v7, v6, Landroidx/compose/ui/text/SpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    if-nez v7, :cond_4d

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-nez v8, :cond_4d

    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    if-eqz v8, :cond_4b

    goto :goto_32

    :cond_4b
    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v8, :cond_4c

    goto :goto_32

    :cond_4c
    move-object/from16 v6, p4

    goto :goto_33

    :cond_4d
    :goto_32
    iget-object v8, v6, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v10, v6, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v6, v6, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    new-instance v20, Landroidx/compose/ui/text/SpanStyle;

    const v41, 0xffc3

    const/16 v42, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v10

    invoke-direct/range {v20 .. v42}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v6, v20

    :goto_33
    new-instance v7, Lni0;

    const/16 v8, 0x19

    invoke-direct {v7, v9, v5, v8}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v10, p3

    if-gt v5, v10, :cond_50

    const/16 v5, 0x21

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4f

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v8, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    if-nez v6, :cond_4e

    goto :goto_34

    :cond_4e
    invoke-virtual {v6, v8}, Landroidx/compose/ui/text/SpanStyle;->d(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v8

    :goto_34
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v8, v6, v2}, Lni0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    move-object/from16 v16, v3

    goto/16 :goto_3b

    :cond_50
    const/16 v5, 0x21

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v11, v8, 0x2

    new-array v13, v11, [I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v10, 0x0

    :goto_35
    if-ge v10, v14, :cond_51

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    move-object/from16 v16, v3

    iget v3, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    aput v3, v13, v10

    add-int v3, v10, v8

    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    aput v5, v13, v3

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v3, v16

    const/16 v5, 0x21

    goto :goto_35

    :cond_51
    move-object/from16 v16, v3

    const/4 v3, 0x1

    if-le v11, v3, :cond_52

    invoke-static {v13}, Ljava/util/Arrays;->sort([I)V

    :cond_52
    if-eqz v11, :cond_7d

    const/4 v5, 0x0

    aget v8, v13, v5

    move v10, v5

    :goto_36
    if-ge v10, v11, :cond_58

    aget v14, v13, v10

    if-ne v14, v8, :cond_53

    move-object/from16 v21, v2

    move-object/from16 v18, v6

    goto :goto_3a

    :cond_53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v18, v6

    :goto_37
    if-ge v5, v3, :cond_56

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    check-cast v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    move/from16 v20, v3

    iget v3, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    move/from16 v22, v5

    iget v5, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-eq v3, v5, :cond_55

    invoke-static {v8, v14, v3, v5}, Landroidx/compose/ui/text/AnnotatedStringKt;->b(IIII)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-object v2, v2, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/text/SpanStyle;

    if-nez v6, :cond_54

    :goto_38
    move-object v6, v2

    goto :goto_39

    :cond_54
    invoke-virtual {v6, v2}, Landroidx/compose/ui/text/SpanStyle;->d(Landroidx/compose/ui/text/SpanStyle;)Landroidx/compose/ui/text/SpanStyle;

    move-result-object v2

    goto :goto_38

    :cond_55
    :goto_39
    add-int/lit8 v5, v22, 0x1

    move/from16 v3, v20

    move-object/from16 v2, v21

    goto :goto_37

    :cond_56
    move-object/from16 v21, v2

    if-eqz v6, :cond_57

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v6, v2, v3}, Lni0;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_57
    move v8, v14

    :goto_3a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, v18

    move-object/from16 v2, v21

    const/4 v3, 0x1

    const/4 v5, 0x0

    goto :goto_36

    :cond_58
    :goto_3b
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v2, :cond_67

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v8, v7, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v8, :cond_59

    iget v13, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v14, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-ltz v13, :cond_59

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v13, v6, :cond_59

    if-le v14, v13, :cond_59

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-le v14, v6, :cond_5a

    :cond_59
    move/from16 v18, v2

    move v6, v3

    move/from16 v20, v5

    move-object v3, v9

    move-object v9, v12

    goto/16 :goto_43

    :cond_5a
    check-cast v7, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v10, v7, Landroidx/compose/ui/text/SpanStyle;->h:J

    iget-object v6, v7, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    iget-object v8, v7, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    if-eqz v6, :cond_5b

    iget v6, v6, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    move/from16 v18, v2

    new-instance v2, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;

    invoke-direct {v2, v6}, Landroidx/compose/ui/text/android/style/BaselineShiftSpan;-><init>(F)V

    const/16 v6, 0x21

    invoke-interface {v9, v2, v13, v14, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_3d
    move v6, v3

    goto :goto_3e

    :cond_5b
    move/from16 v18, v2

    goto :goto_3d

    :goto_3e
    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v2

    invoke-static {v9, v2, v3, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroid/text/Spannable;JII)V

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->e()Landroidx/compose/ui/graphics/Brush;

    move-result-object v2

    invoke-interface {v8}, Landroidx/compose/ui/text/style/TextForegroundStyle;->a()F

    move-result v3

    if-eqz v2, :cond_5d

    instance-of v8, v2, Landroidx/compose/ui/graphics/SolidColor;

    if-eqz v8, :cond_5c

    check-cast v2, Landroidx/compose/ui/graphics/SolidColor;

    iget-wide v2, v2, Landroidx/compose/ui/graphics/SolidColor;->b:J

    invoke-static {v9, v2, v3, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->c(Landroid/text/Spannable;JII)V

    goto :goto_3f

    :cond_5c
    new-instance v8, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;

    check-cast v2, Landroidx/compose/ui/graphics/ShaderBrush;

    invoke-direct {v8, v2, v3}, Landroidx/compose/ui/text/platform/style/ShaderBrushSpan;-><init>(Landroidx/compose/ui/graphics/ShaderBrush;F)V

    const/16 v2, 0x21

    invoke-interface {v9, v8, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5d
    :goto_3f
    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v2, :cond_5e

    new-instance v3, Landroidx/compose/ui/text/android/style/TextDecorationSpan;

    sget-object v8, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v2, v8}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v8

    move/from16 v20, v5

    sget-object v5, Landroidx/compose/ui/text/style/TextDecoration;->e:Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v2, v5}, Landroidx/compose/ui/text/style/TextDecoration;->a(Landroidx/compose/ui/text/style/TextDecoration;)Z

    move-result v2

    invoke-direct {v3, v8, v2}, Landroidx/compose/ui/text/android/style/TextDecorationSpan;-><init>(ZZ)V

    const/16 v2, 0x21

    invoke-interface {v9, v3, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_40
    move-wide/from16 v21, v10

    goto :goto_41

    :cond_5e
    move/from16 v20, v5

    const/16 v2, 0x21

    goto :goto_40

    :goto_41
    iget-wide v10, v7, Landroidx/compose/ui/text/SpanStyle;->b:J

    invoke-static/range {v9 .. v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->d(Landroid/text/Spannable;JLandroidx/compose/ui/unit/Density;II)V

    move-object v3, v9

    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    if-eqz v5, :cond_5f

    new-instance v8, Landroidx/compose/ui/text/android/style/FontFeatureSpan;

    invoke-direct {v8, v5}, Landroidx/compose/ui/text/android/style/FontFeatureSpan;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v8, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_5f
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v5, :cond_60

    new-instance v8, Landroid/text/style/ScaleXSpan;

    iget v9, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    invoke-direct {v8, v9}, Landroid/text/style/ScaleXSpan;-><init>(F)V

    invoke-interface {v3, v8, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Landroidx/compose/ui/text/android/style/SkewXSpan;

    iget v5, v5, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    invoke-direct {v8, v5}, Landroidx/compose/ui/text/android/style/SkewXSpan;-><init>(F)V

    invoke-interface {v3, v8, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_60
    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {v3, v2, v13, v14}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->e(Landroid/text/Spannable;Landroidx/compose/ui/text/intl/LocaleList;II)V

    iget-wide v8, v7, Landroidx/compose/ui/text/SpanStyle;->l:J

    const-wide/16 v10, 0x10

    cmp-long v2, v8, v10

    if-eqz v2, :cond_61

    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v5

    invoke-direct {v2, v5}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    const/16 v5, 0x21

    invoke-interface {v3, v2, v13, v14, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_61
    iget-object v2, v7, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v2, :cond_63

    iget-wide v8, v2, Landroidx/compose/ui/graphics/Shadow;->b:J

    new-instance v5, Landroidx/compose/ui/text/android/style/ShadowSpan;

    iget-wide v10, v2, Landroidx/compose/ui/graphics/Shadow;->a:J

    invoke-static {v10, v11}, Landroidx/compose/ui/graphics/ColorKt;->i(J)I

    move-result v10

    const/16 v11, 0x20

    move-wide/from16 v23, v8

    shr-long v8, v23, v11

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    const-wide v25, 0xffffffffL

    move-object v9, v12

    and-long v11, v23, v25

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    iget v2, v2, Landroidx/compose/ui/graphics/Shadow;->c:F

    cmpg-float v12, v2, v17

    if-nez v12, :cond_62

    const/4 v2, 0x1

    :cond_62
    invoke-direct {v5, v10, v8, v11, v2}, Landroidx/compose/ui/text/android/style/ShadowSpan;-><init>(IFFF)V

    const/16 v2, 0x21

    invoke-interface {v3, v5, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_42

    :cond_63
    move-object v9, v12

    const/16 v2, 0x21

    :goto_42
    iget-object v5, v7, Landroidx/compose/ui/text/SpanStyle;->p:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    if-eqz v5, :cond_64

    new-instance v7, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;

    invoke-direct {v7, v5}, Landroidx/compose/ui/text/platform/style/DrawStyleSpan;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawStyle;)V

    invoke-interface {v3, v7, v13, v14, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_64
    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_65

    invoke-static/range {v21 .. v22}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_66

    :cond_65
    const/4 v6, 0x1

    :cond_66
    :goto_43
    add-int/lit8 v5, v20, 0x1

    move-object v12, v9

    move/from16 v2, v18

    move-object v9, v3

    move v3, v6

    goto/16 :goto_3c

    :cond_67
    move v6, v3

    move-object v3, v9

    move-object v9, v12

    if-eqz v6, :cond_6d

    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v10, 0x0

    :goto_44
    if-ge v10, v2, :cond_6d

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    instance-of v7, v6, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v7, :cond_68

    iget v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-ltz v7, :cond_68

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_68

    if-le v5, v7, :cond_68

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-le v5, v8, :cond_69

    :cond_68
    move v6, v10

    goto :goto_46

    :cond_69
    check-cast v6, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v11, v6, Landroidx/compose/ui/text/SpanStyle;->h:J

    invoke-static {v11, v12}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v13

    sget-object v6, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v9

    sget-wide v8, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v13, v14, v8, v9}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_6a

    new-instance v8, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;

    move-object v9, v6

    invoke-interface {v9, v11, v12}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v6

    invoke-direct {v8, v6}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanPx;-><init>(F)V

    move v6, v10

    goto :goto_45

    :cond_6a
    move-object v9, v6

    move v6, v10

    move-wide/from16 v20, v11

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v13, v14, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v8

    if-eqz v8, :cond_6b

    new-instance v8, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v10

    invoke-direct {v8, v10}, Landroidx/compose/ui/text/android/style/LetterSpacingSpanEm;-><init>(F)V

    goto :goto_45

    :cond_6b
    move-object/from16 v8, p4

    :goto_45
    if-eqz v8, :cond_6c

    const/16 v10, 0x21

    invoke-interface {v3, v8, v7, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_6c
    :goto_46
    add-int/lit8 v10, v6, 0x1

    goto :goto_44

    :cond_6d
    iget-object v2, v15, Landroidx/compose/ui/text/ParagraphStyle;->d:Landroidx/compose/ui/text/style/TextIndent;

    if-eqz v2, :cond_70

    iget-wide v5, v2, Landroidx/compose/ui/text/style/TextIndent;->a:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->b(J)J

    move-result-wide v7

    sget-object v2, Landroidx/compose/ui/unit/TextUnitType;->b:Landroidx/compose/ui/unit/TextUnitType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->c:J

    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_6e

    invoke-interface {v9, v5, v6}, Landroidx/compose/ui/unit/Density;->E0(J)F

    move-result v7

    goto :goto_47

    :cond_6e
    sget-wide v10, Landroidx/compose/ui/unit/TextUnitType;->d:J

    invoke-static {v7, v8, v10, v11}, Landroidx/compose/ui/unit/TextUnitType;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_6f

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v2

    mul-float v7, v2, v4

    goto :goto_47

    :cond_6f
    move/from16 v7, v17

    :goto_47
    move/from16 v18, v7

    goto :goto_48

    :cond_70
    move/from16 v18, v17

    :goto_48
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_49
    if-ge v5, v2, :cond_73

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v7, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    instance-of v8, v7, Landroidx/compose/ui/text/Bullet;

    if-eqz v8, :cond_71

    check-cast v7, Landroidx/compose/ui/text/Bullet;

    goto :goto_4a

    :cond_71
    move-object/from16 v7, p4

    :goto_4a
    if-eqz v7, :cond_72

    iget-wide v10, v7, Landroidx/compose/ui/text/Bullet;->b:J

    invoke-static {v10, v11, v4, v9}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JFLandroidx/compose/ui/unit/Density;)F

    move-result v11

    iget-wide v12, v7, Landroidx/compose/ui/text/Bullet;->c:J

    invoke-static {v12, v13, v4, v9}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JFLandroidx/compose/ui/unit/Density;)F

    move-result v12

    iget-wide v13, v7, Landroidx/compose/ui/text/Bullet;->d:J

    invoke-static {v13, v14, v4, v9}, Landroidx/compose/ui/text/platform/extensions/SpannableExtensions_androidKt;->a(JFLandroidx/compose/ui/unit/Density;)F

    move-result v13

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_72

    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_72

    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_72

    iget-object v10, v7, Landroidx/compose/ui/text/Bullet;->a:Landroidx/compose/ui/graphics/Shape;

    iget-object v14, v7, Landroidx/compose/ui/text/Bullet;->e:Landroidx/compose/ui/graphics/Brush;

    iget v15, v7, Landroidx/compose/ui/text/Bullet;->f:F

    iget-object v7, v7, Landroidx/compose/ui/text/Bullet;->g:Landroidx/compose/ui/graphics/drawscope/DrawStyle;

    move-object/from16 v17, v9

    new-instance v9, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;

    move-object/from16 v16, v7

    invoke-direct/range {v9 .. v18}, Landroidx/compose/ui/text/platform/style/CustomBulletSpan;-><init>(Landroidx/compose/ui/graphics/Shape;FFFLandroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/unit/Density;F)V

    move-object v7, v9

    move-object/from16 v9, v17

    iget v8, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    const/16 v10, 0x21

    invoke-interface {v3, v7, v8, v6, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_72
    add-int/lit8 v5, v5, 0x1

    goto :goto_49

    :cond_73
    move-object/from16 v8, v19

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v1, :cond_7c

    move-object/from16 v4, v19

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v6, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v6, Landroidx/compose/ui/text/Placeholder;

    iget v7, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    const-class v8, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v3, v7, v5, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    array-length v10, v8

    const/4 v11, 0x0

    :goto_4c
    if-ge v11, v10, :cond_74

    aget-object v12, v8, v11

    check-cast v12, Landroidx/emoji2/text/EmojiSpan;

    invoke-interface {v3, v12}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4c

    :cond_74
    new-instance v8, Landroidx/compose/ui/text/android/style/PlaceholderSpan;

    iget-wide v10, v6, Landroidx/compose/ui/text/Placeholder;->a:J

    iget-wide v12, v6, Landroidx/compose/ui/text/Placeholder;->b:J

    invoke-static {v10, v11}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v10

    iget-wide v14, v6, Landroidx/compose/ui/text/Placeholder;->a:J

    invoke-static {v14, v15}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->a(J)I

    move-result v11

    move-wide v13, v12

    invoke-static {v13, v14}, Landroidx/compose/ui/unit/TextUnit;->c(J)F

    move-result v12

    invoke-static {v13, v14}, Landroidx/compose/ui/text/platform/extensions/PlaceholderExtensions_androidKt;->a(J)I

    move-result v13

    iget v6, v6, Landroidx/compose/ui/text/Placeholder;->c:I

    sget-object v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->a:Landroidx/compose/ui/text/PlaceholderVerticalAlign$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->b:I

    if-ne v6, v14, :cond_75

    move-object v14, v9

    const/4 v15, 0x0

    :goto_4d
    move-object v9, v8

    goto :goto_4f

    :cond_75
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->c:I

    if-ne v6, v14, :cond_76

    move-object v14, v9

    const/4 v15, 0x1

    goto :goto_4d

    :cond_76
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->d:I

    if-ne v6, v14, :cond_77

    move-object v14, v9

    const/4 v15, 0x2

    goto :goto_4d

    :cond_77
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->e:I

    if-ne v6, v14, :cond_78

    move-object v14, v9

    const/4 v15, 0x3

    goto :goto_4d

    :cond_78
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->f:I

    if-ne v6, v14, :cond_79

    const/4 v6, 0x4

    :goto_4e
    move v15, v6

    move-object v14, v9

    goto :goto_4d

    :cond_79
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->g:I

    if-ne v6, v14, :cond_7a

    const/4 v6, 0x5

    goto :goto_4e

    :cond_7a
    sget v14, Landroidx/compose/ui/text/PlaceholderVerticalAlign;->h:I

    if-ne v6, v14, :cond_7b

    const/4 v6, 0x6

    goto :goto_4e

    :goto_4f
    invoke-direct/range {v9 .. v15}, Landroidx/compose/ui/text/android/style/PlaceholderSpan;-><init>(FIFILandroidx/compose/ui/unit/Density;I)V

    move-object v6, v9

    move-object v9, v14

    const/16 v10, 0x21

    invoke-interface {v3, v6, v7, v5, v10}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v4

    goto/16 :goto_4b

    :cond_7b
    const-string v0, "Invalid PlaceholderVerticalAlign"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    throw p4

    :cond_7c
    move-object v9, v3

    :goto_50
    iput-object v9, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->h:Ljava/lang/CharSequence;

    new-instance v1, Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget-object v2, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->g:Landroidx/compose/ui/text/platform/AndroidTextPaint;

    iget v3, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->l:I

    invoke-direct {v1, v9, v2, v3}, Landroidx/compose/ui/text/android/LayoutIntrinsics;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V

    iput-object v1, v0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    return-void

    :cond_7d
    const-string v0, "Array is empty."

    invoke-static {v0}, Lzy0;->c(Ljava/lang/String;)V

    throw p4

    :cond_7e
    const/16 p4, 0x0

    const-string v0, "Invalid TextDirection."

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    throw p4
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->j:Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/text/platform/TypefaceDirtyTrackerLinkedList;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->k:Z

    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->b:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p0}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics_androidKt;->a(Landroidx/compose/ui/text/TextStyle;)Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    sget-object p0, Landroidx/compose/ui/text/platform/EmojiCompatStatus;->a:Landroidx/compose/ui/text/platform/EmojiCompatStatusDelegate;

    check-cast p0, Landroidx/compose/ui/text/platform/DefaultImpl;

    iget-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->a:Landroidx/compose/runtime/State;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Landroidx/emoji2/text/EmojiCompat;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/text/platform/DefaultImpl;->a()Landroidx/compose/runtime/State;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/text/platform/DefaultImpl;->a:Landroidx/compose/runtime/State;

    goto :goto_1

    :cond_2
    sget-object v0, Landroidx/compose/ui/text/platform/EmojiCompatStatus_androidKt;->a:Landroidx/compose/ui/text/platform/ImmutableBool;

    :goto_1
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    return v1

    :cond_4
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final b()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->c()F

    move-result p0

    return p0
.end method

.method public final c()F
    .locals 9

    iget-object p0, p0, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->i:Landroidx/compose/ui/text/android/LayoutIntrinsics;

    iget v0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    iget-object v1, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b:Landroid/text/TextPaint;

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    return p0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/BreakIterator;->getLineInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    move-result-object v0

    new-instance v2, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;

    iget-object v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->a:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v5, v4}, Landroidx/compose/ui/text/android/CharSequenceCharacterIterator;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v2}, Ljava/text/BreakIterator;->setText(Ljava/text/CharacterIterator;)V

    new-instance v2, Ljava/util/PriorityQueue;

    sget-object v3, Landroidx/compose/ui/text/android/LayoutIntrinsics_androidKt;->a:Lx5;

    const/16 v4, 0xa

    invoke-direct {v2, v4, v3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    :goto_0
    move v8, v5

    move v5, v3

    move v3, v8

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    new-instance v6, Lkotlin/ranges/IntRange;

    invoke-direct {v6, v3, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/ranges/IntRange;

    if-eqz v6, :cond_2

    iget v7, v6, Lkotlin/ranges/IntProgression;->c:I

    iget v6, v6, Lkotlin/ranges/IntProgression;->b:I

    sub-int/2addr v7, v6

    sub-int v6, v5, v3

    if-ge v7, v6, :cond_2

    invoke-virtual {v2}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    new-instance v6, Lkotlin/ranges/IntRange;

    invoke-direct {v6, v3, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v2, v6}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/text/BreakIterator;->next()I

    move-result v3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    iget v3, v2, Lkotlin/ranges/IntProgression;->b:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->c:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4, v3, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    move v3, v2

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/ranges/IntRange;

    iget v4, v2, Lkotlin/ranges/IntProgression;->b:I

    iget v2, v2, Lkotlin/ranges/IntProgression;->c:I

    invoke-virtual {p0}, Landroidx/compose/ui/text/android/LayoutIntrinsics;->b()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5, v4, v2, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_2

    :cond_5
    :goto_3
    iput v3, p0, Landroidx/compose/ui/text/android/LayoutIntrinsics;->e:F

    return v3

    :cond_6
    invoke-static {}, Lb21;->x()V

    return v3
.end method
