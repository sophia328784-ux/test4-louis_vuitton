.class public abstract Landroidx/compose/ui/res/VectorResources_androidKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "ui"
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
.method public static final a(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;Landroid/content/res/XmlResourceParser;I)Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static/range {p2 .. p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    new-instance v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v7, p2

    invoke-direct {v3, v7, v4, v5, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v8, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->a:[I

    invoke-static {v1, v0, v2, v8}, Landroidx/core/content/res/TypedArrayUtils;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v9

    invoke-virtual {v3, v9}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    iget-object v9, v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a:Lorg/xmlpull/v1/XmlPullParser;

    const-string v10, "autoMirrored"

    invoke-static {v9, v10}, Landroidx/core/content/res/TypedArrayUtils;->e(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x5

    if-nez v10, :cond_0

    move/from16 v21, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v11, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    move/from16 v21, v10

    :goto_0
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v10, "viewportWidth"

    const/4 v12, 0x7

    const/4 v13, 0x0

    invoke-virtual {v3, v8, v10, v12, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v16

    const-string v10, "viewportHeight"

    const/16 v14, 0x8

    invoke-virtual {v3, v8, v10, v14, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v17

    cmpg-float v10, v16, v13

    if-lez v10, :cond_28

    cmpg-float v10, v17, v13

    if-lez v10, :cond_27

    const/4 v10, 0x3

    invoke-virtual {v8, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v12

    invoke-virtual {v3, v12}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    invoke-virtual {v8, v5, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v12

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v14, Landroid/util/TypedValue;

    invoke-direct {v14}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v8, v13, v14}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    iget v14, v14, Landroid/util/TypedValue;->type:I

    if-ne v14, v5, :cond_1

    sget-object v14, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v22, Landroidx/compose/ui/graphics/Color;->i:J

    move-wide/from16 v13, v22

    goto :goto_1

    :cond_1
    invoke-static {v8, v9, v0}, Landroidx/core/content/res/TypedArrayUtils;->b(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v14

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-eqz v14, :cond_2

    invoke-virtual {v14}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v13

    invoke-static {v13}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v13

    goto :goto_1

    :cond_2
    sget-object v13, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->i:J

    goto :goto_1

    :cond_3
    sget-object v13, Landroidx/compose/ui/graphics/Color;->b:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-wide v13, Landroidx/compose/ui/graphics/Color;->i:J

    :goto_1
    const/4 v6, 0x6

    const/4 v4, -0x1

    invoke-virtual {v8, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v6

    invoke-virtual {v3, v6}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const/16 v6, 0x9

    if-eq v5, v4, :cond_7

    if-eq v5, v10, :cond_6

    if-eq v5, v11, :cond_5

    if-eq v5, v6, :cond_4

    packed-switch v5, :pswitch_data_0

    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->f:I

    goto :goto_2

    :pswitch_0
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->m:I

    goto :goto_2

    :pswitch_1
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->o:I

    goto :goto_2

    :pswitch_2
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->n:I

    goto :goto_2

    :cond_4
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->j:I

    goto :goto_2

    :cond_5
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->f:I

    goto :goto_2

    :cond_6
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->d:I

    goto :goto_2

    :cond_7
    sget-object v5, Landroidx/compose/ui/graphics/BlendMode;->a:Landroidx/compose/ui/graphics/BlendMode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v5, Landroidx/compose/ui/graphics/BlendMode;->f:I

    :goto_2
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v15, v6

    sget-object v6, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v12, v6

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v25, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    const/4 v6, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-wide/from16 v18, v13

    const/4 v8, 0x7

    const/4 v14, 0x0

    const/4 v13, 0x0

    move/from16 v20, v5

    move v5, v14

    move v14, v15

    move v15, v12

    move-object/from16 v12, v25

    invoke-direct/range {v12 .. v23}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v12, 0x0

    :goto_3
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-eq v13, v6, :cond_26

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-ge v13, v6, :cond_8

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    if-ne v13, v10, :cond_8

    goto/16 :goto_1f

    :cond_8
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v13

    const-string v14, "group"

    const/4 v15, 0x2

    if-eq v13, v15, :cond_c

    if-eq v13, v10, :cond_a

    :cond_9
    move v14, v8

    goto :goto_5

    :cond_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_b

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->e()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_b
    move v14, v8

    const/4 v12, 0x0

    :goto_5
    const/4 v13, 0x0

    :goto_6
    const/4 v15, 0x6

    :goto_7
    const/16 v24, 0x0

    goto/16 :goto_1e

    :cond_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v15

    const v4, -0x624e8b7e

    const-string v17, ""

    iget-object v8, v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->c:Landroidx/compose/ui/graphics/vector/PathParser;

    if-eq v15, v4, :cond_22

    const v4, 0x346425

    const/high16 v10, 0x3f800000    # 1.0f

    if-eq v15, v4, :cond_10

    const v4, 0x5e0f67f

    if-eq v15, v4, :cond_d

    :goto_8
    goto :goto_b

    :cond_d
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :goto_9
    goto :goto_8

    :cond_e
    sget-object v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->b:[I

    invoke-static {v1, v0, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v8, "rotation"

    invoke-virtual {v3, v4, v8, v11, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v27

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v28

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const/4 v15, 0x2

    invoke-virtual {v4, v15, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v29

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v8, "scaleX"

    const/4 v13, 0x3

    invoke-virtual {v3, v4, v8, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v30

    const-string v8, "scaleY"

    const/4 v13, 0x4

    invoke-virtual {v3, v4, v8, v13, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v31

    const-string v8, "translateX"

    const/4 v10, 0x6

    invoke-virtual {v3, v4, v8, v10, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v32

    const-string v8, "translateY"

    const/4 v10, 0x7

    invoke-virtual {v3, v4, v8, v10, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v33

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v8

    invoke-virtual {v3, v8}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-nez v10, :cond_f

    move-object/from16 v26, v17

    goto :goto_a

    :cond_f
    move-object/from16 v26, v10

    :goto_a
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v34, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    invoke-virtual/range {v25 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    :goto_b
    const/4 v13, 0x0

    const/4 v14, 0x7

    goto/16 :goto_6

    :cond_10
    const-string v4, "path"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_9

    :cond_11
    sget-object v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->c:[I

    invoke-static {v1, v0, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v13, "pathData"

    const-string v14, "http://schemas.android.com/apk/res/android"

    invoke-interface {v9, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_21

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-nez v14, :cond_12

    move-object/from16 v28, v17

    :goto_c
    const/4 v15, 0x2

    goto :goto_d

    :cond_12
    move-object/from16 v28, v14

    goto :goto_c

    :goto_d
    invoke-virtual {v4, v15}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v3, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-nez v13, :cond_13

    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    :goto_e
    move-object/from16 v26, v8

    goto :goto_f

    :cond_13
    invoke-static {v8, v13}, Landroidx/compose/ui/graphics/vector/PathParser;->a(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    goto :goto_e

    :goto_f
    const-string v8, "fillColor"

    invoke-static {v4, v9, v0, v8, v6}, Landroidx/core/content/res/TypedArrayUtils;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v8

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v13

    invoke-virtual {v3, v13}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v13, "fillAlpha"

    const/16 v14, 0xc

    invoke-virtual {v3, v4, v13, v14, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v30

    const-string v13, "strokeLineCap"

    const/4 v14, -0x1

    const/16 v15, 0x8

    invoke-static {v4, v9, v13, v15, v14}, Landroidx/core/content/res/TypedArrayUtils;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v3, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    sget-object v14, Landroidx/compose/ui/graphics/StrokeCap;->a:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v13, :cond_14

    if-eq v13, v6, :cond_16

    const/4 v14, 0x2

    if-eq v13, v14, :cond_15

    :cond_14
    const/16 v34, 0x0

    goto :goto_11

    :cond_15
    sget v13, Landroidx/compose/ui/graphics/StrokeCap;->c:I

    :goto_10
    move/from16 v34, v13

    goto :goto_11

    :cond_16
    sget v13, Landroidx/compose/ui/graphics/StrokeCap;->b:I

    goto :goto_10

    :goto_11
    const-string v13, "strokeLineJoin"

    const/16 v14, 0x9

    const/4 v15, -0x1

    invoke-static {v4, v9, v13, v14, v15}, Landroidx/core/content/res/TypedArrayUtils;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v14

    invoke-virtual {v3, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    sget-object v14, Landroidx/compose/ui/graphics/StrokeJoin;->a:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v13, :cond_19

    if-eq v13, v6, :cond_18

    const/4 v14, 0x2

    if-eq v13, v14, :cond_17

    :goto_12
    const/16 v35, 0x0

    goto :goto_14

    :cond_17
    sget v13, Landroidx/compose/ui/graphics/StrokeJoin;->c:I

    :goto_13
    move/from16 v35, v13

    goto :goto_14

    :cond_18
    const/4 v14, 0x2

    sget v13, Landroidx/compose/ui/graphics/StrokeJoin;->b:I

    goto :goto_13

    :cond_19
    const/4 v14, 0x2

    goto :goto_12

    :goto_14
    const/16 v13, 0xa

    const/high16 v14, 0x40800000    # 4.0f

    const-string v15, "strokeMiterLimit"

    invoke-virtual {v3, v4, v15, v13, v14}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v36

    const-string v13, "strokeColor"

    const/4 v14, 0x3

    invoke-static {v4, v9, v0, v13, v14}, Landroidx/core/content/res/TypedArrayUtils;->c(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)Landroidx/core/content/res/ComplexColorCompat;

    move-result-object v13

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v15

    invoke-virtual {v3, v15}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const-string v15, "strokeAlpha"

    const/16 v14, 0xb

    invoke-virtual {v3, v4, v15, v14, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v32

    const-string v14, "strokeWidth"

    const/4 v15, 0x4

    invoke-virtual {v3, v4, v14, v15, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v33

    const-string v14, "trimPathEnd"

    const/4 v15, 0x6

    invoke-virtual {v3, v4, v14, v15, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v38

    const-string v10, "trimPathOffset"

    const/4 v14, 0x7

    invoke-virtual {v3, v4, v10, v14, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v39

    const-string v10, "trimPathStart"

    invoke-virtual {v3, v4, v10, v11, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->a(Landroid/content/res/TypedArray;Ljava/lang/String;IF)F

    move-result v37

    const-string v10, "fillType"

    const/16 v5, 0xd

    const/4 v11, 0x0

    invoke-static {v4, v9, v10, v5, v11}, Landroidx/core/content/res/TypedArrayUtils;->d(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, v8, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    if-eqz v4, :cond_1a

    goto :goto_15

    :cond_1a
    iget v10, v8, Landroidx/core/content/res/ComplexColorCompat;->c:I

    if-eqz v10, :cond_1c

    :goto_15
    if-eqz v4, :cond_1b

    new-instance v8, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v8, v4}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    move-object/from16 v29, v8

    goto :goto_16

    :cond_1b
    new-instance v4, Landroidx/compose/ui/graphics/SolidColor;

    iget v8, v8, Landroidx/core/content/res/ComplexColorCompat;->c:I

    invoke-static {v8}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v10

    const/4 v8, 0x0

    invoke-direct {v4, v10, v11, v8}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v29, v4

    goto :goto_16

    :cond_1c
    const/16 v29, 0x0

    :goto_16
    iget-object v4, v13, Landroidx/core/content/res/ComplexColorCompat;->a:Landroid/graphics/Shader;

    if-eqz v4, :cond_1d

    goto :goto_17

    :cond_1d
    iget v8, v13, Landroidx/core/content/res/ComplexColorCompat;->c:I

    if-eqz v8, :cond_1f

    :goto_17
    if-eqz v4, :cond_1e

    new-instance v8, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;

    invoke-direct {v8, v4}, Landroidx/compose/ui/graphics/BrushKt$ShaderBrush$1;-><init>(Landroid/graphics/Shader;)V

    :goto_18
    move-object/from16 v31, v8

    goto :goto_19

    :cond_1e
    new-instance v8, Landroidx/compose/ui/graphics/SolidColor;

    iget v4, v13, Landroidx/core/content/res/ComplexColorCompat;->c:I

    invoke-static {v4}, Landroidx/compose/ui/graphics/ColorKt;->b(I)J

    move-result-wide v10

    const/4 v4, 0x0

    invoke-direct {v8, v10, v11, v4}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_18

    :cond_1f
    const/16 v31, 0x0

    :goto_19
    sget-object v4, Landroidx/compose/ui/graphics/PathFillType;->a:Landroidx/compose/ui/graphics/PathFillType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v5, :cond_20

    const/16 v27, 0x0

    goto :goto_1a

    :cond_20
    sget v8, Landroidx/compose/ui/graphics/PathFillType;->b:I

    move/from16 v27, v8

    :goto_1a
    invoke-virtual/range {v25 .. v39}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->b(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFF)V

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_21
    const-string v0, "No path data available"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/16 v24, 0x0

    return-object v24

    :cond_22
    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v24, 0x0

    const-string v4, "clip-path"

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v13, 0x0

    goto :goto_1e

    :cond_23
    sget-object v4, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorResources;->d:[I

    invoke-static {v1, v0, v2, v4}, Landroidx/core/content/res/TypedArrayUtils;->f(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v5

    invoke-virtual {v3, v5}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-nez v5, :cond_24

    move-object/from16 v26, v17

    goto :goto_1b

    :cond_24
    move-object/from16 v26, v5

    :goto_1b
    invoke-virtual {v4, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v10

    invoke-virtual {v3, v10}, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b(I)V

    if-nez v5, :cond_25

    sget-object v5, Landroidx/compose/ui/graphics/vector/VectorKt;->a:Lkotlin/collections/EmptyList;

    :goto_1c
    move-object/from16 v34, v5

    goto :goto_1d

    :cond_25
    invoke-static {v8, v5}, Landroidx/compose/ui/graphics/vector/PathParser;->a(Landroidx/compose/ui/graphics/vector/PathParser;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_1c

    :goto_1d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/high16 v30, 0x3f800000    # 1.0f

    const/high16 v31, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v34}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->a(Ljava/lang/String;FFFFFFFLjava/util/List;)V

    add-int/lit8 v12, v12, 0x1

    :goto_1e
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move v8, v14

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x5

    goto/16 :goto_3

    :cond_26
    :goto_1f
    iget v0, v3, Landroidx/compose/ui/graphics/vector/compat/AndroidVectorParser;->b:I

    or-int v0, p3, v0

    new-instance v1, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;

    invoke-virtual/range {v25 .. v25}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->d()Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/compose/ui/res/ImageVectorCache$ImageVectorEntry;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;I)V

    return-object v1

    :cond_27
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<VectorGraphic> tag requires viewportHeight > 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v8}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<VectorGraphic> tag requires viewportWidth > 0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
