.class public Landroidx/constraintlayout/core/state/ConstraintSetParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;,
        Landroidx/constraintlayout/core/state/ConstraintSetParser$GeneratedValue;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/16 v8, 0x10

    const/16 v9, 0x8

    const/4 v11, 0x4

    const/4 v12, 0x2

    const/4 v13, 0x6

    const/4 v14, 0x1

    const/4 v15, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_0
    move v7, v15

    goto/16 :goto_1

    :sswitch_0
    const-string v7, "visibility"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    const/16 v7, 0x17

    goto/16 :goto_1

    :sswitch_1
    const-string v7, "centerHorizontally"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/16 v7, 0x16

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "hWeight"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    const/16 v7, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v7, "width"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    const/16 v7, 0x14

    goto/16 :goto_1

    :sswitch_4
    const-string v7, "vBias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_0

    :cond_4
    const/16 v7, 0x13

    goto/16 :goto_1

    :sswitch_5
    const-string v7, "hBias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    goto :goto_0

    :cond_5
    const/16 v7, 0x12

    goto/16 :goto_1

    :sswitch_6
    const-string v7, "alpha"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    const/16 v7, 0x11

    goto/16 :goto_1

    :sswitch_7
    const-string v7, "vWeight"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_0

    :cond_7
    move v7, v8

    goto/16 :goto_1

    :sswitch_8
    const-string v7, "hRtlBias"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_0

    :cond_8
    const/16 v7, 0xf

    goto/16 :goto_1

    :sswitch_9
    const-string v7, "scaleY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_0

    :cond_9
    const/16 v7, 0xe

    goto/16 :goto_1

    :sswitch_a
    const-string v7, "scaleX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xd

    goto/16 :goto_1

    :sswitch_b
    const-string v7, "pivotY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xc

    goto/16 :goto_1

    :sswitch_c
    const-string v7, "pivotX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xb

    goto/16 :goto_1

    :sswitch_d
    const-string v7, "motion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v7, "height"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v7, 0x9

    goto/16 :goto_1

    :sswitch_f
    const-string v7, "translationZ"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    goto/16 :goto_0

    :cond_f
    move v7, v9

    goto/16 :goto_1

    :sswitch_10
    const-string v7, "translationY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 v7, 0x7

    goto :goto_1

    :sswitch_11
    const-string v7, "translationX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    goto/16 :goto_0

    :cond_11
    move v7, v13

    goto :goto_1

    :sswitch_12
    const-string v7, "rotationZ"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v7, 0x5

    goto :goto_1

    :sswitch_13
    const-string v7, "rotationY"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    goto/16 :goto_0

    :cond_13
    move v7, v11

    goto :goto_1

    :sswitch_14
    const-string v7, "rotationX"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v7, 0x3

    goto :goto_1

    :sswitch_15
    const-string v7, "custom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    goto/16 :goto_0

    :cond_15
    move v7, v12

    goto :goto_1

    :sswitch_16
    const-string v7, "center"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_16

    goto/16 :goto_0

    :cond_16
    move v7, v14

    goto :goto_1

    :sswitch_17
    const-string v7, "centerVertically"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    goto/16 :goto_0

    :cond_17
    move v7, v5

    :goto_1
    const-string v10, "parent"

    packed-switch v7, :pswitch_data_0

    invoke-static/range {p0 .. p4}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->c(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    return-void

    :pswitch_0
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_2
    move v12, v15

    goto :goto_3

    :sswitch_18
    const-string v2, "visible"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_2

    :sswitch_19
    const-string v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_2

    :cond_18
    move v12, v14

    goto :goto_3

    :sswitch_1a
    const-string v2, "invisible"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_2

    :cond_19
    move v12, v5

    :cond_1a
    :goto_3
    packed-switch v12, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_1
    iput v5, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->I:I

    return-void

    :pswitch_2
    iput v9, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->I:I

    return-void

    :pswitch_3
    iput v11, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->I:I

    const/4 v0, 0x0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->F:F

    return-void

    :pswitch_4
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    goto :goto_4

    :cond_1b
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->o(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->i(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->f:F

    return-void

    :pswitch_6
    iget-object v2, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-static {v0, v4, v3, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->d(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Lln0;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    return-void

    :pswitch_7
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    return-void

    :pswitch_8
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    return-void

    :pswitch_9
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->F:F

    return-void

    :pswitch_a
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->g:F

    return-void

    :pswitch_b
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iget-boolean v2, v3, Landroidx/constraintlayout/core/state/State;->b:Z

    if-nez v2, :cond_1c

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v0, v2, v0

    :cond_1c
    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    return-void

    :pswitch_c
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->H:F

    return-void

    :pswitch_d
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->G:F

    return-void

    :pswitch_e
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->y:F

    return-void

    :pswitch_f
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->x:F

    return-void

    :pswitch_10
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v2, :cond_1d

    goto/16 :goto_d

    :cond_1d
    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    new-instance v2, Landroidx/constraintlayout/core/motion/utils/TypedBundle;

    invoke-direct {v2}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;-><init>()V

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1e
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_2

    :goto_6
    move v6, v15

    goto :goto_7

    :sswitch_1b
    const-string v6, "relativeTo"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    goto :goto_6

    :cond_1f
    move v6, v11

    goto :goto_7

    :sswitch_1c
    const-string v6, "pathArc"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    goto :goto_6

    :cond_20
    const/4 v6, 0x3

    goto :goto_7

    :sswitch_1d
    const-string v6, "quantize"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_21

    goto :goto_6

    :cond_21
    move v6, v12

    goto :goto_7

    :sswitch_1e
    const-string v6, "easing"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    goto :goto_6

    :cond_22
    move v6, v14

    goto :goto_7

    :sswitch_1f
    const-string v6, "stagger"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_23

    goto :goto_6

    :cond_23
    move v6, v5

    :goto_7
    packed-switch v6, :pswitch_data_2

    goto :goto_5

    :pswitch_11
    const/16 v6, 0x25d

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->c(ILjava/lang/String;)V

    goto :goto_5

    :pswitch_12
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v20, "below"

    const-string v21, "above"

    const-string v16, "none"

    const-string v17, "startVertical"

    const-string v18, "startHorizontal"

    const-string v19, "flip"

    filled-new-array/range {v16 .. v21}, [Ljava/lang/String;

    move-result-object v6

    move v7, v5

    :goto_8
    if-ge v7, v13, :cond_25

    aget-object v8, v6, v7

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_9

    :cond_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_25
    move v7, v15

    :goto_9
    if-ne v7, v15, :cond_26

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "0 pathArc = \'"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_26
    const/16 v4, 0x25f

    invoke-virtual {v2, v4, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->b(II)V

    goto/16 :goto_5

    :pswitch_13
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLArray;

    const/16 v8, 0x262

    if-eqz v7, :cond_27

    check-cast v6, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v4, v6, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1e

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v7

    invoke-virtual {v2, v8, v7}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->b(II)V

    if-le v4, v14, :cond_1e

    const/16 v7, 0x263

    invoke-virtual {v6, v14}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->c(ILjava/lang/String;)V

    if-le v4, v12, :cond_1e

    const/16 v4, 0x25a

    invoke-virtual {v6, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v6

    invoke-virtual {v2, v6, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->a(FI)V

    goto/16 :goto_5

    :cond_27
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    if-eqz v6, :cond_28

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v4

    invoke-virtual {v2, v8, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->b(II)V

    goto/16 :goto_5

    :cond_28
    new-instance v1, Landroidx/constraintlayout/core/parser/CLParsingException;

    const-string v2, "no int found for key <"

    const-string v3, ">, found ["

    invoke-static {v2, v4, v3}, Lpq0;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v1

    :pswitch_14
    const/16 v6, 0x25b

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v6, v4}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->c(ILjava/lang/String;)V

    goto/16 :goto_5

    :pswitch_15
    const/16 v6, 0x258

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4, v6}, Landroidx/constraintlayout/core/motion/utils/TypedBundle;->a(FI)V

    goto/16 :goto_5

    :cond_29
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_16
    iget-object v2, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-static {v0, v4, v3, v2}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->d(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Lln0;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v0

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    return-void

    :pswitch_17
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iget-object v2, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v0}, Lln0;->e(F)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->E:F

    return-void

    :pswitch_18
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iget-object v2, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v0}, Lln0;->e(F)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->D:F

    return-void

    :pswitch_19
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iget-object v2, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v0}, Lln0;->e(F)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->C:F

    return-void

    :pswitch_1a
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->B:F

    return-void

    :pswitch_1b
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->A:F

    return-void

    :pswitch_1c
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v0

    iput v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->z:F

    return-void

    :pswitch_1d
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v2, :cond_2a

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    goto :goto_a

    :cond_2a
    const/4 v0, 0x0

    :goto_a
    if-nez v0, :cond_2b

    goto :goto_d

    :cond_2b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v5, :cond_2e

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v4

    iget-object v5, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    if-nez v5, :cond_2d

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    :cond_2d
    iget-object v5, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->j0:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_2e
    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v5, :cond_2c

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-wide/16 v6, -0x1

    if-eqz v5, :cond_30

    invoke-virtual {v4, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v13, :cond_2f

    const-string v5, "FF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2f
    invoke-static {v4, v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    goto :goto_c

    :cond_30
    move-wide v4, v6

    :goto_c
    cmp-long v6, v4, v6

    if-eqz v6, :cond_2c

    long-to-int v4, v4

    iget-object v5, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->i0:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_31
    :goto_d
    return-void

    :pswitch_1e
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    goto :goto_e

    :cond_32
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->o(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->i(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_1f
    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    goto :goto_f

    :cond_33
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :goto_f
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x565a8e48 -> :sswitch_17
        -0x514d33ab -> :sswitch_16
        -0x5069748f -> :sswitch_15
        -0x4a771f66 -> :sswitch_14
        -0x4a771f65 -> :sswitch_13
        -0x4a771f64 -> :sswitch_12
        -0x490b9c39 -> :sswitch_11
        -0x490b9c38 -> :sswitch_10
        -0x490b9c37 -> :sswitch_f
        -0x48c76ed9 -> :sswitch_e
        -0x3fad404a -> :sswitch_d
        -0x3ae243aa -> :sswitch_c
        -0x3ae243a9 -> :sswitch_b
        -0x3621dfb2 -> :sswitch_a
        -0x3621dfb1 -> :sswitch_9
        -0xec32145 -> :sswitch_8
        -0x3aa8172 -> :sswitch_7
        0x589b15e -> :sswitch_6
        0x5d92341 -> :sswitch_5
        0x69e6c4f -> :sswitch_4
        0x6be2dc6 -> :sswitch_3
        0x17be4100 -> :sswitch_2
        0x53b069a6 -> :sswitch_1
        0x73b66312 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x715b4053 -> :sswitch_1a
        0x30809f -> :sswitch_19
        0x1bd1f072 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x7119f053 -> :sswitch_1f
        -0x4e19c2d5 -> :sswitch_1e
        -0x4c979acf -> :sswitch_1d
        -0x2f2d1013 -> :sswitch_1c
        -0xe1f7d99 -> :sswitch_1b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch
.end method

.method public static b(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V
    .locals 6

    if-nez p0, :cond_0

    sget-object p0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/State;->e(Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/core/state/State;->e(Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v1

    instance-of v2, v1, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v2, :cond_8

    check-cast v1, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v2, v1, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    iget-object v4, v1, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    invoke-virtual {v1, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p3, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-le v1, v3, :cond_8

    invoke-virtual {p3, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p3

    instance-of v1, p3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    check-cast p3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "style"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p3, p0, p2, p1, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->c(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p3, v3}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v4, :cond_5

    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v5, v4, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v0, :cond_5

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->n0:F

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v3

    :goto_3
    const-string v4, "packed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "spread_inside"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v3, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2

    :cond_6
    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v3, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2

    :cond_7
    sget-object v3, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v3, p0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2

    :cond_8
    :goto_4
    return-void
.end method

.method public static c(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, v3, Landroidx/constraintlayout/core/state/State;->b:Z

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v9, :cond_0

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const-string v11, "start"

    const-string v12, "end"

    const-string v13, "top"

    const-string v14, "bottom"

    const-string v15, "baseline"

    const/16 v16, -0x1

    const-string v9, "parent"

    const/4 v10, 0x1

    if-eqz v8, :cond_1e

    iget-object v5, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v10, :cond_1e

    const/4 v5, 0x0

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->K(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    instance-of v10, v5, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v10, :cond_1

    invoke-virtual {v5}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    iget-object v5, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v17, 0x0

    move/from16 v20, v7

    const/4 v7, 0x2

    if-le v5, v7, :cond_2

    invoke-virtual {v8, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->K(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v5

    iget-object v7, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v5}, Lln0;->e(F)F

    move-result v5

    goto :goto_2

    :cond_2
    move/from16 v5, v17

    :goto_2
    iget-object v7, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 p0, v5

    const/4 v5, 0x3

    if-le v7, v5, :cond_3

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->K(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v7

    iget-object v5, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v5, v7}, Lln0;->e(F)F

    move-result v5

    goto :goto_3

    :cond_3
    move/from16 v5, v17

    :goto_3
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    goto :goto_4

    :cond_4
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const-string v7, "right"

    sparse-switch v6, :sswitch_data_0

    :goto_5
    move/from16 v9, v16

    goto :goto_6

    :sswitch_0
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_5

    :cond_5
    const/4 v9, 0x7

    goto :goto_6

    :sswitch_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, 0x6

    goto :goto_6

    :sswitch_2
    const-string v6, "left"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v9, 0x5

    goto :goto_6

    :sswitch_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_5

    :cond_8
    const/4 v9, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v9, 0x3

    goto :goto_6

    :sswitch_5
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    const/4 v9, 0x2

    goto :goto_6

    :sswitch_6
    const-string v6, "circular"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    :cond_b
    const/4 v9, 0x1

    goto :goto_6

    :sswitch_7
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_5

    :cond_c
    const/4 v9, 0x0

    :goto_6
    packed-switch v9, :pswitch_data_0

    :goto_7
    const/4 v4, 0x1

    const/16 v18, 0x2

    goto/16 :goto_f

    :pswitch_0
    move/from16 v2, v20

    :goto_8
    const/4 v4, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x1

    goto/16 :goto_10

    :pswitch_1
    const/4 v2, 0x0

    goto :goto_8

    :pswitch_2
    const/4 v2, 0x1

    goto :goto_8

    :pswitch_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_1

    :goto_9
    move/from16 v2, v16

    goto :goto_a

    :sswitch_8
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_9

    :cond_d
    const/4 v2, 0x2

    goto :goto_a

    :sswitch_9
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_9

    :cond_e
    const/4 v2, 0x1

    goto :goto_a

    :sswitch_a
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_a
    packed-switch v2, :pswitch_data_1

    goto :goto_7

    :pswitch_4
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    goto :goto_7

    :pswitch_5
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->S:Ljava/lang/Object;

    goto :goto_7

    :pswitch_6
    iget-object v2, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->TOP_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->T:Landroidx/constraintlayout/core/state/ConstraintReference;

    goto :goto_7

    :pswitch_7
    xor-int/lit8 v2, v20, 0x1

    goto :goto_8

    :pswitch_8
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_2

    :goto_b
    move/from16 v2, v16

    goto :goto_c

    :sswitch_b
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_b

    :cond_10
    const/4 v2, 0x2

    goto :goto_c

    :sswitch_c
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    const/4 v2, 0x1

    goto :goto_c

    :sswitch_d
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_b

    :cond_12
    const/4 v2, 0x0

    :goto_c
    packed-switch v2, :pswitch_data_2

    goto/16 :goto_7

    :pswitch_9
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->U:Ljava/lang/Object;

    goto/16 :goto_7

    :pswitch_a
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    goto/16 :goto_7

    :pswitch_b
    iget-object v2, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BOTTOM_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->W:Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/16 :goto_7

    :pswitch_c
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v6

    iget-object v9, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v13, 0x2

    if-le v9, v13, :cond_13

    invoke-virtual {v8, v13}, Landroidx/constraintlayout/core/parser/CLContainer;->K(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v2

    iget-object v3, v3, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v3, v2}, Lln0;->e(F)F

    move-result v17

    :cond_13
    move/from16 v2, v17

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a0:Ljava/lang/Object;

    iput v6, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->b0:F

    iput v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->c0:F

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->CIRCULAR_CONSTRAINT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    move/from16 v18, v13

    goto :goto_f

    :pswitch_d
    const/4 v4, 0x1

    const/16 v18, 0x2

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_3

    :goto_d
    move/from16 v2, v16

    goto :goto_e

    :sswitch_e
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_d

    :cond_14
    move/from16 v2, v18

    goto :goto_e

    :sswitch_f
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_d

    :cond_15
    move v2, v4

    goto :goto_e

    :sswitch_10
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_d

    :cond_16
    const/4 v2, 0x0

    :goto_e
    packed-switch v2, :pswitch_data_3

    goto :goto_f

    :pswitch_e
    iget-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_TOP:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->Y:Ljava/lang/Object;

    goto :goto_f

    :pswitch_f
    iget-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BOTTOM:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->Z:Ljava/lang/Object;

    goto :goto_f

    :pswitch_10
    iget-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    :goto_f
    move v2, v4

    const/16 v19, 0x0

    :goto_10
    if-eqz v19, :cond_1d

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_4

    goto :goto_11

    :sswitch_11
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_11

    :cond_17
    move/from16 v16, v18

    goto :goto_11

    :sswitch_12
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_11

    :cond_18
    move/from16 v16, v4

    goto :goto_11

    :sswitch_13
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_11

    :cond_19
    const/16 v16, 0x0

    :goto_11
    packed-switch v16, :pswitch_data_4

    move v3, v4

    goto :goto_12

    :pswitch_11
    move/from16 v3, v20

    goto :goto_12

    :pswitch_12
    const/4 v3, 0x0

    goto :goto_12

    :pswitch_13
    xor-int/lit8 v3, v20, 0x1

    :goto_12
    if-eqz v2, :cond_1b

    if-eqz v3, :cond_1a

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    goto :goto_13

    :cond_1a
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->K:Ljava/lang/Object;

    goto :goto_13

    :cond_1b
    if-eqz v3, :cond_1c

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->L:Ljava/lang/Object;

    goto :goto_13

    :cond_1c
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    :cond_1d
    :goto_13
    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->n(Ljava/lang/Float;)V

    return-void

    :cond_1e
    move/from16 v20, v7

    move/from16 v19, v10

    const/16 v18, 0x2

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    goto :goto_14

    :cond_1f
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v0

    :goto_14
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_5

    :goto_15
    move/from16 v5, v16

    goto :goto_16

    :sswitch_14
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_15

    :cond_20
    const/4 v5, 0x4

    goto :goto_16

    :sswitch_15
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_15

    :cond_21
    const/4 v5, 0x3

    goto :goto_16

    :sswitch_16
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_15

    :cond_22
    move/from16 v5, v18

    goto :goto_16

    :sswitch_17
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_15

    :cond_23
    move/from16 v5, v19

    goto :goto_16

    :sswitch_18
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    goto :goto_15

    :cond_24
    const/4 v5, 0x0

    :goto_16
    packed-switch v5, :pswitch_data_5

    goto :goto_17

    :pswitch_14
    if-eqz v20, :cond_25

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    return-void

    :cond_25
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    return-void

    :pswitch_15
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->p(Ljava/lang/Object;)V

    return-void

    :pswitch_16
    if-eqz v20, :cond_26

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->RIGHT_TO_RIGHT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->M:Ljava/lang/Object;

    return-void

    :cond_26
    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->LEFT_TO_LEFT:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->J:Ljava/lang/Object;

    return-void

    :pswitch_17
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->e(Ljava/lang/Object;)V

    return-void

    :pswitch_18
    iget-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/State;->a(Ljava/lang/Object;)V

    sget-object v2, Landroidx/constraintlayout/core/state/State$Constraint;->BASELINE_TO_BASELINE:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v2, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->d0:Landroidx/constraintlayout/core/state/State$Constraint;

    iput-object v0, v1, Landroidx/constraintlayout/core/state/ConstraintReference;->X:Ljava/lang/Object;

    :cond_27
    :goto_17
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x669119bb -> :sswitch_7
        -0x594af961 -> :sswitch_6
        -0x527265d5 -> :sswitch_5
        0x188db -> :sswitch_4
        0x1c155 -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x669119bb -> :sswitch_a
        -0x527265d5 -> :sswitch_9
        0x1c155 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x669119bb -> :sswitch_d
        -0x527265d5 -> :sswitch_c
        0x1c155 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x669119bb -> :sswitch_10
        -0x527265d5 -> :sswitch_f
        0x1c155 -> :sswitch_e
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        0x188db -> :sswitch_13
        0x677c21c -> :sswitch_12
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x669119bb -> :sswitch_18
        -0x527265d5 -> :sswitch_17
        0x188db -> :sswitch_16
        0x1c155 -> :sswitch_15
        0x68ac462 -> :sswitch_14
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method

.method public static d(Landroidx/constraintlayout/core/parser/CLObject;Ljava/lang/String;Landroidx/constraintlayout/core/state/State;Lln0;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Landroidx/constraintlayout/core/state/Dimension;->b(I)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->e(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v2, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result p0

    invoke-virtual {p3, p0}, Lln0;->e(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result p0

    invoke-static {p0}, Landroidx/constraintlayout/core/state/Dimension;->b(I)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of p0, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz p0, :cond_6

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    const-string p0, "value"

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->e(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    :cond_2
    const-string p0, "min"

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz p1, :cond_3

    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->i()F

    move-result p0

    invoke-virtual {p3, p0}, Lln0;->e(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result p0

    if-ltz p0, :cond_4

    iput p0, v1, Landroidx/constraintlayout/core/state/Dimension;->a:I

    goto :goto_0

    :cond_3
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz p0, :cond_4

    const/4 p0, -0x2

    iput p0, v1, Landroidx/constraintlayout/core/state/Dimension;->a:I

    :cond_4
    :goto_0
    const-string p0, "max"

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object p0

    if-eqz p0, :cond_6

    instance-of p1, p0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz p1, :cond_5

    check-cast p0, Landroidx/constraintlayout/core/parser/CLNumber;

    invoke-virtual {p0}, Landroidx/constraintlayout/core/parser/CLNumber;->i()F

    move-result p0

    invoke-virtual {p3, p0}, Lln0;->e(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result p0

    iget p1, v1, Landroidx/constraintlayout/core/state/Dimension;->b:I

    if-ltz p1, :cond_6

    iput p0, v1, Landroidx/constraintlayout/core/state/Dimension;->b:I

    return-object v1

    :cond_5
    instance-of p0, p0, Landroidx/constraintlayout/core/parser/CLString;

    if-eqz p0, :cond_6

    iget-boolean p0, v1, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    if-eqz p0, :cond_6

    sget-object p0, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    iput-object p0, v1, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    const p0, 0x7fffffff

    iput p0, v1, Landroidx/constraintlayout/core/state/Dimension;->b:I

    :cond_6
    return-object v1
.end method

.method public static e(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;
    .locals 6

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/constraintlayout/core/state/Dimension;->b(I)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "wrap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "spread"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "parent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_0

    :sswitch_3
    const-string v2, "preferWrap"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move v4, v0

    :goto_0
    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    sget-object v5, Landroidx/constraintlayout/core/state/Dimension;->j:Ljava/lang/String;

    packed-switch v4, :pswitch_data_0

    const-string v2, "%"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p0, v1

    new-instance v1, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v2, Landroidx/constraintlayout/core/state/Dimension;->l:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    iput p0, v1, Landroidx/constraintlayout/core/state/Dimension;->c:F

    iput-boolean v3, v1, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    iput v0, v1, Landroidx/constraintlayout/core/state/Dimension;->b:I

    return-object v1

    :cond_4
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Landroidx/constraintlayout/core/state/Dimension;->e:Ljava/lang/String;

    iput-object v5, v0, Landroidx/constraintlayout/core/state/Dimension;->f:Ljava/lang/String;

    iput-boolean v3, v0, Landroidx/constraintlayout/core/state/Dimension;->g:Z

    return-object v0

    :cond_5
    return-object v1

    :pswitch_0
    new-instance p0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {p0, v2}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    invoke-static {v5}, Landroidx/constraintlayout/core/state/Dimension;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object p0

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/constraintlayout/core/state/Dimension;

    sget-object v0, Landroidx/constraintlayout/core/state/Dimension;->k:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_3
    invoke-static {v2}, Landroidx/constraintlayout/core/state/Dimension;->c(Ljava/lang/String;)Landroidx/constraintlayout/core/state/Dimension;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57099186 -> :sswitch_3
        -0x3b54f756 -> :sswitch_2
        -0x35630e8d -> :sswitch_1
        0x37d04a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static f(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p1 .. p2}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p0, :cond_0

    invoke-virtual {v0, v5, v1}, Landroidx/constraintlayout/core/state/State;->d(ILjava/lang/String;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v6, v1}, Landroidx/constraintlayout/core/state/State;->d(ILjava/lang/String;)Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    :goto_0
    iget-boolean v1, v0, Landroidx/constraintlayout/core/state/State;->b:Z

    if-nez v1, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    :goto_2
    iget-object v4, v4, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    check-cast v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v8, v5

    move v9, v6

    const/4 v10, 0x0

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v13

    const-string v14, "start"

    const-string v15, "right"

    const/16 v16, 0x2

    const-string v7, "left"

    const-string v12, "end"

    sparse-switch v13, :sswitch_data_0

    :goto_4
    const/4 v13, -0x1

    goto :goto_5

    :sswitch_0
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    goto :goto_4

    :cond_3
    const/4 v13, 0x4

    goto :goto_5

    :sswitch_1
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_4

    :cond_4
    const/4 v13, 0x3

    goto :goto_5

    :sswitch_2
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v13, v16

    goto :goto_5

    :sswitch_3
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    goto :goto_4

    :cond_6
    move v13, v6

    goto :goto_5

    :sswitch_4
    const-string v13, "percent"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_4

    :cond_7
    move v13, v5

    :goto_5
    packed-switch v13, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v7

    iget-object v9, v0, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v7}, Lln0;->e(F)F

    move-result v10

    move v9, v1

    goto :goto_3

    :pswitch_1
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v7

    iget-object v9, v0, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v7}, Lln0;->e(F)F

    move-result v10

    move v9, v5

    goto :goto_3

    :pswitch_2
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v7

    iget-object v9, v0, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v7}, Lln0;->e(F)F

    move-result v10

    move v9, v6

    goto :goto_3

    :pswitch_3
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v7

    iget-object v9, v0, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v7}, Lln0;->e(F)F

    move-result v10

    xor-int/lit8 v9, v1, 0x1

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v13, v8, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v13, :cond_8

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    :goto_6
    if-nez v8, :cond_9

    invoke-virtual {v2, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->G(Ljava/lang/String;)F

    move-result v10

    move v8, v6

    move v9, v8

    goto/16 :goto_3

    :cond_9
    iget-object v11, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-le v11, v6, :cond_e

    invoke-virtual {v8, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v8

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_1

    :goto_7
    const/4 v12, -0x1

    goto :goto_8

    :sswitch_5
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_7

    :cond_a
    const/4 v12, 0x3

    goto :goto_8

    :sswitch_6
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    goto :goto_7

    :cond_b
    move/from16 v12, v16

    goto :goto_8

    :sswitch_7
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    goto :goto_7

    :cond_c
    move v12, v6

    goto :goto_8

    :sswitch_8
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    move v12, v5

    :goto_8
    packed-switch v12, :pswitch_data_1

    :goto_9
    move v10, v8

    :cond_e
    move v8, v6

    goto/16 :goto_3

    :pswitch_5
    move v9, v1

    goto :goto_9

    :pswitch_6
    move v9, v5

    goto :goto_9

    :pswitch_7
    move v9, v6

    move v10, v8

    move v8, v9

    goto/16 :goto_3

    :pswitch_8
    xor-int/lit8 v9, v1, 0x1

    goto :goto_9

    :cond_f
    if-eqz v8, :cond_11

    if-eqz v9, :cond_10

    const/4 v0, -0x1

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    iput v10, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    return-void

    :cond_10
    const/4 v0, -0x1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v10

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    iput v1, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    return-void

    :cond_11
    const/4 v0, -0x1

    if-eqz v9, :cond_12

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v2, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->a:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result v1

    iput v1, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    const/4 v1, 0x0

    iput v1, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    return-void

    :cond_12
    const/4 v1, 0x0

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->d:I

    iget-object v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->a:Landroidx/constraintlayout/core/state/State;

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/State;->c(Ljava/lang/Float;)I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->e:I

    iput v1, v4, Landroidx/constraintlayout/core/state/helpers/GuidelineReference;->f:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28779bbb -> :sswitch_4
        0x188db -> :sswitch_3
        0x32a007 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x188db -> :sswitch_8
        0x32a007 -> :sswitch_7
        0x677c21c -> :sswitch_6
        0x68ac462 -> :sswitch_5
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public static g(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V
    .locals 2

    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object p2

    iget-object v0, p2, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    sget-object v1, Landroidx/constraintlayout/core/state/Dimension;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    iput-object v0, p2, Landroidx/constraintlayout/core/state/ConstraintReference;->e0:Landroidx/constraintlayout/core/state/Dimension;

    :cond_0
    iget-object v0, p2, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/constraintlayout/core/state/Dimension;

    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/state/Dimension;-><init>(Ljava/lang/String;)V

    iput-object v0, p2, Landroidx/constraintlayout/core/state/ConstraintReference;->f0:Landroidx/constraintlayout/core/state/Dimension;

    :cond_1
    invoke-virtual {p3}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p3, p2, p1, p0, v1}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->a(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static h(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;)V
    .locals 35

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    const/4 v6, -0x1

    goto :goto_2

    :sswitch_0
    const-string v6, "Variables"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_1
    const-string v6, "Generate"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    goto :goto_2

    :sswitch_2
    const-string v6, "Helpers"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    const-string v11, "hGuideline"

    const-string v12, "vChain"

    const-string v13, "hChain"

    const-string v14, "vGuideline"

    const-string v7, ""

    const/16 v17, 0x0

    packed-switch v6, :pswitch_data_0

    instance-of v6, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v6, :cond_8f

    move-object v6, v0

    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    const-string v15, "type"

    if-eqz v18, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    move-object/from16 v0, v17

    :goto_3
    if-eqz v0, :cond_8e

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "hFlow"

    const/16 v21, 0x9

    const/16 v22, 0x8

    const/16 v23, 0x7

    sparse-switch v8, :sswitch_data_1

    :goto_4
    const/4 v8, -0x1

    goto/16 :goto_5

    :sswitch_3
    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v8, v21

    goto/16 :goto_5

    :sswitch_4
    const-string v8, "vFlow"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v8, v22

    goto :goto_5

    :sswitch_5
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    move/from16 v8, v23

    goto :goto_5

    :sswitch_6
    const-string v8, "grid"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_4

    :cond_8
    const/4 v8, 0x6

    goto :goto_5

    :sswitch_7
    const-string v8, "row"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_4

    :cond_9
    const/4 v8, 0x5

    goto :goto_5

    :sswitch_8
    const-string v8, "barrier"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_4

    :cond_a
    const/4 v8, 0x4

    goto :goto_5

    :sswitch_9
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_4

    :cond_b
    const/4 v8, 0x3

    goto :goto_5

    :sswitch_a
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    goto :goto_4

    :cond_c
    const/4 v8, 0x2

    goto :goto_5

    :sswitch_b
    const-string v8, "column"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_d

    goto :goto_4

    :cond_d
    const/4 v8, 0x1

    goto :goto_5

    :sswitch_c
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_4

    :cond_e
    const/4 v8, 0x0

    :goto_5
    const-string v11, "start"

    const-string v12, "end"

    const-string v13, "top"

    const-string v14, "bottom"

    const-string v10, "contains"

    move-object/from16 v25, v3

    const-string v3, "\""

    const-string v5, " contains should be an array \""

    const/high16 v26, 0x7fc00000    # Float.NaN

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_50

    :pswitch_0
    const/4 v8, 0x0

    invoke-static {v8, v1, v4, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->f(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto/16 :goto_50

    :pswitch_1
    const/4 v8, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x76

    if-ne v0, v8, :cond_f

    const/4 v0, 0x1

    goto :goto_6

    :cond_f
    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v8

    move/from16 v28, v0

    iget-object v0, v8, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v0, :cond_11

    instance-of v0, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;

    if-nez v0, :cond_10

    goto :goto_7

    :cond_10
    move-object/from16 v28, v11

    goto :goto_9

    :cond_11
    :goto_7
    if-eqz v28, :cond_12

    new-instance v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;

    move-object/from16 v28, v11

    sget-object v11, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {v0, v1, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto :goto_8

    :cond_12
    move-object/from16 v28, v11

    new-instance v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;

    sget-object v11, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_FLOW:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-direct {v0, v1, v11}, Landroidx/constraintlayout/core/state/helpers/FlowReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    :goto_8
    iput-object v0, v8, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :goto_9
    iget-object v0, v8, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v29

    sparse-switch v29, :sswitch_data_2

    move-object/from16 v29, v8

    :goto_b
    const/4 v8, -0x1

    goto/16 :goto_d

    :sswitch_d
    move-object/from16 v29, v8

    const-string v8, "wrap"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_13

    goto/16 :goto_c

    :cond_13
    const/16 v8, 0xc

    goto/16 :goto_d

    :sswitch_e
    move-object/from16 v29, v8

    const-string v8, "vGap"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_14

    goto/16 :goto_c

    :cond_14
    const/16 v8, 0xb

    goto/16 :goto_d

    :sswitch_f
    move-object/from16 v29, v8

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    goto/16 :goto_c

    :cond_15
    const/16 v8, 0xa

    goto/16 :goto_d

    :sswitch_10
    move-object/from16 v29, v8

    const-string v8, "hGap"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_16

    goto/16 :goto_c

    :cond_16
    move/from16 v8, v21

    goto/16 :goto_d

    :sswitch_11
    move-object/from16 v29, v8

    const-string v8, "maxElement"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    goto/16 :goto_c

    :cond_17
    move/from16 v8, v22

    goto/16 :goto_d

    :sswitch_12
    move-object/from16 v29, v8

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18

    goto/16 :goto_c

    :cond_18
    move/from16 v8, v23

    goto/16 :goto_d

    :sswitch_13
    move-object/from16 v29, v8

    const-string v8, "vFlowBias"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    goto :goto_c

    :cond_19
    const/4 v8, 0x6

    goto :goto_d

    :sswitch_14
    move-object/from16 v29, v8

    const-string v8, "padding"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    goto :goto_c

    :cond_1a
    const/4 v8, 0x5

    goto :goto_d

    :sswitch_15
    move-object/from16 v29, v8

    const-string v8, "vStyle"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b

    goto :goto_c

    :cond_1b
    const/4 v8, 0x4

    goto :goto_d

    :sswitch_16
    move-object/from16 v29, v8

    const-string v8, "vAlign"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v8, 0x3

    goto :goto_d

    :sswitch_17
    move-object/from16 v29, v8

    const-string v8, "hFlowBias"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1d

    goto :goto_c

    :cond_1d
    const/4 v8, 0x2

    goto :goto_d

    :sswitch_18
    move-object/from16 v29, v8

    const-string v8, "hStyle"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1e

    goto :goto_c

    :cond_1e
    const/4 v8, 0x1

    goto :goto_d

    :sswitch_19
    move-object/from16 v29, v8

    const-string v8, "hAlign"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1f

    :goto_c
    goto/16 :goto_b

    :cond_1f
    const/4 v8, 0x0

    :goto_d
    packed-switch v8, :pswitch_data_2

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v8

    invoke-static {v6, v8, v2, v1, v11}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->a(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v31, v9

    :cond_20
    move-object/from16 v33, v15

    :catch_0
    :cond_21
    :goto_f
    move-object/from16 v8, v28

    goto/16 :goto_1f

    :pswitch_2
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v8

    sget-object v11, Landroidx/constraintlayout/core/state/State$Wrap;->valueMap:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_22

    sget-object v11, Landroidx/constraintlayout/core/state/State$Wrap;->valueMap:Ljava/util/Map;

    invoke-interface {v11, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_10

    :cond_22
    const/4 v8, -0x1

    :goto_10
    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->r0:I

    goto :goto_e

    :pswitch_3
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->A0:I

    goto :goto_e

    :pswitch_4
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    const/4 v8, 0x0

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->H0:I

    goto :goto_e

    :cond_23
    const/4 v8, 0x1

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->H0:I

    goto :goto_e

    :pswitch_5
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->B0:I

    goto :goto_e

    :pswitch_6
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->G0:I

    goto :goto_e

    :pswitch_7
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v11, v8, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v11, :cond_30

    move-object v11, v8

    check-cast v11, Landroidx/constraintlayout/core/parser/CLArray;

    move-object/from16 v30, v8

    iget-object v8, v11, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    move-object/from16 v31, v9

    const/4 v9, 0x1

    if-ge v8, v9, :cond_24

    goto/16 :goto_15

    :cond_24
    const/4 v8, 0x0

    :goto_11
    iget-object v9, v11, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_20

    invoke-virtual {v11, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v9

    move/from16 v30, v8

    instance-of v8, v9, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_2e

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v8, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2d

    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v32, v11

    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    move-object/from16 v33, v15

    const/4 v15, 0x2

    if-eq v11, v15, :cond_27

    const/4 v15, 0x3

    if-eq v11, v15, :cond_26

    const/4 v15, 0x4

    if-eq v11, v15, :cond_25

    move/from16 v11, v26

    move v15, v11

    move/from16 v34, v15

    goto :goto_13

    :cond_25
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v15

    move/from16 v20, v15

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v15

    iget-object v11, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v11, v15}, Lln0;->e(F)F

    move-result v11

    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v9

    iget-object v15, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v15, v9}, Lln0;->e(F)F

    move-result v9

    move/from16 v34, v9

    move/from16 v15, v20

    goto :goto_13

    :cond_26
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v15

    const/4 v11, 0x2

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v9

    iget-object v11, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v11, v9}, Lln0;->e(F)F

    move-result v11

    :goto_12
    move/from16 v34, v11

    goto :goto_13

    :cond_27
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v15

    move/from16 v11, v26

    goto :goto_12

    :goto_13
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_29

    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->o0:Ljava/util/HashMap;

    if-nez v9, :cond_28

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->o0:Ljava/util/HashMap;

    :cond_28
    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->o0:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v9, v8, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_2b

    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->p0:Ljava/util/HashMap;

    if-nez v9, :cond_2a

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->p0:Ljava/util/HashMap;

    :cond_2a
    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->p0:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-nez v9, :cond_2f

    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->q0:Ljava/util/HashMap;

    if-nez v9, :cond_2c

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->q0:Ljava/util/HashMap;

    :cond_2c
    iget-object v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->q0:Ljava/util/HashMap;

    invoke-static/range {v34 .. v34}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_2d
    move-object/from16 v32, v11

    move-object/from16 v33, v15

    goto :goto_14

    :cond_2e
    move-object/from16 v32, v11

    move-object/from16 v33, v15

    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    :cond_2f
    :goto_14
    add-int/lit8 v8, v30, 0x1

    move-object/from16 v11, v32

    move-object/from16 v15, v33

    goto/16 :goto_11

    :cond_30
    move-object/from16 v30, v8

    :goto_15
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v4, v5}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_34

    :pswitch_8
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v9, :cond_32

    move-object v9, v8

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x1

    if-le v11, v15, :cond_32

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v15, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-object/from16 v30, v8

    const/4 v8, 0x2

    if-le v15, v8, :cond_31

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    move-object v9, v8

    :goto_16
    move-object/from16 v8, v30

    goto :goto_17

    :cond_31
    move-object/from16 v9, v27

    goto :goto_16

    :cond_32
    invoke-virtual {v8}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    move-object/from16 v8, v27

    move-object v9, v8

    :goto_17
    :try_start_0
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    iput v11, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->i:F

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v11

    cmpl-float v11, v11, v17

    if-eqz v11, :cond_33

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->I0:F

    :cond_33
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v17

    if-eqz v8, :cond_21

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->J0:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_f

    :pswitch_9
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    instance-of v9, v8, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v9, :cond_35

    move-object v9, v8

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x1

    if-le v11, v15, :cond_35

    move-object/from16 v30, v8

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v11

    int-to-float v11, v11

    iget-object v15, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    move/from16 v32, v8

    const/4 v8, 0x2

    if-le v15, v8, :cond_34

    invoke-virtual {v9, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v9

    int-to-float v8, v9

    :try_start_1
    move-object/from16 v9, v30

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    const/4 v15, 0x3

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v9
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v9, v9

    move v15, v9

    move v9, v8

    move/from16 v8, v32

    goto :goto_18

    :catch_1
    move v9, v8

    move/from16 v8, v32

    const/4 v15, 0x0

    goto :goto_18

    :cond_34
    move v15, v11

    move/from16 v8, v32

    move v9, v8

    goto :goto_18

    :cond_35
    move-object/from16 v30, v8

    invoke-virtual/range {v30 .. v30}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v8

    int-to-float v8, v8

    move v9, v8

    move v11, v9

    move v15, v11

    :goto_18
    iget-object v2, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v8}, Lln0;->e(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->C0:I

    iget-object v2, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v11}, Lln0;->e(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->E0:I

    iget-object v2, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v9}, Lln0;->e(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->D0:I

    iget-object v2, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v15}, Lln0;->e(F)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->F0:I

    goto/16 :goto_f

    :pswitch_a
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    instance-of v8, v2, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_37

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v9, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_37

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x2

    if-le v11, v15, :cond_36

    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_19

    :cond_36
    move-object v8, v7

    goto :goto_19

    :cond_37
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v9

    move-object v2, v7

    move-object v8, v2

    :goto_19
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_38

    invoke-static {v9}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->s0:I

    :cond_38
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_39

    invoke-static {v2}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->t0:I

    :cond_39
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v8}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->u0:I

    goto/16 :goto_f

    :pswitch_b
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_3

    :goto_1a
    const/4 v2, -0x1

    goto :goto_1b

    :sswitch_1a
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_1a

    :cond_3a
    const/4 v2, 0x2

    goto :goto_1b

    :sswitch_1b
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_1a

    :cond_3b
    const/4 v2, 0x1

    goto :goto_1b

    :sswitch_1c
    const-string v8, "baseline"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3c

    goto :goto_1a

    :cond_3c
    const/4 v2, 0x0

    :goto_1b
    packed-switch v2, :pswitch_data_3

    const/4 v15, 0x2

    iput v15, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    :goto_1c
    const/4 v15, 0x1

    goto/16 :goto_f

    :pswitch_c
    const/4 v8, 0x0

    iput v8, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    goto :goto_1c

    :pswitch_d
    const/4 v15, 0x1

    iput v15, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    goto/16 :goto_f

    :pswitch_e
    const/4 v2, 0x3

    const/4 v15, 0x1

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->y0:I

    goto/16 :goto_f

    :pswitch_f
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    const/4 v15, 0x1

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    instance-of v8, v2, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_3e

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v9, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v15, :cond_3e

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-object v11, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x2

    if-le v11, v15, :cond_3d

    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_1d

    :cond_3d
    move-object/from16 v8, v27

    goto :goto_1d

    :cond_3e
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    move-object/from16 v2, v27

    move-object v8, v2

    :goto_1d
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->h:F

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v9

    cmpl-float v9, v9, v17

    if-eqz v9, :cond_3f

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->K0:F

    :cond_3f
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, v17

    if-eqz v2, :cond_21

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->L0:F
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_f

    :pswitch_10
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    instance-of v8, v2, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_41

    move-object v8, v2

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v9, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_41

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x2

    if-le v11, v15, :cond_40

    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1e

    :cond_40
    move-object v8, v7

    goto :goto_1e

    :cond_41
    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v9

    move-object v2, v7

    move-object v8, v2

    :goto_1e
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_42

    invoke-static {v9}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->v0:I

    :cond_42
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_43

    invoke-static {v2}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->w0:I

    :cond_43
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    invoke-static {v8}, Landroidx/constraintlayout/core/state/State$Chain;->a(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->x0:I

    goto/16 :goto_f

    :pswitch_11
    move-object/from16 v31, v9

    move-object/from16 v33, v15

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    move-object/from16 v8, v28

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    const/4 v15, 0x2

    iput v15, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->z0:I

    goto :goto_1f

    :cond_44
    const/4 v11, 0x0

    iput v11, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->z0:I

    goto :goto_1f

    :cond_45
    move-object/from16 v8, v28

    const/4 v11, 0x1

    iput v11, v0, Landroidx/constraintlayout/core/state/helpers/FlowReference;->z0:I

    :goto_1f
    move-object/from16 v2, p2

    move-object/from16 v28, v8

    move-object/from16 v8, v29

    move-object/from16 v9, v31

    move-object/from16 v15, v33

    goto/16 :goto_a

    :pswitch_12
    move-object v8, v11

    iget-boolean v0, v1, Landroidx/constraintlayout/core/state/State;->b:Z

    sget-object v2, Landroidx/constraintlayout/core/state/State$Direction;->END:Landroidx/constraintlayout/core/state/State$Direction;

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v3

    iget-object v4, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v4, :cond_46

    instance-of v4, v4, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    if-nez v4, :cond_47

    :cond_46
    new-instance v4, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    invoke-direct {v4, v1}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;-><init>(Landroidx/constraintlayout/core/state/State;)V

    iput-object v2, v4, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/HelperReference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :cond_47
    iget-object v2, v3, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    check-cast v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_48
    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_4

    :goto_21
    const/4 v5, -0x1

    goto :goto_22

    :sswitch_1d
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_49

    goto :goto_21

    :cond_49
    const/4 v5, 0x2

    goto :goto_22

    :sswitch_1e
    const-string v5, "direction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4a

    goto :goto_21

    :cond_4a
    const/4 v5, 0x1

    goto :goto_22

    :sswitch_1f
    const-string v5, "margin"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    goto :goto_21

    :cond_4b
    const/4 v5, 0x0

    :goto_22
    packed-switch v5, :pswitch_data_4

    goto :goto_20

    :pswitch_13
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v5, :cond_4c

    check-cast v4, Landroidx/constraintlayout/core/parser/CLArray;

    goto :goto_23

    :cond_4c
    move-object/from16 v4, v17

    :goto_23
    if-eqz v4, :cond_48

    const/4 v5, 0x0

    :goto_24
    iget-object v7, v4, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_48

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :pswitch_14
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_5

    :goto_25
    const/4 v4, -0x1

    goto :goto_26

    :sswitch_20
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4d

    goto :goto_25

    :cond_4d
    const/4 v4, 0x5

    goto :goto_26

    :sswitch_21
    const-string v5, "right"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_25

    :cond_4e
    const/4 v4, 0x4

    goto :goto_26

    :sswitch_22
    const-string v5, "left"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4f

    goto :goto_25

    :cond_4f
    const/4 v4, 0x3

    goto :goto_26

    :sswitch_23
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    goto :goto_25

    :cond_50
    const/4 v4, 0x2

    goto :goto_26

    :sswitch_24
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_51

    goto :goto_25

    :cond_51
    const/4 v4, 0x1

    goto :goto_26

    :sswitch_25
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_52

    goto :goto_25

    :cond_52
    const/4 v4, 0x0

    :goto_26
    packed-switch v4, :pswitch_data_5

    goto/16 :goto_20

    :pswitch_15
    if-eqz v0, :cond_53

    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :cond_53
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_16
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_17
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_18
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->TOP:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_19
    if-eqz v0, :cond_54

    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->RIGHT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :cond_54
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->LEFT:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_1a
    sget-object v4, Landroidx/constraintlayout/core/state/State$Direction;->BOTTOM:Landroidx/constraintlayout/core/state/State$Direction;

    iput-object v4, v2, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->n0:Landroidx/constraintlayout/core/state/State$Direction;

    goto/16 :goto_20

    :pswitch_1b
    invoke-virtual {v6, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v4

    instance-of v5, v4, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v5, :cond_55

    invoke-virtual {v4}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v4

    goto :goto_27

    :cond_55
    move/from16 v4, v26

    :goto_27
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-nez v5, :cond_48

    iget-object v5, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v5, v4}, Lln0;->e(F)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->l(Ljava/lang/Float;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/16 :goto_20

    :pswitch_1c
    move-object v8, v11

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x68

    if-ne v0, v2, :cond_56

    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/State;->e(Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;

    goto :goto_28

    :cond_56
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/state/State;->e(Landroidx/constraintlayout/core/state/State$Helper;)Landroidx/constraintlayout/core/state/HelperReference;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;

    :goto_28
    iput-object v4, v0, Landroidx/constraintlayout/core/state/ConstraintReference;->a:Ljava/lang/Object;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_6

    :goto_2a
    const/4 v9, -0x1

    goto :goto_2b

    :sswitch_26
    const-string v9, "style"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_57

    goto :goto_2a

    :cond_57
    move/from16 v9, v23

    goto :goto_2b

    :sswitch_27
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_58

    goto :goto_2a

    :cond_58
    const/4 v9, 0x6

    goto :goto_2b

    :sswitch_28
    const-string v9, "right"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_59

    goto :goto_2a

    :cond_59
    const/4 v9, 0x5

    goto :goto_2b

    :sswitch_29
    const-string v9, "left"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5a

    goto :goto_2a

    :cond_5a
    const/4 v9, 0x4

    goto :goto_2b

    :sswitch_2a
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5b

    goto :goto_2a

    :cond_5b
    const/4 v9, 0x3

    goto :goto_2b

    :sswitch_2b
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5c

    goto :goto_2a

    :cond_5c
    const/4 v9, 0x2

    goto :goto_2b

    :sswitch_2c
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    goto :goto_2a

    :cond_5d
    const/4 v9, 0x1

    goto :goto_2b

    :sswitch_2d
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5e

    goto :goto_2a

    :cond_5e
    const/4 v9, 0x0

    :goto_2b
    packed-switch v9, :pswitch_data_6

    :cond_5f
    :goto_2c
    move-object/from16 v16, v2

    move-object/from16 v2, p2

    goto/16 :goto_35

    :pswitch_1d
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    instance-of v9, v7, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v9, :cond_60

    move-object v9, v7

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x1

    if-le v11, v15, :cond_60

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v9

    iput v9, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->n0:F

    goto :goto_2d

    :cond_60
    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v7

    :goto_2d
    const-string v9, "packed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_62

    const-string v9, "spread_inside"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_61

    sget-object v7, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2c

    :cond_61
    sget-object v7, Landroidx/constraintlayout/core/state/State$Chain;->SPREAD_INSIDE:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2c

    :cond_62
    sget-object v7, Landroidx/constraintlayout/core/state/State$Chain;->PACKED:Landroidx/constraintlayout/core/state/State$Chain;

    iput-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->t0:Landroidx/constraintlayout/core/state/State$Chain;

    goto :goto_2c

    :pswitch_1e
    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    instance-of v9, v7, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v9, :cond_63

    move-object v9, v7

    check-cast v9, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v15, 0x1

    if-ge v11, v15, :cond_64

    :cond_63
    move-object v2, v7

    goto/16 :goto_33

    :cond_64
    const/4 v7, 0x0

    :goto_2e
    iget-object v11, v9, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_5f

    invoke-virtual {v9, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v11

    instance-of v15, v11, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v15, :cond_70

    check-cast v11, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v15, v11, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_6f

    const/4 v15, 0x0

    invoke-virtual {v11, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v2

    iget-object v2, v11, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v17, v7

    const/4 v7, 0x2

    if-eq v2, v7, :cond_68

    const/4 v7, 0x3

    if-eq v2, v7, :cond_67

    const/4 v7, 0x4

    if-eq v2, v7, :cond_66

    const/4 v7, 0x6

    if-eq v2, v7, :cond_65

    move/from16 v7, v26

    move v11, v7

    move/from16 v21, v11

    move/from16 v22, v21

    move/from16 v24, v22

    goto/16 :goto_30

    :cond_65
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v21

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v7

    iget-object v2, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v2, v7}, Lln0;->e(F)F

    move-result v2

    move/from16 v22, v2

    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v2

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v2}, Lln0;->e(F)F

    move-result v2

    move/from16 v24, v2

    const/4 v7, 0x4

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v2

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v2}, Lln0;->e(F)F

    move-result v2

    const/4 v7, 0x5

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v11

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v11}, Lln0;->e(F)F

    move-result v7

    move/from16 v11, v21

    move/from16 v21, v7

    move/from16 v7, v24

    move/from16 v24, v22

    move/from16 v22, v11

    move v11, v2

    goto :goto_30

    :cond_66
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v21

    const/4 v7, 0x2

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v2

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v2}, Lln0;->e(F)F

    move-result v2

    const/4 v7, 0x3

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v11

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v11}, Lln0;->e(F)F

    move-result v7

    move/from16 v24, v2

    :goto_2f
    move/from16 v22, v21

    move/from16 v11, v26

    move/from16 v21, v11

    goto :goto_30

    :cond_67
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v21

    const/4 v7, 0x2

    invoke-virtual {v11, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v11

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v7, v11}, Lln0;->e(F)F

    move-result v7

    move/from16 v24, v7

    goto :goto_2f

    :cond_68
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroidx/constraintlayout/core/parser/CLContainer;->F(I)F

    move-result v21

    move/from16 v22, v21

    move/from16 v7, v26

    move v11, v7

    move/from16 v21, v11

    move/from16 v24, v21

    :goto_30
    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->isNaN(F)Z

    move-result v15

    if-nez v15, :cond_69

    iget-object v15, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->o0:Ljava/util/HashMap;

    move/from16 v28, v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v15, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_31

    :cond_69
    move/from16 v28, v7

    :goto_31
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_6a

    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->p0:Ljava/util/HashMap;

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v7, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6a
    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_6b

    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->q0:Ljava/util/HashMap;

    invoke-static/range {v28 .. v28}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v7, v2, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6b
    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_6d

    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->r0:Ljava/util/HashMap;

    if-nez v7, :cond_6c

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->r0:Ljava/util/HashMap;

    :cond_6c
    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->r0:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_71

    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->s0:Ljava/util/HashMap;

    if-nez v7, :cond_6e

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->s0:Ljava/util/HashMap;

    :cond_6e
    iget-object v7, v0, Landroidx/constraintlayout/core/state/helpers/ChainReference;->s0:Ljava/util/HashMap;

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_6f
    move-object/from16 v16, v2

    move/from16 v17, v7

    goto :goto_32

    :cond_70
    move-object/from16 v16, v2

    move/from16 v17, v7

    invoke-virtual {v11}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    :cond_71
    :goto_32
    add-int/lit8 v7, v17, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_2e

    :goto_33
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v4, v5}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_72
    :goto_34
    move-object/from16 v2, p2

    goto/16 :goto_50

    :pswitch_1f
    move-object/from16 v16, v2

    move-object/from16 v2, p2

    invoke-static {v6, v0, v2, v1, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->c(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    :goto_35
    move-object/from16 v2, v16

    goto/16 :goto_29

    :pswitch_20
    move-object v3, v7

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    iget-object v7, v5, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    if-eqz v7, :cond_73

    instance-of v7, v7, Landroidx/constraintlayout/core/state/helpers/GridReference;

    if-nez v7, :cond_76

    :cond_73
    sget-object v7, Landroidx/constraintlayout/core/state/State$Helper;->GRID:Landroidx/constraintlayout/core/state/State$Helper;

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x72

    if-ne v8, v9, :cond_74

    sget-object v7, Landroidx/constraintlayout/core/state/State$Helper;->ROW:Landroidx/constraintlayout/core/state/State$Helper;

    goto :goto_36

    :cond_74
    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v8, 0x63

    if-ne v0, v8, :cond_75

    sget-object v7, Landroidx/constraintlayout/core/state/State$Helper;->COLUMN:Landroidx/constraintlayout/core/state/State$Helper;

    :cond_75
    :goto_36
    new-instance v0, Landroidx/constraintlayout/core/state/helpers/GridReference;

    invoke-direct {v0, v1, v7}, Landroidx/constraintlayout/core/state/helpers/GridReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    iput-object v0, v5, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/state/HelperReference;->b()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/core/state/ConstraintReference;->a(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    :cond_76
    iget-object v0, v5, Landroidx/constraintlayout/core/state/ConstraintReference;->c:Landroidx/constraintlayout/core/state/helpers/Facade;

    move-object v5, v0

    check-cast v5, Landroidx/constraintlayout/core/state/helpers/GridReference;

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_37
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_aa

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_7

    :goto_38
    const/4 v8, -0x1

    goto/16 :goto_39

    :sswitch_2e
    const-string v8, "columnWeights"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_77

    goto :goto_38

    :cond_77
    const/16 v8, 0xb

    goto/16 :goto_39

    :sswitch_2f
    const-string v8, "columns"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_78

    goto :goto_38

    :cond_78
    const/16 v8, 0xa

    goto/16 :goto_39

    :sswitch_30
    const-string v8, "rowWeights"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_79

    goto :goto_38

    :cond_79
    move/from16 v8, v21

    goto/16 :goto_39

    :sswitch_31
    const-string v8, "spans"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7a

    goto :goto_38

    :cond_7a
    move/from16 v8, v22

    goto/16 :goto_39

    :sswitch_32
    const-string v8, "skips"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7b

    goto :goto_38

    :cond_7b
    move/from16 v8, v23

    goto :goto_39

    :sswitch_33
    const-string v8, "flags"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7c

    goto :goto_38

    :cond_7c
    const/4 v8, 0x6

    goto :goto_39

    :sswitch_34
    const-string v8, "vGap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7d

    goto :goto_38

    :cond_7d
    const/4 v8, 0x5

    goto :goto_39

    :sswitch_35
    const-string v8, "rows"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7e

    goto :goto_38

    :cond_7e
    const/4 v8, 0x4

    goto :goto_39

    :sswitch_36
    const-string v8, "hGap"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7f

    goto :goto_38

    :cond_7f
    const/4 v8, 0x3

    goto :goto_39

    :sswitch_37
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_80

    goto :goto_38

    :cond_80
    const/4 v8, 0x2

    goto :goto_39

    :sswitch_38
    const-string v8, "padding"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_81

    goto/16 :goto_38

    :cond_81
    const/4 v8, 0x1

    goto :goto_39

    :sswitch_39
    const-string v8, "orientation"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_82

    goto/16 :goto_38

    :cond_82
    const/4 v8, 0x0

    :goto_39
    const-string v9, ":"

    const-string v11, ","

    packed-switch v8, :pswitch_data_7

    invoke-virtual {v1, v4}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v8

    invoke-static {v6, v8, v2, v1, v0}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->a(Landroidx/constraintlayout/core/parser/CLObject;Landroidx/constraintlayout/core/state/ConstraintReference;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/state/State;Ljava/lang/String;)V

    :cond_83
    :goto_3a
    const/4 v12, 0x3

    const/4 v15, 0x2

    goto/16 :goto_37

    :pswitch_21
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    iput-object v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->y0:Ljava/lang/String;

    goto :goto_3a

    :pswitch_22
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v8, v5, Landroidx/constraintlayout/core/state/HelperReference;->l0:Landroidx/constraintlayout/core/state/State$Helper;

    sget-object v9, Landroidx/constraintlayout/core/state/State$Helper;->ROW:Landroidx/constraintlayout/core/state/State$Helper;

    if-ne v8, v9, :cond_84

    goto :goto_3a

    :cond_84
    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->u0:I

    goto :goto_3a

    :pswitch_23
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    iput-object v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->x0:Ljava/lang/String;

    goto :goto_3a

    :pswitch_24
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    iput-object v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->z0:Ljava/lang/String;

    goto :goto_3a

    :pswitch_25
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_83

    iput-object v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->A0:Ljava/lang/String;

    goto :goto_3a

    :pswitch_26
    :try_start_3
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v8, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v8, :cond_85

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    move v8, v0

    move-object v0, v3

    goto :goto_3d

    :catch_2
    move-exception v0

    goto :goto_3b

    :cond_85
    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3c

    :goto_3b
    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Error parsing grid flags "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, v3

    :goto_3c
    const/4 v8, 0x0

    :goto_3d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_89

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_86

    goto/16 :goto_3a

    :cond_86
    const-string v8, "\\|"

    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    iput v11, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    array-length v8, v0

    const/4 v9, 0x0

    :goto_3e
    if-ge v9, v8, :cond_83

    aget-object v11, v0, v9

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v12, "subgridbycolrow"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_88

    const-string v12, "spansrespectwidgetorder"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_87

    goto :goto_3f

    :cond_87
    iget v11, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    const/16 v20, 0x2

    or-int/lit8 v11, v11, 0x2

    iput v11, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    goto :goto_3f

    :cond_88
    iget v11, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    const/16 v18, 0x1

    or-int/lit8 v11, v11, 0x1

    iput v11, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    :goto_3f
    add-int/lit8 v9, v9, 0x1

    goto :goto_3e

    :cond_89
    iput v8, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->B0:I

    goto/16 :goto_3a

    :pswitch_27
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v0

    iget-object v8, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v8, v0}, Lln0;->e(F)F

    move-result v0

    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->w0:F

    goto/16 :goto_3a

    :pswitch_28
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    if-lez v0, :cond_83

    iget-object v8, v5, Landroidx/constraintlayout/core/state/HelperReference;->l0:Landroidx/constraintlayout/core/state/State$Helper;

    sget-object v9, Landroidx/constraintlayout/core/state/State$Helper;->COLUMN:Landroidx/constraintlayout/core/state/State$Helper;

    if-ne v8, v9, :cond_8a

    goto/16 :goto_3a

    :cond_8a
    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->t0:I

    goto/16 :goto_3a

    :pswitch_29
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->i()F

    move-result v0

    iget-object v8, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v8, v0}, Lln0;->e(F)F

    move-result v0

    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->v0:F

    goto/16 :goto_3a

    :pswitch_2a
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->L(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v8, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_8b

    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    goto :goto_40

    :cond_8b
    move-object/from16 v0, v17

    :goto_40
    if-eqz v0, :cond_83

    const/4 v8, 0x0

    :goto_41
    iget-object v9, v0, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_83

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v9

    invoke-virtual {v9}, Landroidx/constraintlayout/core/parser/CLElement;->h()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroidx/constraintlayout/core/state/State;->b(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroidx/constraintlayout/core/state/HelperReference;->q([Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    :pswitch_2b
    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    instance-of v8, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_8d

    move-object v8, v0

    check-cast v8, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v9, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x1

    if-le v9, v11, :cond_8d

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v12

    int-to-float v9, v12

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v12

    int-to-float v11, v12

    iget-object v12, v8, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x2

    if-le v12, v15, :cond_8c

    invoke-virtual {v8, v15}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v8

    int-to-float v8, v8

    :try_start_4
    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v12, 0x3

    :try_start_5
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/core/parser/CLContainer;->J(I)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4

    int-to-float v0, v0

    goto :goto_42

    :catch_3
    const/4 v12, 0x3

    :catch_4
    const/4 v0, 0x0

    goto :goto_42

    :cond_8c
    const/4 v12, 0x3

    move v8, v9

    move v0, v11

    goto :goto_42

    :cond_8d
    const/4 v12, 0x3

    const/4 v15, 0x2

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    int-to-float v9, v0

    move v0, v9

    move v8, v0

    move v11, v8

    :goto_42
    iget-object v13, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v13, v9}, Lln0;->e(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->o0:I

    iget-object v9, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v11}, Lln0;->e(F)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->q0:I

    iget-object v9, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v9, v8}, Lln0;->e(F)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iput v8, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->p0:I

    iget-object v8, v1, Landroidx/constraintlayout/core/state/State;->a:Lln0;

    invoke-virtual {v8, v0}, Lln0;->e(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->r0:I

    goto/16 :goto_37

    :pswitch_2c
    const/4 v12, 0x3

    const/4 v15, 0x2

    invoke-virtual {v6, v0}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    iput v0, v5, Landroidx/constraintlayout/core/state/helpers/GridReference;->s0:I

    goto/16 :goto_37

    :pswitch_2d
    const/4 v11, 0x1

    invoke-static {v11, v1, v4, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->f(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto/16 :goto_50

    :cond_8e
    move-object/from16 v25, v3

    invoke-static {v1, v2, v4, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->g(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto/16 :goto_50

    :cond_8f
    move-object/from16 v25, v3

    instance-of v3, v0, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v3, :cond_aa

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v0

    iget-object v3, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_50

    :pswitch_2e
    move-object/from16 v25, v3

    move-object v3, v7

    instance-of v4, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v4, :cond_aa

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_90
    :goto_43
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_aa

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLNumber;

    if-eqz v7, :cond_92

    invoke-virtual {v6}, Landroidx/constraintlayout/core/parser/CLElement;->u()I

    move-result v6

    iget-object v7, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_91
    const/4 v12, 0x0

    goto :goto_43

    :cond_92
    instance-of v7, v6, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v7, :cond_91

    check-cast v6, Landroidx/constraintlayout/core/parser/CLObject;

    const-string v7, "from"

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_97

    const-string v8, "to"

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v7

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v8

    const-string v9, "prefix"

    invoke-virtual {v6, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "postfix"

    invoke-virtual {v6, v10}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v10, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->b:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_93

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_93
    new-instance v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    iput-boolean v15, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->b:Z

    const/4 v12, 0x0

    iput v12, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->e:F

    const/high16 v13, 0x3f800000    # 1.0f

    iput v13, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->a:F

    if-nez v9, :cond_94

    move-object v9, v3

    :cond_94
    iput-object v9, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->c:Ljava/lang/String;

    if-nez v6, :cond_95

    move-object v6, v3

    :cond_95
    iput-object v6, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->d:Ljava/lang/String;

    iput v8, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->f:F

    invoke-virtual {v10, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->c:Ljava/util/HashMap;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    float-to-int v7, v7

    float-to-int v8, v8

    move v10, v7

    :goto_44
    if-gt v7, v8, :cond_96

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->c:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v14, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->d:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v13, v11, Landroidx/constraintlayout/core/state/ConstraintSetParser$FiniteGenerator;->a:F

    float-to-int v13, v13

    add-int/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_44

    :cond_96
    invoke-virtual {v6, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    :cond_97
    const/4 v12, 0x0

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_99

    const-string v8, "step"

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_99

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v7

    invoke-virtual {v6, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->a(Landroidx/constraintlayout/core/parser/CLElement;)F

    move-result v6

    iget-object v8, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->b:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_98
    new-instance v9, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput v6, v9, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;->a:F

    iput v7, v9, Landroidx/constraintlayout/core/state/ConstraintSetParser$Generator;->b:F

    invoke-virtual {v8, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    :cond_99
    const-string v7, "ids"

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v7

    instance-of v8, v7, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v8, :cond_9b

    check-cast v7, Landroidx/constraintlayout/core/parser/CLArray;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    :goto_45
    iget-object v9, v7, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9a

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_45

    :cond_9a
    iget-object v7, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    :cond_9b
    new-instance v0, Landroidx/constraintlayout/core/parser/CLParsingException;

    invoke-virtual {v7}, Landroidx/constraintlayout/core/parser/CLElement;->v()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no array found for key <ids>, found ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroidx/constraintlayout/core/parser/CLParsingException;-><init>(Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLElement;)V

    throw v0

    :cond_9c
    const-string v7, "tag"

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->P(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_90

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/core/parser/CLContainer;->N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Landroidx/constraintlayout/core/state/State;->e:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9d

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    goto :goto_46

    :cond_9d
    move-object/from16 v6, v17

    :goto_46
    iget-object v7, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->c:Ljava/util/HashMap;

    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_43

    :pswitch_2f
    move-object/from16 v25, v3

    instance-of v3, v0, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v3, :cond_aa

    check-cast v0, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v0}, Landroidx/constraintlayout/core/parser/CLContainer;->Q()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_aa

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->E(Ljava/lang/String;)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v5

    iget-object v6, v2, Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;->c:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    goto :goto_47

    :cond_9f
    move-object/from16 v4, v17

    :goto_47
    if-eqz v4, :cond_9e

    instance-of v6, v5, Landroidx/constraintlayout/core/parser/CLObject;

    if-eqz v6, :cond_9e

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v7, v5

    check-cast v7, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-static {v1, v2, v6, v7}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->g(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto :goto_48

    :pswitch_30
    move-object/from16 v25, v3

    const/4 v15, 0x2

    const/16 v19, 0x3

    instance-of v3, v0, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v3, :cond_aa

    check-cast v0, Landroidx/constraintlayout/core/parser/CLArray;

    const/4 v8, 0x0

    :goto_49
    iget-object v3, v0, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v8, v3, :cond_aa

    invoke-virtual {v0, v8}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLArray;

    if-eqz v4, :cond_a4

    check-cast v3, Landroidx/constraintlayout/core/parser/CLArray;

    iget-object v4, v3, Landroidx/constraintlayout/core/parser/CLContainer;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_a9

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->M(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_8

    :goto_4a
    const/4 v4, -0x1

    goto :goto_4b

    :sswitch_3a
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a0

    goto :goto_4a

    :cond_a0
    move/from16 v4, v19

    goto :goto_4b

    :sswitch_3b
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a1

    goto :goto_4a

    :cond_a1
    move v4, v15

    goto :goto_4b

    :sswitch_3c
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a2

    goto :goto_4a

    :cond_a2
    const/4 v4, 0x1

    goto :goto_4b

    :sswitch_3d
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a3

    goto :goto_4a

    :cond_a3
    const/4 v4, 0x0

    :goto_4b
    const-string v5, "id"

    packed-switch v4, :pswitch_data_8

    :cond_a4
    const/4 v4, 0x1

    :goto_4c
    const/4 v9, 0x0

    goto :goto_4f

    :pswitch_31
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    instance-of v4, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v4, :cond_a5

    goto :goto_4d

    :cond_a5
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_a6

    :goto_4d
    const/4 v9, 0x0

    goto :goto_4e

    :cond_a6
    const/4 v9, 0x0

    invoke-static {v9, v1, v4, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->f(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    :goto_4e
    const/4 v4, 0x1

    goto :goto_4f

    :pswitch_32
    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-static {v4, v1, v2, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->b(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    goto :goto_4f

    :pswitch_33
    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-static {v9, v1, v2, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->b(ILandroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/ConstraintSetParser$LayoutVariables;Landroidx/constraintlayout/core/parser/CLArray;)V

    goto :goto_4f

    :pswitch_34
    const/4 v4, 0x1

    const/4 v9, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/core/parser/CLContainer;->D(I)Landroidx/constraintlayout/core/parser/CLElement;

    move-result-object v3

    instance-of v6, v3, Landroidx/constraintlayout/core/parser/CLObject;

    if-nez v6, :cond_a7

    goto :goto_4f

    :cond_a7
    check-cast v3, Landroidx/constraintlayout/core/parser/CLObject;

    invoke-virtual {v3, v5}, Landroidx/constraintlayout/core/parser/CLContainer;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a8

    goto :goto_4f

    :cond_a8
    invoke-static {v4, v1, v5, v3}, Landroidx/constraintlayout/core/state/ConstraintSetParser;->f(ILandroidx/constraintlayout/core/state/State;Ljava/lang/String;Landroidx/constraintlayout/core/parser/CLObject;)V

    goto :goto_4f

    :cond_a9
    move v4, v9

    goto :goto_4c

    :goto_4f
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_49

    :cond_aa
    :goto_50
    move-object/from16 v3, v25

    goto/16 :goto_0

    :cond_ab
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cbf819b -> :sswitch_2
        0x6fc27995 -> :sswitch_1
        0x72879d57 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6a6caee6 -> :sswitch_c
        -0x50c12caa -> :sswitch_b
        -0x4aa718c7 -> :sswitch_a
        -0x32c34015 -> :sswitch_9
        -0x13db5c49 -> :sswitch_8
        0x1b9da -> :sswitch_7
        0x308b46 -> :sswitch_6
        0x5db01b6 -> :sswitch_5
        0x6a04ac4 -> :sswitch_4
        0x398f2168 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_20
        :pswitch_1c
        :pswitch_1c
        :pswitch_12
        :pswitch_20
        :pswitch_20
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x4ac15883 -> :sswitch_19
        -0x49bfd1d7 -> :sswitch_18
        -0x47693271 -> :sswitch_17
        -0x32dd7fd1 -> :sswitch_16
        -0x31dbf925 -> :sswitch_15
        -0x300fc3ef -> :sswitch_14
        -0x2bab2063 -> :sswitch_13
        -0x21d289e1 -> :sswitch_12
        -0x1d240708 -> :sswitch_11
        0x305d4e -> :sswitch_10
        0x368f3a -> :sswitch_f
        0x36ba80 -> :sswitch_e
        0x37d04a -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x669119bb -> :sswitch_1c
        -0x527265d5 -> :sswitch_1b
        0x1c155 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x40737a52 -> :sswitch_1f
        -0x395ff881 -> :sswitch_1e
        -0x21d289e1 -> :sswitch_1d
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x527265d5 -> :sswitch_25
        0x188db -> :sswitch_24
        0x1c155 -> :sswitch_23
        0x32a007 -> :sswitch_22
        0x677c21c -> :sswitch_21
        0x68ac462 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x527265d5 -> :sswitch_2d
        -0x21d289e1 -> :sswitch_2c
        0x188db -> :sswitch_2b
        0x1c155 -> :sswitch_2a
        0x32a007 -> :sswitch_29
        0x677c21c -> :sswitch_28
        0x68ac462 -> :sswitch_27
        0x68b1db1 -> :sswitch_26
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
        :pswitch_1d
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x55cd0a30 -> :sswitch_39
        -0x300fc3ef -> :sswitch_38
        -0x21d289e1 -> :sswitch_37
        0x305d4e -> :sswitch_36
        0x3581d9 -> :sswitch_35
        0x36ba80 -> :sswitch_34
        0x5cfee87 -> :sswitch_33
        0x686cad4 -> :sswitch_32
        0x688f269 -> :sswitch_31
        0x89c01c1 -> :sswitch_30
        0x389b97dd -> :sswitch_2f
        0x793284c5 -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_2c
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
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x6a6caee6 -> :sswitch_3d
        -0x4aa718c7 -> :sswitch_3c
        -0x32c34015 -> :sswitch_3b
        0x398f2168 -> :sswitch_3a
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
    .end packed-switch
.end method
