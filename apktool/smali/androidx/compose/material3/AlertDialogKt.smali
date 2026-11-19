.class public abstract Landroidx/compose/material3/AlertDialogKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    const/high16 v0, 0x438c0000    # 280.0f

    sput v0, Landroidx/compose/material3/AlertDialogKt;->a:F

    const/high16 v0, 0x440c0000    # 560.0f

    sput v0, Landroidx/compose/material3/AlertDialogKt;->b:F

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Landroidx/compose/foundation/layout/PaddingKt;->a(F)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    const/4 v1, 0x0

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x7

    invoke-static {v1, v1, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v1, v1, v1, v2, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    invoke-static {v1, v1, v1, v0, v3}, Landroidx/compose/foundation/layout/PaddingKt;->e(FFFFI)Landroidx/compose/foundation/layout/PaddingValuesImpl;

    new-instance v0, Lg5;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg5;-><init>(I)V

    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/AlertDialogKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    return-void
.end method

.method public static final a(FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, -0x36b20a24    # -843613.75f

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p3

    and-int/lit16 v0, p4, 0x93

    const/16 v1, 0x92

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v1, p4, 0x1

    invoke-virtual {p3, v1, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, v1, :cond_1

    new-instance v0, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;

    invoke-direct {v0, p0, p1}, Landroidx/compose/material3/AlertDialogKt$AlertDialogFlowRow$1$1;-><init>(FF)V

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    const-string v3, "AlertDialogFlowRow-ixp7dh8"

    invoke-direct {v1, v3}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->G()I

    move-result v3

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {p3, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v6, p3, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_5

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, p3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_2

    invoke-virtual {p3, v5}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_1
    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v0, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v4, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    iget-boolean v4, p3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v4, :cond_3

    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    invoke-static {v3, p3, v3, v0}, La;->t(ILandroidx/compose/runtime/GapComposer;ILkotlin/jvm/functions/Function2;)V

    :cond_4
    sget-object v0, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {p3, v1, v0}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_2

    :cond_5
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {p3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p3

    if-eqz p3, :cond_7

    new-instance v0, Lf5;

    invoke-direct {v0, p0, p1, p2, p4}, Lf5;-><init>(FFLandroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p3, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    if-eqz p1, :cond_0

    const-string v0, "BasicAlertDialog"

    invoke-static {p1, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p1

    :cond_0
    move-object v2, p1

    const p1, 0x17c55da

    invoke-interface {p4, p1}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    and-int/lit8 p4, p5, 0x6

    if-nez p4, :cond_2

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    const/4 p4, 0x4

    goto :goto_0

    :cond_1
    const/4 p4, 0x2

    :goto_0
    or-int/2addr p4, p5

    goto :goto_1

    :cond_2
    move p4, p5

    :goto_1
    and-int/lit8 v0, p5, 0x30

    if-nez v0, :cond_4

    invoke-virtual {p1, v2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x20

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    :goto_2
    or-int/2addr p4, v0

    :cond_4
    and-int/lit16 v0, p5, 0x180

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x100

    goto :goto_3

    :cond_5
    const/16 v0, 0x80

    :goto_3
    or-int/2addr p4, v0

    :cond_6
    and-int/lit16 v0, p5, 0xc00

    if-nez v0, :cond_8

    invoke-virtual {p1, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x800

    goto :goto_4

    :cond_7
    const/16 v0, 0x400

    :goto_4
    or-int/2addr p4, v0

    :cond_8
    and-int/lit16 v0, p4, 0x493

    const/16 v1, 0x492

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_9

    move v0, v4

    goto :goto_5

    :cond_9
    move v0, v3

    :goto_5
    and-int/2addr p4, v4

    invoke-virtual {p1, p4, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p4, Landroidx/compose/material3/AlertDialogKt;->c:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, p4}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/material3/BasicAlertDialogOverride;

    new-instance v0, Landroidx/compose/material3/BasicAlertDialogOverrideScope;

    invoke-direct {v0, p0, v2, p2, p3}, Landroidx/compose/material3/BasicAlertDialogOverrideScope;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {p4, v0, p1, v3}, Landroidx/compose/material3/BasicAlertDialogOverride;->a(Landroidx/compose/material3/BasicAlertDialogOverrideScope;Landroidx/compose/runtime/Composer;I)V

    goto :goto_6

    :cond_a
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_b

    new-instance v0, Li1;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Li1;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/window/DialogProperties;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method
