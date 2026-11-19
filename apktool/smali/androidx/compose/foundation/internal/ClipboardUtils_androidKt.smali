.class public abstract Landroidx/compose/foundation/internal/ClipboardUtils_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "foundation"
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
.method public static final a(Landroidx/compose/ui/platform/ClipEntry;)Landroidx/compose/ui/text/AnnotatedString;
    .locals 39

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/compose/ui/platform/ClipEntry;->a:Landroid/content/ClipData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_21

    instance-of v3, v0, Landroid/text/Spanned;

    const/4 v4, 0x2

    if-nez v3, :cond_0

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2, v4, v2}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1

    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v5, Landroid/text/Annotation;

    invoke-interface {v2, v1, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/Annotation;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Lkotlin/collections/ArraysKt;->A([Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1f

    move v6, v1

    :goto_0
    aget-object v8, v3, v6

    invoke-virtual {v8}, Landroid/text/Annotation;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "androidx.compose.text.SpanStyle"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object v4, v0

    move/from16 p0, v1

    goto/16 :goto_10

    :cond_1
    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    invoke-interface {v2, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    new-instance v11, Landroidx/compose/foundation/internal/DecodeHelper;

    invoke-virtual {v8}, Landroid/text/Annotation;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Landroidx/compose/foundation/internal/DecodeHelper;-><init>(Ljava/lang/String;)V

    new-instance v12, Landroidx/compose/foundation/internal/MutableSpanStyle;

    const/16 v31, 0x3fff

    const/16 v32, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v12 .. v32}, Landroidx/compose/foundation/internal/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    iget-object v8, v11, Landroidx/compose/foundation/internal/DecodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_2

    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v13

    const/16 v15, 0x8

    if-ne v13, v14, :cond_5

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lt v8, v15, :cond_2

    invoke-virtual {v11}, Landroidx/compose/foundation/internal/DecodeHelper;->a()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->a:J

    goto :goto_1

    :cond_2
    move/from16 p0, v1

    :cond_3
    move v15, v4

    :cond_4
    :goto_2
    move-object v4, v0

    goto/16 :goto_f

    :cond_5
    move/from16 p0, v1

    const/4 v1, 0x5

    if-ne v13, v4, :cond_6

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v8

    if-lt v8, v1, :cond_3

    invoke-virtual {v11}, Landroidx/compose/foundation/internal/DecodeHelper;->b()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->b:J

    :goto_3
    move/from16 v1, p0

    goto :goto_1

    :cond_6
    const/4 v15, 0x3

    const/4 v4, 0x4

    if-ne v13, v15, :cond_8

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v4, :cond_7

    new-instance v1, Landroidx/compose/ui/text/font/FontWeight;

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v1, v4}, Landroidx/compose/ui/text/font/FontWeight;-><init>(I)V

    iput-object v1, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    :goto_4
    const/4 v4, 0x2

    goto :goto_3

    :cond_7
    move-object v4, v0

    const/4 v15, 0x2

    goto/16 :goto_f

    :cond_8
    if-ne v13, v4, :cond_b

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v14, :cond_7

    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    move/from16 v1, p0

    goto :goto_6

    :cond_9
    if-ne v1, v14, :cond_a

    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/font/FontStyle;->c:I

    goto :goto_6

    :cond_a
    sget-object v1, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_5

    :goto_6
    new-instance v4, Landroidx/compose/ui/text/font/FontStyle;

    invoke-direct {v4, v1}, Landroidx/compose/ui/text/font/FontStyle;-><init>(I)V

    iput-object v4, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    goto :goto_4

    :cond_b
    if-ne v13, v1, :cond_12

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v14, :cond_11

    invoke-virtual {v8}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v1, p0

    :goto_7
    const/4 v15, 0x2

    goto :goto_8

    :cond_c
    if-ne v1, v14, :cond_d

    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    goto :goto_7

    :cond_d
    if-ne v1, v15, :cond_e

    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/font/FontSynthesis;->d:I

    goto :goto_7

    :cond_e
    const/4 v15, 0x2

    if-ne v1, v15, :cond_f

    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v1, Landroidx/compose/ui/text/font/FontSynthesis;->c:I

    goto :goto_8

    :cond_f
    sget-object v1, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v1, p0

    :goto_8
    new-instance v4, Landroidx/compose/ui/text/font/FontSynthesis;

    invoke-direct {v4, v1}, Landroidx/compose/ui/text/font/FontSynthesis;-><init>(I)V

    iput-object v4, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    :cond_10
    :goto_9
    move/from16 v1, p0

    :goto_a
    move v4, v15

    goto/16 :goto_1

    :cond_11
    const/4 v15, 0x2

    goto/16 :goto_2

    :cond_12
    const/4 v15, 0x2

    const/4 v14, 0x6

    if-ne v13, v14, :cond_13

    invoke-virtual {v8}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->g:Ljava/lang/String;

    goto :goto_9

    :cond_13
    const/4 v14, 0x7

    if-ne v13, v14, :cond_14

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v4

    if-lt v4, v1, :cond_4

    invoke-virtual {v11}, Landroidx/compose/foundation/internal/DecodeHelper;->b()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->h:J

    goto :goto_9

    :cond_14
    const/16 v1, 0x8

    if-ne v13, v1, :cond_15

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v4, :cond_4

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    new-instance v4, Landroidx/compose/ui/text/style/BaselineShift;

    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/BaselineShift;-><init>(F)V

    iput-object v4, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    goto :goto_9

    :cond_15
    const/16 v1, 0x9

    if-ne v13, v1, :cond_16

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/16 v14, 0x8

    if-lt v1, v14, :cond_4

    new-instance v1, Landroidx/compose/ui/text/style/TextGeometricTransform;

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    invoke-direct {v1, v4, v8}, Landroidx/compose/ui/text/style/TextGeometricTransform;-><init>(FF)V

    iput-object v1, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    goto :goto_9

    :cond_16
    const/16 v14, 0x8

    const/16 v1, 0xa

    if-ne v13, v1, :cond_17

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v14, :cond_4

    invoke-virtual {v11}, Landroidx/compose/foundation/internal/DecodeHelper;->a()J

    move-result-wide v13

    iput-wide v13, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->l:J

    goto :goto_9

    :cond_17
    const/16 v1, 0xb

    if-ne v13, v1, :cond_1e

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    if-lt v1, v4, :cond_4

    invoke-virtual {v8}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->b:Landroidx/compose/ui/text/style/TextDecoration$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->e:Landroidx/compose/ui/text/style/TextDecoration;

    iget v8, v4, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    and-int/2addr v8, v1

    if-eqz v8, :cond_18

    const/4 v8, 0x1

    goto :goto_b

    :cond_18
    move/from16 v8, p0

    :goto_b
    sget-object v13, Landroidx/compose/ui/text/style/TextDecoration;->d:Landroidx/compose/ui/text/style/TextDecoration;

    iget v14, v13, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    and-int/2addr v1, v14

    if-eqz v1, :cond_19

    const/4 v14, 0x1

    goto :goto_c

    :cond_19
    move/from16 v14, p0

    :goto_c
    if-eqz v8, :cond_1b

    if-eqz v14, :cond_1b

    filled-new-array {v4, v13}, [Landroidx/compose/ui/text/style/TextDecoration;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v8, v1

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    move/from16 v13, p0

    :goto_d
    if-ge v13, v8, :cond_1a

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/text/style/TextDecoration;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget v14, v14, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    or-int/2addr v4, v14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v13, v13, 0x1

    goto :goto_d

    :cond_1a
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    new-instance v4, Landroidx/compose/ui/text/style/TextDecoration;

    invoke-direct {v4, v1}, Landroidx/compose/ui/text/style/TextDecoration;-><init>(I)V

    goto :goto_e

    :cond_1b
    if-eqz v8, :cond_1c

    goto :goto_e

    :cond_1c
    if-eqz v14, :cond_1d

    move-object v4, v13

    goto :goto_e

    :cond_1d
    sget-object v4, Landroidx/compose/ui/text/style/TextDecoration;->c:Landroidx/compose/ui/text/style/TextDecoration;

    :goto_e
    iput-object v4, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    goto/16 :goto_9

    :cond_1e
    const/16 v1, 0xc

    if-ne v13, v1, :cond_10

    invoke-virtual {v8}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    const/16 v4, 0x14

    if-lt v1, v4, :cond_4

    new-instance v16, Landroidx/compose/ui/graphics/Shadow;

    invoke-virtual {v11}, Landroidx/compose/foundation/internal/DecodeHelper;->a()J

    move-result-wide v17

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v13, v1

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    move-object v4, v0

    int-to-long v0, v1

    const/16 v19, 0x20

    shl-long v13, v13, v19

    const-wide v19, 0xffffffffL

    and-long v0, v0, v19

    or-long v19, v13, v0

    sget-object v0, Landroidx/compose/ui/geometry/Offset;->b:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v8}, Landroid/os/Parcel;->readFloat()F

    move-result v21

    const/16 v22, 0x0

    invoke-direct/range {v16 .. v22}, Landroidx/compose/ui/graphics/Shadow;-><init>(JJFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    iput-object v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    move/from16 v1, p0

    move-object v0, v4

    goto/16 :goto_a

    :goto_f
    new-instance v16, Landroidx/compose/ui/text/SpanStyle;

    iget-wide v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->a:J

    iget-wide v13, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->b:J

    iget-object v8, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    iget-object v11, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    iget-object v15, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    move-wide/from16 v17, v0

    iget-object v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->g:Ljava/lang/String;

    move-object/from16 v25, v0

    iget-wide v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->h:J

    move-wide/from16 v26, v0

    iget-object v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    iget-object v1, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v28, v0

    move-object/from16 v29, v1

    iget-wide v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->l:J

    move-wide/from16 v31, v0

    iget-object v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    iget-object v1, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    const v37, 0xc000

    const/16 v38, 0x0

    move-object/from16 v33, v0

    iget-object v0, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->f:Landroidx/compose/ui/text/font/FontFamily;

    iget-object v12, v12, Landroidx/compose/foundation/internal/MutableSpanStyle;->k:Landroidx/compose/ui/text/intl/LocaleList;

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v24, v0

    move-object/from16 v34, v1

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v30, v12

    move-wide/from16 v19, v13

    move-object/from16 v23, v15

    invoke-direct/range {v16 .. v38}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    invoke-direct {v1, v0, v9, v10}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    if-eq v6, v5, :cond_20

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, p0

    move-object v0, v4

    const/4 v4, 0x2

    goto/16 :goto_0

    :cond_1f
    move-object v4, v0

    :cond_20
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v5

    :cond_21
    return-object v2
.end method

.method public static final b(Landroidx/compose/ui/text/AnnotatedString;)Landroidx/compose/ui/platform/ClipEntry;
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, Landroidx/compose/ui/platform/ClipEntry;

    iget-object v2, v0, Landroidx/compose/ui/text/AnnotatedString;->d:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iget-object v0, v0, Landroidx/compose/ui/text/AnnotatedString;->c:Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    move-object/from16 v16, v1

    goto/16 :goto_6

    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroidx/compose/foundation/internal/EncodeHelper;

    invoke-direct {v0}, Landroidx/compose/foundation/internal/EncodeHelper;-><init>()V

    if-nez v2, :cond_2

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_2
    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_15

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-object v8, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    check-cast v8, Landroidx/compose/ui/text/SpanStyle;

    iget v9, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    iget v7, v7, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget-object v10, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    iput-object v10, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    iget-object v10, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    iget-wide v11, v8, Landroidx/compose/ui/text/SpanStyle;->l:J

    iget-wide v13, v8, Landroidx/compose/ui/text/SpanStyle;->h:J

    move v15, v6

    iget-wide v5, v8, Landroidx/compose/ui/text/SpanStyle;->b:J

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-interface {v10}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v1

    sget-object v10, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v3

    move/from16 v18, v4

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->i:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->a:Landroidx/compose/ui/text/style/TextForegroundStyle;

    move-wide/from16 v19, v3

    invoke-interface {v1}, Landroidx/compose/ui/text/style/TextForegroundStyle;->b()J

    move-result-wide v2

    iget-object v1, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_3

    :cond_3
    move-wide/from16 v19, v3

    :goto_3
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->b:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v1, Landroidx/compose/ui/unit/TextUnit;->d:J

    invoke-static {v5, v6, v1, v2}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    invoke-virtual {v0, v5, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->c(J)V

    :cond_4
    iget-object v3, v8, Landroidx/compose/ui/text/SpanStyle;->c:Landroidx/compose/ui/text/font/FontWeight;

    const/4 v5, 0x3

    if-eqz v3, :cond_5

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget v3, v3, Landroidx/compose/ui/text/font/FontWeight;->b:I

    iget-object v6, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    iget-object v3, v8, Landroidx/compose/ui/text/SpanStyle;->d:Landroidx/compose/ui/text/font/FontStyle;

    if-eqz v3, :cond_8

    iget v3, v3, Landroidx/compose/ui/text/font/FontStyle;->a:I

    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    sget-object v6, Landroidx/compose/ui/text/font/FontStyle;->b:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    sget v6, Landroidx/compose/ui/text/font/FontStyle;->c:I

    if-ne v3, v6, :cond_6

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    :cond_8
    iget-object v3, v8, Landroidx/compose/ui/text/SpanStyle;->e:Landroidx/compose/ui/text/font/FontSynthesis;

    if-eqz v3, :cond_d

    iget v3, v3, Landroidx/compose/ui/text/font/FontSynthesis;->a:I

    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    sget-object v6, Landroidx/compose/ui/text/font/FontSynthesis;->b:Landroidx/compose/ui/text/font/FontSynthesis$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v3, :cond_a

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    sget v6, Landroidx/compose/ui/text/font/FontSynthesis;->e:I

    if-ne v3, v6, :cond_b

    const/4 v4, 0x1

    goto :goto_5

    :cond_b
    sget v6, Landroidx/compose/ui/text/font/FontSynthesis;->c:I

    if-ne v3, v6, :cond_c

    goto :goto_5

    :cond_c
    sget v4, Landroidx/compose/ui/text/font/FontSynthesis;->d:I

    if-ne v3, v4, :cond_9

    move v4, v5

    :goto_5
    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    :cond_d
    iget-object v3, v8, Landroidx/compose/ui/text/SpanStyle;->g:Ljava/lang/String;

    if-eqz v3, :cond_e

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget-object v4, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v4, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :cond_e
    invoke-static {v13, v14, v1, v2}, Landroidx/compose/ui/unit/TextUnit;->a(JJ)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    invoke-virtual {v0, v13, v14}, Landroidx/compose/foundation/internal/EncodeHelper;->c(J)V

    :cond_f
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->i:Landroidx/compose/ui/text/style/BaselineShift;

    if-eqz v1, :cond_10

    iget v1, v1, Landroidx/compose/ui/text/style/BaselineShift;->a:F

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    :cond_10
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->j:Landroidx/compose/ui/text/style/TextGeometricTransform;

    if-eqz v1, :cond_11

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget v2, v1, Landroidx/compose/ui/text/style/TextGeometricTransform;->a:F

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    iget v1, v1, Landroidx/compose/ui/text/style/TextGeometricTransform;->b:F

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    :cond_11
    move-wide/from16 v1, v19

    invoke-static {v11, v12, v1, v2}, Landroidx/compose/ui/graphics/Color;->c(JJ)Z

    move-result v1

    if-nez v1, :cond_12

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget-object v1, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V

    :cond_12
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->m:Landroidx/compose/ui/text/style/TextDecoration;

    if-eqz v1, :cond_13

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget v1, v1, Landroidx/compose/ui/text/style/TextDecoration;->a:I

    iget-object v2, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v2, v1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_13
    iget-object v1, v8, Landroidx/compose/ui/text/SpanStyle;->n:Landroidx/compose/ui/graphics/Shadow;

    if-eqz v1, :cond_14

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->a(B)V

    iget-wide v2, v1, Landroidx/compose/ui/graphics/Shadow;->a:J

    iget-object v4, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v4, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, v1, Landroidx/compose/ui/graphics/Shadow;->b:J

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v0, v4}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    iget v1, v1, Landroidx/compose/ui/graphics/Shadow;->c:F

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/internal/EncodeHelper;->b(F)V

    :cond_14
    new-instance v1, Landroid/text/Annotation;

    iget-object v2, v0, Landroidx/compose/foundation/internal/EncodeHelper;->a:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    const-string v4, "androidx.compose.text.SpanStyle"

    invoke-direct {v1, v4, v2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    invoke-virtual {v10, v1, v9, v7, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v6, v15, 0x1

    move-object v3, v10

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v4, v18

    goto/16 :goto_2

    :cond_15
    move-object v10, v3

    move-object v0, v10

    goto/16 :goto_1

    :goto_6
    const-string v1, "plain text"

    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    move-object/from16 v1, v16

    invoke-direct {v1, v0}, Landroidx/compose/ui/platform/ClipEntry;-><init>(Landroid/content/ClipData;)V

    return-object v1
.end method
