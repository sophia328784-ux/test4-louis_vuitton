.class public final synthetic Lae0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/material3/SnackbarHostState;I)V
    .locals 0

    iput p2, p0, Lae0;->b:I

    iput-object p1, p0, Lae0;->c:Landroidx/compose/material3/SnackbarHostState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lae0;->b:I

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object p0, p0, Lae0;->c:Landroidx/compose/material3/SnackbarHostState;

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v5

    :goto_2
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    :goto_4
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "PortalSliderScreen$lambda$2"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2, p0, p1, v5, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_6

    move v0, v4

    goto :goto_6

    :cond_6
    move v0, v5

    :goto_6
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_7

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_8

    move v0, v4

    goto :goto_8

    :cond_8
    move v0, v5

    :goto_8
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_9

    :cond_9
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_a

    move v0, v4

    goto :goto_a

    :cond_a
    move v0, v5

    :goto_a
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_b

    :cond_b
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_5
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_c

    move v0, v4

    goto :goto_c

    :cond_c
    move v0, v5

    :goto_c
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_d

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_d

    :cond_d
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_e

    move v0, v4

    goto :goto_e

    :cond_e
    move v0, v5

    :goto_e
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_f

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_f

    :cond_f
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_10

    move v5, v4

    :cond_10
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_11

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v1, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_10

    :cond_11
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_12

    move v0, v4

    goto :goto_11

    :cond_12
    move v0, v5

    :goto_11
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_13

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance v6, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string p2, "PSPScreen$lambda$7"

    invoke-direct {v6, p2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object p2

    iget v10, p2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->j:F

    const/4 v11, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Landroidx/compose/foundation/layout/PaddingKt;->m(Landroidx/compose/ui/Modifier;FFFFI)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2, p0, p1, v1, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_12

    :cond_13
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_14

    move v0, v4

    goto :goto_13

    :cond_14
    move v0, v5

    :goto_13
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_15

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "PLPStoreModeScreen$lambda$2"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->b(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2, p0, p1, v1, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_14

    :cond_15
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_16

    move v0, v4

    goto :goto_15

    :cond_16
    move v0, v5

    :goto_15
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_17

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_16

    :cond_17
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_16
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_18

    move v0, v4

    goto :goto_17

    :cond_18
    move v0, v5

    :goto_17
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_19

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_18

    :cond_19
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_1a

    move v0, v4

    goto :goto_19

    :cond_1a
    move v0, v5

    :goto_19
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1b

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1a

    :cond_1b
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_1c

    move v0, v4

    goto :goto_1b

    :cond_1c
    move v0, v5

    :goto_1b
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1d

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1c

    :cond_1d
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_1e

    move v0, v4

    goto :goto_1d

    :cond_1e
    move v0, v5

    :goto_1d
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_1f

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1e

    :cond_1f
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_20

    move v0, v4

    goto :goto_1f

    :cond_20
    move v0, v5

    :goto_1f
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_21

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_20

    :cond_21
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_22

    move v0, v4

    goto :goto_21

    :cond_22
    move v0, v5

    :goto_21
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_23

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_22

    :cond_23
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_22
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_24

    move v0, v4

    goto :goto_23

    :cond_24
    move v0, v5

    :goto_23
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_25

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_24

    :cond_25
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_24
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_26

    move v0, v4

    goto :goto_25

    :cond_26
    move v0, v5

    :goto_25
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_27

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_26

    :cond_27
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_13
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_28

    move v0, v4

    goto :goto_27

    :cond_28
    move v0, v5

    :goto_27
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_29

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_28

    :cond_29
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_14
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_2a

    move v0, v4

    goto :goto_29

    :cond_2a
    move v0, v5

    :goto_29
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2b

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2a

    :cond_2b
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_2c

    move v0, v4

    goto :goto_2b

    :cond_2c
    move v0, v5

    :goto_2b
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2d

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2c

    :cond_2d
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2c
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_2e

    move v5, v4

    :cond_2e
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_2f

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v1, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2d

    :cond_2f
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2d
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_17
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_30

    move v5, v4

    :cond_30
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_31

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v1, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_2e

    :cond_31
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2e
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_32

    move v0, v4

    goto :goto_2f

    :cond_32
    move v0, v5

    :goto_2f
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_33

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_30

    :cond_33
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    sget v0, Lcom/vuitton/android/presentation/screen/cart/components/NativeCartLoadingScreenKt;->a:F

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_34

    move v0, v4

    goto :goto_31

    :cond_34
    move v0, v5

    :goto_31
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_35

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_32

    :cond_35
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_32
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_36

    move v5, v4

    :cond_36
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v5}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_37

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v1, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_33

    :cond_37
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_33
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_38

    move v0, v4

    goto :goto_34

    :cond_38
    move v0, v5

    :goto_34
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_39

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2, p0, p1, v5, v4}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_35

    :cond_39
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    and-int/lit8 v0, p2, 0x3

    if-eq v0, v3, :cond_3a

    move v0, v4

    goto :goto_36

    :cond_3a
    move v0, v5

    :goto_36
    and-int/2addr p2, v4

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3b

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v0, "MyLvComposable$lambda$9"

    invoke-direct {p2, v0}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/compose/foundation/layout/WindowInsets_androidKt;->a(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/layout/AndroidWindowInsets;

    move-result-object v0

    invoke-static {p2, v0}, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/WindowInsets;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    invoke-static {p2, p0, p1, v1, v5}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVSnackbarKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/material3/SnackbarHostState;Landroidx/compose/runtime/Composer;II)V

    goto :goto_37

    :cond_3b
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_37
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
