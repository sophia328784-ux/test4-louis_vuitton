.class public abstract Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u00a8\u0006\u0004\u00b2\u0006\u000e\u0010\u0001\u001a\u00020\u00008\n@\nX\u008a\u008e\u0002\u00b2\u0006\u000e\u0010\u0003\u001a\u00020\u00028\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Landroidx/compose/ui/text/input/TextFieldValue;",
        "textFieldValueState",
        "",
        "lastTextValue",
        "system"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Landroidx/compose/animation/core/SpringSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/high16 v3, 0x43c80000    # 400.0f

    invoke-static {v2, v3, v1, v0}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->a:Landroidx/compose/animation/core/SpringSpec;

    return-void
.end method

.method public static final a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V
    .locals 45

    move-object/from16 v0, p2

    move-object/from16 v4, p3

    move/from16 v1, p28

    move/from16 v2, p29

    move/from16 v3, p30

    if-eqz v0, :cond_0

    const-string v5, "LVTextFieldInternal"

    invoke-static {v0, v5}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v5, 0x6f7efae0

    move-object/from16 v6, p27

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v5

    and-int/lit8 v6, v1, 0x6

    move-object/from16 v9, p0

    if-nez v6, :cond_2

    invoke-virtual {v5, v9}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x4

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    :goto_0
    or-int/2addr v6, v1

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    and-int/lit8 v10, v1, 0x30

    if-nez v10, :cond_4

    move-object/from16 v10, p1

    invoke-virtual {v5, v10}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/16 v13, 0x20

    goto :goto_2

    :cond_3
    const/16 v13, 0x10

    :goto_2
    or-int/2addr v6, v13

    goto :goto_3

    :cond_4
    move-object/from16 v10, p1

    :goto_3
    and-int/lit16 v13, v1, 0x180

    if-nez v13, :cond_6

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/16 v13, 0x100

    goto :goto_4

    :cond_5
    const/16 v13, 0x80

    :goto_4
    or-int/2addr v6, v13

    :cond_6
    and-int/lit16 v13, v1, 0xc00

    const/16 v16, 0x400

    const/16 v17, 0x800

    if-nez v13, :cond_8

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    move/from16 v13, v17

    goto :goto_5

    :cond_7
    move/from16 v13, v16

    :goto_5
    or-int/2addr v6, v13

    :cond_8
    and-int/lit16 v13, v1, 0x6000

    const/16 v18, 0x2000

    const/16 v19, 0x4000

    if-nez v13, :cond_a

    move/from16 v13, p4

    invoke-virtual {v5, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v20

    if-eqz v20, :cond_9

    move/from16 v20, v19

    goto :goto_6

    :cond_9
    move/from16 v20, v18

    :goto_6
    or-int v6, v6, v20

    goto :goto_7

    :cond_a
    move/from16 v13, p4

    :goto_7
    const/high16 v20, 0x30000

    and-int v21, v1, v20

    const/high16 v22, 0x10000

    const/high16 v23, 0x20000

    move/from16 v7, p5

    if-nez v21, :cond_c

    invoke-virtual {v5, v7}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_b

    move/from16 v21, v23

    goto :goto_8

    :cond_b
    move/from16 v21, v22

    :goto_8
    or-int v6, v6, v21

    :cond_c
    const/high16 v21, 0x180000

    and-int v24, v1, v21

    const/high16 v25, 0x80000

    const/high16 v26, 0x100000

    move-object/from16 v8, p6

    if-nez v24, :cond_e

    invoke-virtual {v5, v8}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    move/from16 v24, v26

    goto :goto_9

    :cond_d
    move/from16 v24, v25

    :goto_9
    or-int v6, v6, v24

    :cond_e
    const/high16 v24, 0xc00000

    and-int v27, v1, v24

    const/high16 v28, 0x400000

    const/high16 v29, 0x800000

    move-object/from16 v11, p7

    if-nez v27, :cond_10

    invoke-virtual {v5, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_f

    move/from16 v30, v29

    goto :goto_a

    :cond_f
    move/from16 v30, v28

    :goto_a
    or-int v6, v6, v30

    :cond_10
    const/high16 v30, 0x6000000

    and-int v31, v1, v30

    const/high16 v32, 0x2000000

    const/high16 v33, 0x4000000

    move/from16 v12, p8

    if-nez v31, :cond_12

    invoke-virtual {v5, v12}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v34

    if-eqz v34, :cond_11

    move/from16 v34, v33

    goto :goto_b

    :cond_11
    move/from16 v34, v32

    :goto_b
    or-int v6, v6, v34

    :cond_12
    const/high16 v34, 0x30000000

    and-int v35, v1, v34

    const/high16 v36, 0x10000000

    const/high16 v37, 0x20000000

    move-object/from16 v14, p9

    if-nez v35, :cond_14

    invoke-virtual {v5, v14}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    move/from16 v38, v37

    goto :goto_c

    :cond_13
    move/from16 v38, v36

    :goto_c
    or-int v6, v6, v38

    :cond_14
    and-int/lit8 v38, v2, 0x6

    move-object/from16 v15, p10

    if-nez v38, :cond_16

    invoke-virtual {v5, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_15

    const/16 v39, 0x4

    goto :goto_d

    :cond_15
    const/16 v39, 0x2

    :goto_d
    or-int v39, v2, v39

    goto :goto_e

    :cond_16
    move/from16 v39, v2

    :goto_e
    and-int/lit8 v40, v2, 0x30

    if-nez v40, :cond_18

    move-object/from16 v40, v0

    move-object/from16 v0, p11

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_17

    const/16 v41, 0x20

    goto :goto_f

    :cond_17
    const/16 v41, 0x10

    :goto_f
    or-int v39, v39, v41

    goto :goto_10

    :cond_18
    move-object/from16 v40, v0

    move-object/from16 v0, p11

    :goto_10
    and-int/lit16 v0, v2, 0x180

    if-nez v0, :cond_1a

    move-object/from16 v0, p12

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_19

    const/16 v41, 0x100

    goto :goto_11

    :cond_19
    const/16 v41, 0x80

    :goto_11
    or-int v39, v39, v41

    goto :goto_12

    :cond_1a
    move-object/from16 v0, p12

    :goto_12
    and-int/lit16 v0, v2, 0xc00

    if-nez v0, :cond_1c

    move/from16 v0, p13

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v41

    if-eqz v41, :cond_1b

    move/from16 v41, v17

    goto :goto_13

    :cond_1b
    move/from16 v41, v16

    :goto_13
    or-int v39, v39, v41

    goto :goto_14

    :cond_1c
    move/from16 v0, p13

    :goto_14
    and-int/lit16 v0, v2, 0x6000

    if-nez v0, :cond_1e

    move/from16 v0, p14

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v41

    if-eqz v41, :cond_1d

    move/from16 v41, v19

    goto :goto_15

    :cond_1d
    move/from16 v41, v18

    :goto_15
    or-int v39, v39, v41

    goto :goto_16

    :cond_1e
    move/from16 v0, p14

    :goto_16
    and-int v41, v2, v20

    move/from16 v0, p15

    if-nez v41, :cond_20

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v41

    if-eqz v41, :cond_1f

    move/from16 v41, v23

    goto :goto_17

    :cond_1f
    move/from16 v41, v22

    :goto_17
    or-int v39, v39, v41

    :cond_20
    and-int v41, v2, v21

    move-object/from16 v0, p16

    if-nez v41, :cond_22

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_21

    move/from16 v41, v26

    goto :goto_18

    :cond_21
    move/from16 v41, v25

    :goto_18
    or-int v39, v39, v41

    :cond_22
    and-int v24, v2, v24

    move-object/from16 v0, p17

    if-nez v24, :cond_24

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_23

    move/from16 v28, v29

    :cond_23
    or-int v39, v39, v28

    :cond_24
    and-int v24, v2, v30

    move-object/from16 v0, p18

    if-nez v24, :cond_26

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_25

    move/from16 v32, v33

    :cond_25
    or-int v39, v39, v32

    :cond_26
    and-int v24, v2, v34

    move-object/from16 v0, p19

    if-nez v24, :cond_28

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27

    move/from16 v36, v37

    :cond_27
    or-int v39, v39, v36

    :cond_28
    and-int/lit8 v24, v3, 0x6

    move-object/from16 v0, p20

    if-nez v24, :cond_2a

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_29

    const/16 v24, 0x4

    goto :goto_19

    :cond_29
    const/16 v24, 0x2

    :goto_19
    or-int v24, v3, v24

    goto :goto_1a

    :cond_2a
    move/from16 v24, v3

    :goto_1a
    and-int/lit8 v28, v3, 0x30

    move/from16 v0, p21

    if-nez v28, :cond_2c

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v28

    if-eqz v28, :cond_2b

    const/16 v27, 0x20

    goto :goto_1b

    :cond_2b
    const/16 v27, 0x10

    :goto_1b
    or-int v24, v24, v27

    :cond_2c
    and-int/lit16 v0, v3, 0x180

    if-nez v0, :cond_2e

    move-object/from16 v0, p22

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2d

    const/16 v35, 0x100

    goto :goto_1c

    :cond_2d
    const/16 v35, 0x80

    :goto_1c
    or-int v24, v24, v35

    goto :goto_1d

    :cond_2e
    move-object/from16 v0, p22

    :goto_1d
    and-int/lit16 v0, v3, 0xc00

    if-nez v0, :cond_31

    if-nez p23, :cond_2f

    const/4 v0, -0x1

    goto :goto_1e

    :cond_2f
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_1e
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_30

    move/from16 v16, v17

    :cond_30
    or-int v24, v24, v16

    :cond_31
    and-int/lit16 v0, v3, 0x6000

    if-nez v0, :cond_33

    move-object/from16 v0, p24

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_32

    move/from16 v18, v19

    :cond_32
    or-int v24, v24, v18

    goto :goto_1f

    :cond_33
    move-object/from16 v0, p24

    :goto_1f
    and-int v16, v3, v20

    move-object/from16 v0, p25

    if-nez v16, :cond_35

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_34

    move/from16 v22, v23

    :cond_34
    or-int v24, v24, v22

    :cond_35
    and-int v16, v3, v21

    move/from16 v0, p26

    if-nez v16, :cond_37

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v16

    if-eqz v16, :cond_36

    move/from16 v25, v26

    :cond_36
    or-int v24, v24, v25

    :cond_37
    const v16, 0x12492493

    and-int v0, v6, v16

    const v1, 0x12492492

    const/16 v17, 0x1

    if-ne v0, v1, :cond_39

    and-int v0, v39, v16

    if-ne v0, v1, :cond_39

    const v0, 0x92493

    and-int v0, v24, v0

    const v1, 0x92492

    if-eq v0, v1, :cond_38

    goto :goto_20

    :cond_38
    const/4 v0, 0x0

    goto :goto_21

    :cond_39
    :goto_20
    move/from16 v0, v17

    :goto_21
    and-int/lit8 v1, v6, 0x1

    invoke-virtual {v5, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, p28, 0x1

    if-eqz v0, :cond_3b

    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_22

    :cond_3a
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->D()V

    :cond_3b
    :goto_22
    invoke-virtual {v5}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v16, Landroidx/compose/foundation/text/selection/TextSelectionColors;

    iget-wide v0, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->r:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->s:J

    const/16 v21, 0x0

    move-wide/from16 v19, v0

    invoke-direct/range {v16 .. v21}, Landroidx/compose/foundation/text/selection/TextSelectionColors;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    iget-wide v1, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;->w:J

    sget-object v6, Landroidx/compose/ui/platform/CompositionLocalsKt;->n:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v5, v6}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v3, Landroidx/compose/foundation/text/selection/TextSelectionColorsKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {v3, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    sget-object v3, Landroidx/compose/foundation/text/AutofillHighlightKt;->b:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {v1, v2, v3}, La;->d(JLandroidx/compose/runtime/DynamicProvidableCompositionLocal;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v1

    filled-new-array {v0, v1}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v0

    move-object v1, v0

    new-instance v0, Lm80;

    move-object/from16 v22, p16

    move-object/from16 v26, p17

    move-object/from16 v27, p18

    move-object/from16 v16, p19

    move/from16 v23, p21

    move-object/from16 v17, p22

    move-object/from16 v18, p23

    move-object/from16 v25, p24

    move-object/from16 v28, p25

    move/from16 v24, p26

    move-object/from16 v43, v1

    move-object/from16 v42, v5

    move-object/from16 v19, v8

    move-object/from16 v20, v11

    move v3, v12

    move v5, v13

    move-object/from16 v21, v15

    move-object/from16 v2, v40

    move-object/from16 v8, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v15, p15

    move-object/from16 v1, p20

    move v11, v7

    move-object v7, v6

    move-object v6, v4

    move-object v4, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v28}, Lm80;-><init>(Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;ZLjava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/foundation/text/KeyboardActions;ZIILandroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Ljava/lang/Integer;ZZLandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;)V

    const v1, 0x4a35afa0    # 2976744.0f

    move-object/from16 v3, v42

    invoke-static {v1, v0, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v1, 0x38

    move-object/from16 v4, v43

    invoke-static {v4, v0, v3, v1}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_23

    :cond_3c
    move-object v3, v5

    move-object/from16 v2, v40

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_23
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_3d

    move-object v1, v0

    new-instance v0, Ln80;

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move-object/from16 v44, v1

    move-object v3, v2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v30}, Ln80;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZIII)V

    move-object/from16 v1, v44

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3d
    return-void
.end method

.method public static final b(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;IIII)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    move/from16 v14, p13

    move/from16 v3, p28

    move/from16 v4, p29

    move/from16 v5, p30

    move/from16 v6, p31

    const-string v7, "LVTextFieldInternal"

    if-eqz v0, :cond_0

    invoke-static {v0, v7}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v8, -0x5bf11bad

    move-object/from16 v9, p27

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v8

    and-int/lit8 v9, v3, 0x6

    if-nez v9, :cond_2

    invoke-virtual {v8, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x4

    goto :goto_0

    :cond_1
    const/4 v9, 0x2

    :goto_0
    or-int/2addr v9, v3

    goto :goto_1

    :cond_2
    move v9, v3

    :goto_1
    and-int/lit8 v12, v3, 0x30

    if-nez v12, :cond_4

    invoke-virtual {v8, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x20

    goto :goto_2

    :cond_3
    const/16 v12, 0x10

    :goto_2
    or-int/2addr v9, v12

    :cond_4
    and-int/lit16 v12, v3, 0x180

    const/16 v16, 0x100

    const/16 v17, 0x80

    if-nez v12, :cond_6

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move/from16 v12, v16

    goto :goto_3

    :cond_5
    move/from16 v12, v17

    :goto_3
    or-int/2addr v9, v12

    :cond_6
    and-int/lit16 v12, v3, 0xc00

    const/16 v18, 0x800

    const/16 v19, 0x400

    if-nez v12, :cond_8

    move-object/from16 v12, p3

    invoke-virtual {v8, v12}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    move/from16 v20, v18

    goto :goto_4

    :cond_7
    move/from16 v20, v19

    :goto_4
    or-int v9, v9, v20

    goto :goto_5

    :cond_8
    move-object/from16 v12, p3

    :goto_5
    and-int/lit16 v13, v3, 0x6000

    const/16 v20, 0x2000

    const/16 v21, 0x4000

    if-nez v13, :cond_a

    move/from16 v13, p4

    invoke-virtual {v8, v13}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v22

    if-eqz v22, :cond_9

    move/from16 v22, v21

    goto :goto_6

    :cond_9
    move/from16 v22, v20

    :goto_6
    or-int v9, v9, v22

    goto :goto_7

    :cond_a
    move/from16 v13, p4

    :goto_7
    const/high16 v22, 0x30000

    and-int v23, v3, v22

    const/high16 v24, 0x10000

    const/high16 v25, 0x20000

    move/from16 v15, p5

    if-nez v23, :cond_c

    invoke-virtual {v8, v15}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v26

    if-eqz v26, :cond_b

    move/from16 v26, v25

    goto :goto_8

    :cond_b
    move/from16 v26, v24

    :goto_8
    or-int v9, v9, v26

    :cond_c
    const/high16 v26, 0x180000

    and-int v27, v3, v26

    const/high16 v28, 0x100000

    const/high16 v29, 0x80000

    move-object/from16 v10, p6

    if-nez v27, :cond_e

    invoke-virtual {v8, v10}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    move/from16 v30, v28

    goto :goto_9

    :cond_d
    move/from16 v30, v29

    :goto_9
    or-int v9, v9, v30

    :cond_e
    const/high16 v30, 0xc00000

    and-int v31, v3, v30

    const/high16 v32, 0x400000

    const/high16 v33, 0x800000

    if-nez v31, :cond_11

    and-int/lit16 v11, v6, 0x80

    if-nez v11, :cond_f

    move-object/from16 v11, p7

    invoke-virtual {v8, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    move/from16 v34, v33

    goto :goto_a

    :cond_f
    move-object/from16 v11, p7

    :cond_10
    move/from16 v34, v32

    :goto_a
    or-int v9, v9, v34

    goto :goto_b

    :cond_11
    move-object/from16 v11, p7

    :goto_b
    const/high16 v34, 0x6000000

    and-int v35, v3, v34

    const/high16 v36, 0x2000000

    const/high16 v37, 0x4000000

    if-nez v35, :cond_13

    move-object/from16 v35, v0

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v38

    if-eqz v38, :cond_12

    move/from16 v38, v37

    goto :goto_c

    :cond_12
    move/from16 v38, v36

    :goto_c
    or-int v9, v9, v38

    goto :goto_d

    :cond_13
    move-object/from16 v35, v0

    move/from16 v0, p8

    :goto_d
    const/high16 v38, 0x30000000

    and-int v39, v3, v38

    const/high16 v40, 0x10000000

    const/high16 v41, 0x20000000

    move-object/from16 v0, p9

    if-nez v39, :cond_15

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_14

    move/from16 v39, v41

    goto :goto_e

    :cond_14
    move/from16 v39, v40

    :goto_e
    or-int v9, v9, v39

    :cond_15
    and-int/lit8 v39, v4, 0x6

    if-nez v39, :cond_18

    and-int/lit16 v0, v6, 0x400

    if-nez v0, :cond_16

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_17

    const/16 v39, 0x4

    goto :goto_f

    :cond_16
    move-object/from16 v0, p10

    :cond_17
    const/16 v39, 0x2

    :goto_f
    or-int v39, v4, v39

    goto :goto_10

    :cond_18
    move-object/from16 v0, p10

    move/from16 v39, v4

    :goto_10
    and-int/lit16 v0, v6, 0x800

    if-eqz v0, :cond_19

    or-int/lit8 v39, v39, 0x30

    move/from16 v42, v0

    :goto_11
    move/from16 v0, v39

    goto :goto_13

    :cond_19
    and-int/lit8 v42, v4, 0x30

    if-nez v42, :cond_1b

    move/from16 v42, v0

    move-object/from16 v0, p11

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1a

    const/16 v43, 0x20

    goto :goto_12

    :cond_1a
    const/16 v43, 0x10

    :goto_12
    or-int v39, v39, v43

    goto :goto_11

    :cond_1b
    move/from16 v42, v0

    move-object/from16 v0, p11

    goto :goto_11

    :goto_13
    and-int/lit16 v1, v6, 0x1000

    if-eqz v1, :cond_1d

    or-int/lit16 v0, v0, 0x180

    move/from16 v39, v0

    :cond_1c
    move-object/from16 v0, p12

    goto :goto_15

    :cond_1d
    move/from16 v39, v0

    and-int/lit16 v0, v4, 0x180

    if-nez v0, :cond_1c

    move-object/from16 v0, p12

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1e

    move/from16 v43, v16

    goto :goto_14

    :cond_1e
    move/from16 v43, v17

    :goto_14
    or-int v39, v39, v43

    :goto_15
    and-int/lit16 v0, v4, 0xc00

    if-nez v0, :cond_20

    invoke-virtual {v8, v14}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_1f

    move/from16 v0, v18

    goto :goto_16

    :cond_1f
    move/from16 v0, v19

    :goto_16
    or-int v39, v39, v0

    :cond_20
    and-int/lit16 v0, v4, 0x6000

    if-nez v0, :cond_23

    and-int/lit16 v0, v6, 0x4000

    if-nez v0, :cond_21

    move/from16 v0, p14

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v43

    if-eqz v43, :cond_22

    move/from16 v43, v21

    goto :goto_17

    :cond_21
    move/from16 v0, p14

    :cond_22
    move/from16 v43, v20

    :goto_17
    or-int v39, v39, v43

    goto :goto_18

    :cond_23
    move/from16 v0, p14

    :goto_18
    const v43, 0x8000

    and-int v43, v6, v43

    if-eqz v43, :cond_24

    or-int v39, v39, v22

    move/from16 v0, p15

    goto :goto_1a

    :cond_24
    and-int v44, v4, v22

    move/from16 v0, p15

    if-nez v44, :cond_26

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v44

    if-eqz v44, :cond_25

    move/from16 v44, v25

    goto :goto_19

    :cond_25
    move/from16 v44, v24

    :goto_19
    or-int v39, v39, v44

    :cond_26
    :goto_1a
    and-int v44, v6, v24

    if-eqz v44, :cond_27

    or-int v39, v39, v26

    move-object/from16 v0, p16

    goto :goto_1c

    :cond_27
    and-int v45, v4, v26

    move-object/from16 v0, p16

    if-nez v45, :cond_29

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v45

    if-eqz v45, :cond_28

    move/from16 v45, v28

    goto :goto_1b

    :cond_28
    move/from16 v45, v29

    :goto_1b
    or-int v39, v39, v45

    :cond_29
    :goto_1c
    and-int v45, v6, v25

    if-eqz v45, :cond_2a

    or-int v39, v39, v30

    move-object/from16 v0, p17

    goto :goto_1e

    :cond_2a
    and-int v30, v4, v30

    move-object/from16 v0, p17

    if-nez v30, :cond_2c

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    move/from16 v30, v33

    goto :goto_1d

    :cond_2b
    move/from16 v30, v32

    :goto_1d
    or-int v39, v39, v30

    :cond_2c
    :goto_1e
    const/high16 v30, 0x40000

    and-int v30, v6, v30

    if-eqz v30, :cond_2d

    or-int v39, v39, v34

    move-object/from16 v0, p18

    goto :goto_20

    :cond_2d
    and-int v34, v4, v34

    move-object/from16 v0, p18

    if-nez v34, :cond_2f

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_2e

    move/from16 v34, v37

    goto :goto_1f

    :cond_2e
    move/from16 v34, v36

    :goto_1f
    or-int v39, v39, v34

    :cond_2f
    :goto_20
    and-int v34, v6, v29

    if-eqz v34, :cond_30

    or-int v39, v39, v38

    move-object/from16 v0, p19

    goto :goto_21

    :cond_30
    and-int v38, v4, v38

    move-object/from16 v0, p19

    if-nez v38, :cond_32

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_31

    move/from16 v40, v41

    :cond_31
    or-int v39, v39, v40

    :cond_32
    :goto_21
    and-int/lit8 v38, v5, 0x6

    move-object/from16 v0, p20

    if-nez v38, :cond_34

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_33

    const/16 v38, 0x4

    goto :goto_22

    :cond_33
    const/16 v38, 0x2

    :goto_22
    or-int v38, v5, v38

    goto :goto_23

    :cond_34
    move/from16 v38, v5

    :goto_23
    const/high16 v40, 0x200000

    and-int v40, v6, v40

    if-eqz v40, :cond_36

    or-int/lit8 v38, v38, 0x30

    :cond_35
    :goto_24
    move/from16 v0, v38

    goto :goto_26

    :cond_36
    and-int/lit8 v41, v5, 0x30

    move/from16 v0, p21

    if-nez v41, :cond_35

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v41

    if-eqz v41, :cond_37

    const/16 v41, 0x20

    goto :goto_25

    :cond_37
    const/16 v41, 0x10

    :goto_25
    or-int v38, v38, v41

    goto :goto_24

    :goto_26
    and-int v32, v6, v32

    if-eqz v32, :cond_38

    or-int/lit16 v0, v0, 0x180

    goto :goto_28

    :cond_38
    move/from16 v38, v0

    and-int/lit16 v0, v5, 0x180

    if-nez v0, :cond_3a

    move-object/from16 v0, p22

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v41

    if-eqz v41, :cond_39

    goto :goto_27

    :cond_39
    move/from16 v16, v17

    :goto_27
    or-int v16, v38, v16

    move/from16 v0, v16

    goto :goto_28

    :cond_3a
    move-object/from16 v0, p22

    move/from16 v0, v38

    :goto_28
    and-int v16, v6, v33

    if-eqz v16, :cond_3b

    or-int/lit16 v0, v0, 0xc00

    goto :goto_2b

    :cond_3b
    move/from16 v17, v0

    and-int/lit16 v0, v5, 0xc00

    if-nez v0, :cond_3e

    if-nez p23, :cond_3c

    const/4 v0, -0x1

    goto :goto_29

    :cond_3c
    invoke-virtual/range {p23 .. p23}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_29
    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto :goto_2a

    :cond_3d
    move/from16 v18, v19

    :goto_2a
    or-int v0, v17, v18

    goto :goto_2b

    :cond_3e
    move/from16 v0, v17

    :goto_2b
    move/from16 p2, v0

    and-int/lit16 v0, v5, 0x6000

    const/high16 v17, 0x1000000

    if-nez v0, :cond_41

    and-int v0, v6, v17

    if-nez v0, :cond_3f

    move-object/from16 v0, p24

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    move/from16 v20, v21

    goto :goto_2c

    :cond_3f
    move-object/from16 v0, p24

    :cond_40
    :goto_2c
    or-int v18, p2, v20

    goto :goto_2d

    :cond_41
    move-object/from16 v0, p24

    move/from16 v18, p2

    :goto_2d
    and-int v19, v6, v36

    if-eqz v19, :cond_42

    or-int v18, v18, v22

    move-object/from16 v0, p25

    goto :goto_2e

    :cond_42
    and-int v20, v5, v22

    move-object/from16 v0, p25

    if-nez v20, :cond_44

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_43

    move/from16 v24, v25

    :cond_43
    or-int v18, v18, v24

    :cond_44
    :goto_2e
    and-int v20, v6, v37

    if-eqz v20, :cond_45

    or-int v18, v18, v26

    move/from16 v0, p26

    goto :goto_30

    :cond_45
    and-int v21, v5, v26

    move/from16 v0, p26

    if-nez v21, :cond_47

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result v21

    if-eqz v21, :cond_46

    goto :goto_2f

    :cond_46
    move/from16 v28, v29

    :goto_2f
    or-int v18, v18, v28

    :cond_47
    :goto_30
    const v21, 0x12492493

    and-int v0, v9, v21

    move/from16 v22, v1

    const v1, 0x12492492

    const/16 v24, 0x1

    const/16 v25, 0x0

    if-ne v0, v1, :cond_49

    and-int v0, v39, v21

    if-ne v0, v1, :cond_49

    const v0, 0x92493

    and-int v0, v18, v0

    const v1, 0x92492

    if-eq v0, v1, :cond_48

    goto :goto_31

    :cond_48
    move/from16 v0, v25

    goto :goto_32

    :cond_49
    :goto_31
    move/from16 v0, v24

    :goto_32
    and-int/lit8 v1, v9, 0x1

    invoke-virtual {v8, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->y0()V

    and-int/lit8 v0, v3, 0x1

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const v21, -0x1c00001

    const v26, -0xe001

    if-eqz v0, :cond_4f

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->h0()Z

    move-result v0

    if-eqz v0, :cond_4a

    goto :goto_33

    :cond_4a
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->D()V

    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_4b

    and-int v9, v9, v21

    :cond_4b
    and-int/lit16 v0, v6, 0x400

    if-eqz v0, :cond_4c

    and-int/lit8 v39, v39, -0xf

    :cond_4c
    and-int/lit16 v0, v6, 0x4000

    if-eqz v0, :cond_4d

    and-int v39, v39, v26

    :cond_4d
    and-int v0, v6, v17

    if-eqz v0, :cond_4e

    and-int v18, v18, v26

    :cond_4e
    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v17, p14

    move-object/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v26, p23

    move-object/from16 v27, p24

    move-object/from16 v28, p25

    move/from16 v29, p26

    move/from16 v0, v18

    move/from16 v7, v24

    move/from16 v16, v25

    const/4 v3, 0x4

    move/from16 v18, p15

    move/from16 v24, p21

    move-object/from16 v25, p22

    goto/16 :goto_45

    :cond_4f
    :goto_33
    and-int/lit16 v0, v6, 0x80

    if-eqz v0, :cond_50

    const-string v0, "textField_title_text"

    invoke-static {v7, v0}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int v9, v9, v21

    goto :goto_34

    :cond_50
    move-object v0, v11

    :goto_34
    and-int/lit16 v11, v6, 0x400

    if-eqz v11, :cond_51

    const-string v11, "textField_supporting_text"

    invoke-static {v7, v11}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    and-int/lit8 v39, v39, -0xf

    goto :goto_35

    :cond_51
    move-object/from16 v11, p10

    :goto_35
    if-eqz v42, :cond_52

    sget-object v21, Landroidx/compose/foundation/text/KeyboardOptions;->h:Landroidx/compose/foundation/text/KeyboardOptions$Companion;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v21, Landroidx/compose/foundation/text/KeyboardOptions;->i:Landroidx/compose/foundation/text/KeyboardOptions;

    goto :goto_36

    :cond_52
    move-object/from16 v21, p11

    :goto_36
    if-eqz v22, :cond_53

    sget-object v22, Landroidx/compose/foundation/text/KeyboardActions;->g:Landroidx/compose/foundation/text/KeyboardActions$Companion;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v22, Landroidx/compose/foundation/text/KeyboardActions;->h:Landroidx/compose/foundation/text/KeyboardActions;

    goto :goto_37

    :cond_53
    move-object/from16 v22, p12

    :goto_37
    move-object/from16 p2, v0

    and-int/lit16 v0, v6, 0x4000

    if-eqz v0, :cond_55

    if-eqz v14, :cond_54

    move/from16 v0, v24

    goto :goto_38

    :cond_54
    const v0, 0x7fffffff

    :goto_38
    and-int v28, v39, v26

    move/from16 v39, v28

    goto :goto_39

    :cond_55
    move/from16 v0, p14

    :goto_39
    if-eqz v43, :cond_56

    move/from16 v28, v24

    goto :goto_3a

    :cond_56
    move/from16 v28, p15

    :goto_3a
    const/16 v29, 0x0

    if-eqz v44, :cond_57

    move-object/from16 v33, v29

    goto :goto_3b

    :cond_57
    move-object/from16 v33, p16

    :goto_3b
    if-eqz v45, :cond_58

    move-object/from16 v36, v29

    goto :goto_3c

    :cond_58
    move-object/from16 v36, p17

    :goto_3c
    if-eqz v30, :cond_59

    goto :goto_3d

    :cond_59
    move-object/from16 v29, p18

    :goto_3d
    if-eqz v34, :cond_5a

    sget-object v30, Landroidx/compose/ui/text/input/VisualTransformation$Companion;->a:Lb21;

    goto :goto_3e

    :cond_5a
    move-object/from16 v30, p19

    :goto_3e
    if-eqz v40, :cond_5b

    move/from16 v34, v24

    goto :goto_3f

    :cond_5b
    move/from16 v34, p21

    :goto_3f
    move/from16 p7, v0

    if-eqz v32, :cond_5d

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5c

    new-instance v0, Ln60;

    const/16 v3, 0xb

    invoke-direct {v0, v3}, Ln60;-><init>(I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_5c
    check-cast v0, Lkotlin/jvm/functions/Function1;

    goto :goto_40

    :cond_5d
    move-object/from16 v0, p22

    :goto_40
    if-eqz v16, :cond_5e

    sget-object v3, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;->Never:Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;

    goto :goto_41

    :cond_5e
    move-object/from16 v3, p23

    :goto_41
    and-int v16, v6, v17

    move-object/from16 p10, v0

    if-eqz v16, :cond_5f

    const-string v0, "textField_accessory_button"

    invoke-static {v7, v0}, Ln00;->g(Ljava/lang/String;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    and-int v18, v18, v26

    goto :goto_42

    :cond_5f
    move-object/from16 v0, p24

    :goto_42
    if-eqz v19, :cond_60

    const-string v7, "textField_deleteText_button"

    goto :goto_43

    :cond_60
    move-object/from16 v7, p25

    :goto_43
    move/from16 v17, p7

    move-object/from16 v27, v0

    move-object/from16 v26, v3

    move-object v13, v11

    move/from16 v0, v18

    move-object/from16 v14, v21

    move-object/from16 v15, v22

    move/from16 v16, v25

    move/from16 v18, v28

    move-object/from16 v21, v29

    move-object/from16 v22, v30

    move-object/from16 v19, v33

    if-eqz v20, :cond_61

    move-object/from16 v20, v36

    const/4 v3, 0x4

    move-object/from16 v11, p2

    move-object/from16 v25, p10

    move-object/from16 v28, v7

    move/from16 v7, v24

    move/from16 v29, v16

    :goto_44
    move/from16 v24, v34

    goto :goto_45

    :cond_61
    move-object/from16 v20, v36

    const/4 v3, 0x4

    move-object/from16 v11, p2

    move-object/from16 v25, p10

    move/from16 v29, p26

    move-object/from16 v28, v7

    move/from16 v7, v24

    goto :goto_44

    :goto_45
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->a0()V

    sget-object v30, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_62

    new-instance v3, Landroidx/compose/ui/text/input/TextFieldValue;

    const/16 v30, 0x6

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const/16 v36, 0x0

    move-object/from16 p22, p0

    move-object/from16 p21, v3

    move/from16 p26, v30

    move-object/from16 p27, v32

    move-wide/from16 p23, v33

    move-object/from16 p25, v36

    invoke-direct/range {p21 .. p27}, Landroidx/compose/ui/text/input/TextFieldValue;-><init>(Ljava/lang/String;JLandroidx/compose/ui/text/TextRange;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_62
    move/from16 p7, v0

    move-object/from16 v0, p0

    check-cast v3, Landroidx/compose/runtime/MutableState;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v7, v30

    check-cast v7, Landroidx/compose/ui/text/input/TextFieldValue;

    invoke-static {v7, v0}, Landroidx/compose/ui/text/input/TextFieldValue;->b(Landroidx/compose/ui/text/input/TextFieldValue;Ljava/lang/String;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v30

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    if-nez v30, :cond_63

    if-ne v0, v1, :cond_64

    :cond_63
    new-instance v0, Luc;

    const/4 v4, 0x2

    invoke-direct {v0, v7, v3, v4}, Luc;-><init>(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v8, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_64
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v8}, Landroidx/compose/runtime/EffectsKt;->i(Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;)V

    and-int/lit8 v0, v9, 0xe

    const/4 v4, 0x4

    if-ne v0, v4, :cond_65

    const/4 v0, 0x1

    goto :goto_46

    :cond_65
    move/from16 v0, v16

    :goto_46
    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_66

    if-ne v4, v1, :cond_67

    :cond_66
    invoke-static/range {p0 .. p0}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_67
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v8, v4}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    move/from16 p2, v0

    and-int/lit8 v0, v9, 0x70

    const/16 v5, 0x20

    if-ne v0, v5, :cond_68

    const/16 v16, 0x1

    :cond_68
    or-int v0, p2, v16

    invoke-virtual {v8}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_69

    if-ne v5, v1, :cond_6a

    :cond_69
    new-instance v5, Lvc;

    const/4 v0, 0x2

    invoke-direct {v5, v2, v3, v4, v0}, Lvc;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_6a
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const v0, 0x7fffff80

    and-int v31, v9, v0

    const v0, 0x7ffffffe

    and-int v32, v39, v0

    const v0, 0x3ffffe

    and-int v33, p7, v0

    move/from16 v16, p13

    move-object/from16 v23, p20

    move-object v3, v7

    move-object/from16 v30, v8

    move-object v9, v10

    move-object v10, v11

    move-object v6, v12

    move-object/from16 v5, v35

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v11, p8

    move-object/from16 v12, p9

    invoke-static/range {v3 .. v33}, Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/LVTextFieldInternalKt;->a(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLandroidx/compose/runtime/Composer;III)V

    move-object v3, v5

    move-object v8, v10

    move-object v11, v13

    move-object v12, v14

    move-object v13, v15

    move/from16 v15, v17

    move/from16 v16, v18

    move-object/from16 v17, v19

    move-object/from16 v18, v20

    move-object/from16 v19, v21

    move-object/from16 v20, v22

    move/from16 v22, v24

    move-object/from16 v23, v25

    move-object/from16 v24, v26

    move-object/from16 v25, v27

    move-object/from16 v26, v28

    move/from16 v27, v29

    goto :goto_47

    :cond_6b
    move-object/from16 v30, v8

    move-object/from16 v3, v35

    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move-object/from16 v26, p25

    move/from16 v27, p26

    move-object v8, v11

    move-object/from16 v11, p10

    :goto_47
    invoke-virtual/range {v30 .. v30}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6c

    move-object v1, v0

    new-instance v0, Ll80;

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v14, p13

    move-object/from16 v21, p20

    move/from16 v28, p28

    move/from16 v29, p29

    move/from16 v30, p30

    move/from16 v31, p31

    move-object/from16 v46, v1

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v31}, Ll80;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationTextField;ZZLjava/lang/String;Landroidx/compose/ui/Modifier;ZLjava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/KeyboardOptions;Landroidx/compose/foundation/text/KeyboardActions;ZIILjava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/atoms/textfield/ClearButtonMode;Landroidx/compose/ui/Modifier;Ljava/lang/String;ZIIII)V

    move-object/from16 v1, v46

    iput-object v0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6c
    return-void
.end method
