.class abstract Lcom/airbnb/lottie/parser/ContentModelParser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ty"

    const-string v1, "d"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-result-object v0

    sput-object v0, Lcom/airbnb/lottie/parser/ContentModelParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    return-void
.end method

.method public static a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    const/4 v3, 0x2

    move v4, v3

    :goto_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    sget-object v5, Lcom/airbnb/lottie/parser/ContentModelParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v6, :cond_0

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v7

    :goto_1
    if-nez v5, :cond_3

    return-object v7

    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x0

    sparse-switch v8, :sswitch_data_0

    :goto_2
    const/4 v8, -0x1

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "tr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    const/16 v8, 0xd

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "tm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    const/16 v8, 0xc

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "st"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_2

    :cond_6
    const/16 v8, 0xb

    goto/16 :goto_3

    :sswitch_3
    const-string v8, "sr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_2

    :cond_7
    const/16 v8, 0xa

    goto/16 :goto_3

    :sswitch_4
    const-string v8, "sh"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_2

    :cond_8
    const/16 v8, 0x9

    goto/16 :goto_3

    :sswitch_5
    const-string v8, "rp"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_2

    :cond_9
    const/16 v8, 0x8

    goto/16 :goto_3

    :sswitch_6
    const-string v8, "rd"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_2

    :cond_a
    const/4 v8, 0x7

    goto :goto_3

    :sswitch_7
    const-string v8, "rc"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_2

    :cond_b
    const/4 v8, 0x6

    goto :goto_3

    :sswitch_8
    const-string v8, "mm"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_2

    :cond_c
    move v8, v10

    goto :goto_3

    :sswitch_9
    const-string v8, "gs"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_2

    :cond_d
    move v8, v11

    goto :goto_3

    :sswitch_a
    const-string v8, "gr"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto/16 :goto_2

    :cond_e
    move v8, v12

    goto :goto_3

    :sswitch_b
    const-string v8, "gf"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_f

    goto/16 :goto_2

    :cond_f
    move v8, v3

    goto :goto_3

    :sswitch_c
    const-string v8, "fl"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    goto/16 :goto_2

    :cond_10
    move v8, v6

    goto :goto_3

    :sswitch_d
    const-string v8, "el"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_11

    goto/16 :goto_2

    :cond_11
    move v8, v13

    :goto_3
    const-string v14, "o"

    const-string v15, "g"

    move-object/from16 v16, v7

    const-string v7, "d"

    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    packed-switch v8, :pswitch_data_0

    const-string v1, "Unknown shape type "

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/Logger;->a(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v7, v16

    goto/16 :goto_26

    :pswitch_0
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v7

    goto/16 :goto_26

    :pswitch_1
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move/from16 v23, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    :goto_5
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/airbnb/lottie/parser/ShapeTrimPathParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_19

    if-eq v2, v6, :cond_18

    if-eq v2, v3, :cond_17

    if-eq v2, v12, :cond_16

    if-eq v2, v11, :cond_13

    if-eq v2, v10, :cond_12

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_5

    :cond_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v23

    goto :goto_5

    :cond_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v2

    if-eq v2, v6, :cond_15

    if-ne v2, v3, :cond_14

    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->INDIVIDUALLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    :goto_6
    move-object/from16 v19, v2

    goto :goto_5

    :cond_14
    const-string v0, "Unknown trim path type "

    invoke-static {v2, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    return-object v16

    :cond_15
    sget-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->SIMULTANEOUSLY:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    goto :goto_6

    :cond_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    :cond_17
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v22

    goto :goto_5

    :cond_18
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v21

    goto :goto_5

    :cond_19
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    goto :goto_5

    :cond_1a
    new-instance v17, Lcom/airbnb/lottie/model/content/ShapeTrimPath;

    invoke-direct/range {v17 .. v23}, Lcom/airbnb/lottie/model/content/ShapeTrimPath;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    :goto_7
    move-object/from16 v7, v17

    goto/16 :goto_26

    :pswitch_2
    sget-object v4, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move/from16 v29, v13

    move-object/from16 v5, v16

    move-object v8, v5

    move-object v9, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v20

    move-object/from16 v23, v21

    move-object/from16 v25, v23

    move/from16 v28, v18

    :cond_1b
    :goto_8
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v10

    if-eqz v10, :cond_23

    sget-object v10, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v10

    packed-switch v10, :pswitch_data_1

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_8

    :pswitch_3
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :goto_9
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    move-object/from16 v10, v16

    move-object v11, v10

    :goto_a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v12

    if-eqz v12, :cond_1e

    sget-object v12, Lcom/airbnb/lottie/parser/ShapeStrokeParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v12}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v12

    if-eqz v12, :cond_1d

    if-eq v12, v6, :cond_1c

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_a

    :cond_1c
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v11

    goto :goto_a

    :cond_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v10

    goto :goto_a

    :cond_1e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_1

    :goto_b
    const/4 v10, -0x1

    goto :goto_c

    :sswitch_e
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto :goto_b

    :cond_1f
    move v10, v3

    goto :goto_c

    :sswitch_f
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    goto :goto_b

    :cond_20
    move v10, v6

    goto :goto_c

    :sswitch_10
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    goto :goto_b

    :cond_21
    move v10, v13

    :goto_c
    packed-switch v10, :pswitch_data_2

    goto :goto_9

    :pswitch_4
    move-object/from16 v21, v11

    goto :goto_9

    :pswitch_5
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v10, v6, :cond_1b

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v29

    goto/16 :goto_8

    :pswitch_7
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v10

    double-to-float v10, v10

    move/from16 v28, v10

    goto/16 :goto_8

    :pswitch_8
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v9

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v10

    sub-int/2addr v10, v6

    aget-object v9, v9, v10

    goto/16 :goto_8

    :pswitch_9
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v8

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v10

    sub-int/2addr v10, v6

    aget-object v8, v8, v10

    goto/16 :goto_8

    :pswitch_a
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    goto/16 :goto_8

    :pswitch_b
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v25

    goto/16 :goto_8

    :pswitch_c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v23

    goto/16 :goto_8

    :pswitch_d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_8

    :cond_23
    if-nez v5, :cond_24

    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :cond_24
    move-object/from16 v24, v5

    if-nez v8, :cond_25

    sget-object v8, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->BUTT:Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    :cond_25
    move-object/from16 v26, v8

    if-nez v9, :cond_26

    sget-object v9, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->MITER:Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    :cond_26
    move-object/from16 v27, v9

    new-instance v19, Lcom/airbnb/lottie/model/content/ShapeStroke;

    move-object/from16 v22, v4

    invoke-direct/range {v19 .. v29}, Lcom/airbnb/lottie/model/content/ShapeStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FZ)V

    :goto_d
    move-object/from16 v7, v19

    goto/16 :goto_26

    :pswitch_e
    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    if-ne v4, v12, :cond_27

    move v2, v6

    goto :goto_e

    :cond_27
    move v2, v13

    :goto_e
    move/from16 v28, v2

    move/from16 v27, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v23, v22

    move-object/from16 v24, v23

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    :goto_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_29

    sget-object v2, Lcom/airbnb/lottie/parser/PolystarShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    packed-switch v2, :pswitch_data_3

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_f

    :pswitch_f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v2

    if-ne v2, v12, :cond_28

    move/from16 v28, v6

    goto :goto_f

    :cond_28
    move/from16 v28, v13

    goto :goto_f

    :pswitch_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v27

    goto :goto_f

    :pswitch_11
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v25

    goto :goto_f

    :pswitch_12
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v23

    goto :goto_f

    :pswitch_13
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v26

    goto :goto_f

    :pswitch_14
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v24

    goto :goto_f

    :pswitch_15
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v22

    goto :goto_f

    :pswitch_16
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v21

    goto :goto_f

    :pswitch_17
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    goto :goto_f

    :pswitch_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v2

    invoke-static {v2}, Lcom/airbnb/lottie/model/content/PolystarShape$Type;->a(I)Lcom/airbnb/lottie/model/content/PolystarShape$Type;

    move-result-object v19

    goto :goto_f

    :pswitch_19
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v18

    goto :goto_f

    :cond_29
    new-instance v17, Lcom/airbnb/lottie/model/content/PolystarShape;

    invoke-direct/range {v17 .. v28}, Lcom/airbnb/lottie/model/content/PolystarShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/PolystarShape$Type;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;ZZ)V

    goto/16 :goto_7

    :pswitch_1a
    sget-object v2, Lcom/airbnb/lottie/parser/ShapePathParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move v4, v13

    move v5, v4

    move-object/from16 v2, v16

    move-object v7, v2

    :goto_10
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v8

    if-eqz v8, :cond_2e

    sget-object v8, Lcom/airbnb/lottie/parser/ShapePathParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    if-eqz v8, :cond_2d

    if-eq v8, v6, :cond_2c

    if-eq v8, v3, :cond_2b

    if-eq v8, v12, :cond_2a

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_10

    :cond_2a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v5

    goto :goto_10

    :cond_2b
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    invoke-static {}, Lcom/airbnb/lottie/utils/Utils;->c()F

    move-result v8

    sget-object v9, Lcom/airbnb/lottie/parser/ShapeDataParser;->a:Lcom/airbnb/lottie/parser/ShapeDataParser;

    invoke-static {v0, v1, v8, v9, v13}, Lcom/airbnb/lottie/parser/KeyframesParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v8

    invoke-direct {v2, v8}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;-><init>(Ljava/util/List;)V

    goto :goto_10

    :cond_2c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v4

    goto :goto_10

    :cond_2d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_10

    :cond_2e
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapePath;

    invoke-direct {v1, v7, v4, v2, v5}, Lcom/airbnb/lottie/model/content/ShapePath;-><init>(Ljava/lang/String;ILcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Z)V

    :goto_11
    move-object v7, v1

    goto/16 :goto_26

    :pswitch_1b
    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_12
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_34

    sget-object v2, Lcom/airbnb/lottie/parser/RepeaterParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_33

    if-eq v2, v6, :cond_32

    if-eq v2, v3, :cond_31

    if-eq v2, v12, :cond_30

    if-eq v2, v11, :cond_2f

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_12

    :cond_2f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v22

    goto :goto_12

    :cond_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableTransformParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v21

    goto :goto_12

    :cond_31
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v20

    goto :goto_12

    :cond_32
    invoke-static {v0, v1, v13}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v19

    goto :goto_12

    :cond_33
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v18

    goto :goto_12

    :cond_34
    new-instance v17, Lcom/airbnb/lottie/model/content/Repeater;

    invoke-direct/range {v17 .. v22}, Lcom/airbnb/lottie/model/content/Repeater;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;Z)V

    goto/16 :goto_7

    :pswitch_1c
    sget-object v2, Lcom/airbnb/lottie/parser/RoundedCornersParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v2, v16

    move-object v4, v2

    :goto_13
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v5

    if-eqz v5, :cond_38

    sget-object v5, Lcom/airbnb/lottie/parser/RoundedCornersParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    if-eqz v5, :cond_37

    if-eq v5, v6, :cond_36

    if-eq v5, v3, :cond_35

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_13

    :cond_35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v13

    goto :goto_13

    :cond_36
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    goto :goto_13

    :cond_37
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_38
    if-eqz v13, :cond_39

    goto/16 :goto_4

    :cond_39
    new-instance v7, Lcom/airbnb/lottie/model/content/RoundedCorners;

    invoke-direct {v7, v2, v4}, Lcom/airbnb/lottie/model/content/RoundedCorners;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;)V

    goto/16 :goto_26

    :pswitch_1d
    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    move-object/from16 v21, v20

    :goto_14
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_3f

    sget-object v2, Lcom/airbnb/lottie/parser/RectangleShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_3e

    if-eq v2, v6, :cond_3d

    if-eq v2, v3, :cond_3c

    if-eq v2, v12, :cond_3b

    if-eq v2, v11, :cond_3a

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_14

    :cond_3a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v22

    goto :goto_14

    :cond_3b
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v21

    goto :goto_14

    :cond_3c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v20

    goto :goto_14

    :cond_3d
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v19

    goto :goto_14

    :cond_3e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v18

    goto :goto_14

    :cond_3f
    new-instance v17, Lcom/airbnb/lottie/model/content/RectangleShape;

    invoke-direct/range {v17 .. v22}, Lcom/airbnb/lottie/model/content/RectangleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    goto/16 :goto_7

    :pswitch_1e
    sget-object v2, Lcom/airbnb/lottie/parser/MergePathsParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move-object/from16 v2, v16

    move-object v7, v2

    :goto_15
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v4

    if-eqz v4, :cond_48

    sget-object v4, Lcom/airbnb/lottie/parser/MergePathsParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_47

    if-eq v4, v6, :cond_41

    if-eq v4, v3, :cond_40

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_15

    :cond_40
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v13

    goto :goto_15

    :cond_41
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v2

    if-eq v2, v6, :cond_46

    if-eq v2, v3, :cond_45

    if-eq v2, v12, :cond_44

    if-eq v2, v11, :cond_43

    if-eq v2, v10, :cond_42

    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_42
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->EXCLUDE_INTERSECTIONS:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_43
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->INTERSECT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_44
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->SUBTRACT:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_45
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->ADD:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_46
    sget-object v2, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->MERGE:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    goto :goto_15

    :cond_47
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_15

    :cond_48
    new-instance v3, Lcom/airbnb/lottie/model/content/MergePaths;

    invoke-direct {v3, v7, v2, v13}, Lcom/airbnb/lottie/model/content/MergePaths;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;Z)V

    const-string v2, "Animation contains merge paths. Merge paths are only supported on KitKat+ and must be manually enabled by calling enableMergePathsForKitKatAndAbove()."

    invoke-virtual {v1, v2}, Lcom/airbnb/lottie/LottieComposition;->a(Ljava/lang/String;)V

    move-object v7, v3

    goto/16 :goto_26

    :pswitch_1f
    sget-object v3, Lcom/airbnb/lottie/parser/GradientStrokeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move/from16 v32, v13

    move-object/from16 v4, v16

    move-object/from16 v20, v4

    move-object/from16 v21, v20

    move-object/from16 v22, v21

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    move-object/from16 v26, v25

    move-object/from16 v27, v26

    move-object/from16 v28, v27

    move-object/from16 v31, v28

    move/from16 v29, v18

    :cond_49
    :goto_16
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v5

    if-eqz v5, :cond_55

    sget-object v5, Lcom/airbnb/lottie/parser/GradientStrokeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    packed-switch v5, :pswitch_data_4

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_16

    :pswitch_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :cond_4a
    :goto_17
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    move-object/from16 v5, v16

    move-object v8, v5

    :goto_18
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v10

    if-eqz v10, :cond_4d

    sget-object v10, Lcom/airbnb/lottie/parser/GradientStrokeParser;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v10}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v10

    if-eqz v10, :cond_4c

    if-eq v10, v6, :cond_4b

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_18

    :cond_4b
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    goto :goto_18

    :cond_4c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v5

    goto :goto_18

    :cond_4d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4e

    move-object/from16 v31, v8

    goto :goto_17

    :cond_4e
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4f

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    :cond_4f
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_50
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_49

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :pswitch_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v32

    goto :goto_16

    :pswitch_22
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->q()D

    move-result-wide v10

    double-to-float v5, v10

    move/from16 v29, v5

    goto/16 :goto_16

    :pswitch_23
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v8

    sub-int/2addr v8, v6

    aget-object v28, v5, v8

    goto/16 :goto_16

    :pswitch_24
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v8

    sub-int/2addr v8, v6

    aget-object v27, v5, v8

    goto/16 :goto_16

    :pswitch_25
    invoke-static {v0, v1, v6}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v26

    goto/16 :goto_16

    :pswitch_26
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v25

    goto/16 :goto_16

    :pswitch_27
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v24

    goto/16 :goto_16

    :pswitch_28
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v5

    if-ne v5, v6, :cond_51

    sget-object v5, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_19
    move-object/from16 v21, v5

    goto/16 :goto_16

    :cond_51
    sget-object v5, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_19

    :pswitch_29
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v4

    goto/16 :goto_16

    :pswitch_2a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    const/4 v5, -0x1

    :goto_1a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v8

    if-eqz v8, :cond_54

    sget-object v8, Lcom/airbnb/lottie/parser/GradientStrokeParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v8}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v8

    if-eqz v8, :cond_53

    if-eq v8, v6, :cond_52

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_1a

    :cond_52
    new-instance v8, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    new-instance v10, Lcom/airbnb/lottie/parser/GradientColorParser;

    invoke-direct {v10, v5}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    invoke-static {v0, v1, v9, v10, v13}, Lcom/airbnb/lottie/parser/KeyframesParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v10

    invoke-direct {v8, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    move-object/from16 v22, v8

    goto :goto_1a

    :cond_53
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v5

    goto :goto_1a

    :cond_54
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    goto/16 :goto_16

    :pswitch_2b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_16

    :cond_55
    if-nez v4, :cond_56

    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :cond_56
    move-object/from16 v23, v4

    new-instance v19, Lcom/airbnb/lottie/model/content/GradientStroke;

    move-object/from16 v30, v3

    invoke-direct/range {v19 .. v32}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;FLjava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    goto/16 :goto_d

    :pswitch_2c
    sget-object v2, Lcom/airbnb/lottie/parser/ShapeGroupParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v7, v16

    :goto_1b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v4

    if-eqz v4, :cond_5c

    sget-object v4, Lcom/airbnb/lottie/parser/ShapeGroupParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_5b

    if-eq v4, v6, :cond_5a

    if-eq v4, v3, :cond_57

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_1b

    :cond_57
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()V

    :cond_58
    :goto_1c
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/ContentModelParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v4

    if-eqz v4, :cond_58

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_59
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()V

    goto :goto_1b

    :cond_5a
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v13

    goto :goto_1b

    :cond_5b
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v7

    goto :goto_1b

    :cond_5c
    new-instance v1, Lcom/airbnb/lottie/model/content/ShapeGroup;

    invoke-direct {v1, v7, v2, v13}, Lcom/airbnb/lottie/model/content/ShapeGroup;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    goto/16 :goto_11

    :pswitch_2d
    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    move-object/from16 v21, v3

    move/from16 v28, v13

    move-object/from16 v7, v16

    move-object/from16 v19, v7

    move-object/from16 v20, v19

    move-object/from16 v22, v20

    move-object/from16 v24, v22

    move-object/from16 v25, v24

    :goto_1d
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v3

    if-eqz v3, :cond_62

    sget-object v3, Lcom/airbnb/lottie/parser/GradientFillParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v3

    packed-switch v3, :pswitch_data_5

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_1d

    :pswitch_2e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v28

    goto :goto_1d

    :pswitch_2f
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v3

    if-ne v3, v6, :cond_5d

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_1e
    move-object/from16 v21, v3

    goto :goto_1d

    :cond_5d
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_1e

    :pswitch_30
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v25

    goto :goto_1d

    :pswitch_31
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v24

    goto :goto_1d

    :pswitch_32
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v3

    if-ne v3, v6, :cond_5e

    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->LINEAR:Lcom/airbnb/lottie/model/content/GradientType;

    :goto_1f
    move-object/from16 v20, v3

    goto :goto_1d

    :cond_5e
    sget-object v3, Lcom/airbnb/lottie/model/content/GradientType;->RADIAL:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_1f

    :pswitch_33
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    goto :goto_1d

    :pswitch_34
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()V

    const/4 v3, -0x1

    :goto_20
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v4

    if-eqz v4, :cond_61

    sget-object v4, Lcom/airbnb/lottie/parser/GradientFillParser;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v4}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v4

    if-eqz v4, :cond_60

    if-eq v4, v6, :cond_5f

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_20

    :cond_5f
    new-instance v4, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    new-instance v5, Lcom/airbnb/lottie/parser/GradientColorParser;

    invoke-direct {v5, v3}, Lcom/airbnb/lottie/parser/GradientColorParser;-><init>(I)V

    invoke-static {v0, v1, v9, v5, v13}, Lcom/airbnb/lottie/parser/KeyframesParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/parser/ValueParser;Z)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;-><init>(Ljava/util/List;)V

    move-object/from16 v22, v4

    goto :goto_20

    :cond_60
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v3

    goto :goto_20

    :cond_61
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    goto :goto_1d

    :pswitch_35
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v19

    goto :goto_1d

    :cond_62
    if-nez v7, :cond_63

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :cond_63
    move-object/from16 v23, v7

    new-instance v18, Lcom/airbnb/lottie/model/content/GradientFill;

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v18 .. v28}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Z)V

    move-object/from16 v7, v18

    goto/16 :goto_26

    :pswitch_36
    sget-object v4, Lcom/airbnb/lottie/parser/ShapeFillParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    move v4, v6

    move v15, v13

    move/from16 v19, v15

    move-object/from16 v7, v16

    move-object v14, v7

    move-object/from16 v17, v14

    :goto_21
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v5

    if-eqz v5, :cond_6a

    sget-object v5, Lcom/airbnb/lottie/parser/ShapeFillParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v5

    if-eqz v5, :cond_69

    if-eq v5, v6, :cond_68

    if-eq v5, v3, :cond_67

    if-eq v5, v12, :cond_66

    if-eq v5, v11, :cond_65

    if-eq v5, v10, :cond_64

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_21

    :cond_64
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v19

    goto :goto_21

    :cond_65
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v4

    goto :goto_21

    :cond_66
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v15

    goto :goto_21

    :cond_67
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->c(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    goto :goto_21

    :cond_68
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v17

    goto :goto_21

    :cond_69
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v14

    goto :goto_21

    :cond_6a
    if-nez v7, :cond_6b

    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    new-instance v1, Lcom/airbnb/lottie/value/Keyframe;

    invoke-direct {v1, v2}, Lcom/airbnb/lottie/value/Keyframe;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;)V

    :cond_6b
    move-object/from16 v18, v7

    if-ne v4, v6, :cond_6c

    sget-object v1, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    :goto_22
    move-object/from16 v16, v1

    goto :goto_23

    :cond_6c
    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    goto :goto_22

    :goto_23
    new-instance v13, Lcom/airbnb/lottie/model/content/ShapeFill;

    invoke-direct/range {v13 .. v19}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Z)V

    move-object v7, v13

    goto :goto_26

    :pswitch_37
    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    if-ne v4, v12, :cond_6d

    move v2, v6

    goto :goto_24

    :cond_6d
    move v2, v13

    :goto_24
    move/from16 v21, v2

    move/from16 v22, v13

    move-object/from16 v18, v16

    move-object/from16 v19, v18

    move-object/from16 v20, v19

    :goto_25
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v2

    if-eqz v2, :cond_74

    sget-object v2, Lcom/airbnb/lottie/parser/CircleShapeParser;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->z(Lcom/airbnb/lottie/parser/moshi/JsonReader$Options;)I

    move-result v2

    if-eqz v2, :cond_73

    if-eq v2, v6, :cond_72

    if-eq v2, v3, :cond_71

    if-eq v2, v12, :cond_70

    if-eq v2, v11, :cond_6e

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->B()V

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_25

    :cond_6e
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->r()I

    move-result v2

    if-ne v2, v12, :cond_6f

    move/from16 v21, v6

    goto :goto_25

    :cond_6f
    move/from16 v21, v13

    goto :goto_25

    :cond_70
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->p()Z

    move-result v22

    goto :goto_25

    :cond_71
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatableValueParser;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v20

    goto :goto_25

    :cond_72
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/AnimatablePathValueParser;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v19

    goto :goto_25

    :cond_73
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t()Ljava/lang/String;

    move-result-object v18

    goto :goto_25

    :cond_74
    new-instance v17, Lcom/airbnb/lottie/model/content/CircleShape;

    invoke-direct/range {v17 .. v22}, Lcom/airbnb/lottie/model/content/CircleShape;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;ZZ)V

    goto/16 :goto_7

    :goto_26
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->C()V

    goto :goto_26

    :cond_75
    invoke-virtual {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->m()V

    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        0xca7 -> :sswitch_d
        0xcc6 -> :sswitch_c
        0xcdf -> :sswitch_b
        0xceb -> :sswitch_a
        0xcec -> :sswitch_9
        0xda0 -> :sswitch_8
        0xe31 -> :sswitch_7
        0xe32 -> :sswitch_6
        0xe3e -> :sswitch_5
        0xe55 -> :sswitch_4
        0xe5f -> :sswitch_3
        0xe61 -> :sswitch_2
        0xe79 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_37
        :pswitch_36
        :pswitch_2d
        :pswitch_2c
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x64 -> :sswitch_10
        0x67 -> :sswitch_f
        0x6f -> :sswitch_e
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch
.end method
