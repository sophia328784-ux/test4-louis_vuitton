.class public abstract Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u00a8\u0006\u0002\u00b2\u0006\u0010\u0010\u0001\u001a\u0004\u0018\u00010\u00008\n@\nX\u008a\u008e\u0002"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;",
        "currentBottomSheet",
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0x63d81cd7

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :cond_2
    new-instance v1, Lxe0;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lxe0;-><init>(Ljava/lang/Object;I)V

    const v2, -0x1172e3c1

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lll0;

    const/16 v1, 0x9

    invoke-direct {v0, p0, p2, v1}, Lll0;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x281b9515

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    and-int/lit8 v0, p3, 0x6

    if-nez v0, :cond_1

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    and-int/lit8 v1, p3, 0x30

    if-nez v1, :cond_3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x20

    goto :goto_2

    :cond_2
    const/16 v1, 0x10

    :goto_2
    or-int/2addr v0, v1

    :cond_3
    and-int/lit8 v1, v0, 0x13

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    move v1, v3

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    and-int/2addr v0, v3

    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;->b:Ljava/lang/String;

    new-instance v1, Lni0;

    const/16 v2, 0x11

    invoke-direct {v1, p0, p1, v2}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, -0x65e0ffad

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, p2, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_6

    new-instance v0, Lg2;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, p1, p3, v1}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p4

    const-string v2, "BottomButtonView"

    if-eqz v0, :cond_0

    invoke-static {v0, v2}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    move-object v3, v0

    const v0, -0x34dbd708    # -1.0758392E7f

    move-object/from16 v4, p3

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 v0, v1, 0x6

    if-nez v0, :cond_2

    invoke-virtual {v6, v3}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    and-int/lit8 v4, v1, 0x30

    move-object/from16 v11, p1

    if-nez v4, :cond_4

    invoke-virtual {v6, v11}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x20

    goto :goto_2

    :cond_3
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v0, v4

    :cond_4
    and-int/lit16 v4, v1, 0x180

    move-object/from16 v12, p2

    if-nez v4, :cond_6

    invoke-virtual {v6, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x100

    goto :goto_3

    :cond_5
    const/16 v4, 0x80

    :goto_3
    or-int/2addr v0, v4

    :cond_6
    and-int/lit16 v4, v0, 0x93

    const/16 v5, 0x92

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v4, v5, :cond_7

    move v4, v7

    goto :goto_4

    :cond_7
    move v4, v8

    :goto_4
    and-int/lit8 v5, v0, 0x1

    invoke-virtual {v6, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v4, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v5, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    invoke-static {v4, v5, v6, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v4

    iget-wide v8, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v6, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v13, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v13, :cond_9

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v13, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v13, :cond_8

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v8, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v4}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v9, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v4

    iget-object v8, v4, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v4}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v9

    iget v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v10

    iget v10, v10, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v2, v5, v4, v9, v10}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    shl-int/lit8 v4, v0, 0x3

    and-int/lit16 v4, v4, 0x380

    shl-int/lit8 v0, v0, 0x15

    const/high16 v5, 0x70000000

    and-int/2addr v0, v5

    or-int/2addr v4, v0

    const/16 v5, 0x1f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move v0, v7

    move-object v7, v2

    invoke-static/range {v4 .. v15}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_6

    :cond_9
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_a
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v6

    if-eqz v6, :cond_b

    new-instance v0, Lds0;

    const/4 v2, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lds0;-><init>(IILandroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    iput-object v0, v6, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final d(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)V
    .locals 4

    const v0, -0x36d02aa6

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p0

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v0, 0x7f14088b

    invoke-static {p1, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lla;

    const/4 v2, 0x7

    invoke-direct {v1, p2, v2}, Lla;-><init>(Ljava/lang/String;I)V

    const v2, 0x6a222c2

    invoke-static {v2, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lma;

    const/4 v1, 0x6

    invoke-direct {v0, p2, p0, v1}, Lma;-><init>(Ljava/lang/String;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final e(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x447b1256

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int v2, p3, v2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0x10

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    or-int v26, v2, v3

    and-int/lit8 v2, v26, 0x13

    const/16 v3, 0x12

    const/4 v5, 0x1

    const/4 v7, 0x0

    if-eq v2, v3, :cond_2

    move v2, v5

    goto :goto_2

    :cond_2
    move v2, v7

    :goto_2
    and-int/lit8 v3, v26, 0x1

    invoke-virtual {v6, v3, v2}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v2, "ExpertNotes"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v8

    sget-object v9, Landroidx/compose/ui/unit/Dp;->c:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->q:J

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v8, v3, v9, v10, v11}, Landroidx/compose/foundation/BorderKt;->a(Landroidx/compose/ui/Modifier;FJLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3, v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v8, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v9, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v8, v9, v6, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v7

    iget-wide v8, v6, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v6, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v6, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_4

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v6, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_3

    invoke-virtual {v6, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v9, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v7, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v6, v7}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v3, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const v3, 0x7f1408c4

    invoke-static {v6, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v7

    iget-object v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    const/16 v24, 0x0

    const v25, 0x1fffa

    move v10, v4

    const/4 v4, 0x0

    move-object/from16 v19, v6

    move-object/from16 v21, v7

    move-wide/from16 v30, v8

    move v9, v5

    move-wide/from16 v5, v30

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move v12, v10

    move v13, v11

    const-wide/16 v10, 0x0

    move v14, v12

    const/4 v12, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    move/from16 v17, v15

    const-wide/16 v14, 0x0

    move/from16 v18, v16

    const/16 v16, 0x0

    move/from16 v20, v17

    const/16 v17, 0x0

    move/from16 v22, v18

    const/16 v18, 0x0

    move/from16 v23, v22

    move-object/from16 v22, v19

    const/16 v19, 0x0

    move/from16 v27, v20

    const/16 v20, 0x0

    move/from16 v28, v23

    const/16 v23, 0x0

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v6, v22

    new-instance v3, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v3, v2}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    invoke-static {v6, v3}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->l:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    and-int/lit8 v20, v26, 0xe

    const/16 v21, 0x0

    const v22, 0x1fffa

    const/4 v1, 0x0

    move-object v7, v2

    move-object/from16 v18, v3

    move-wide v2, v4

    const-wide/16 v4, 0x0

    move-object/from16 v19, v6

    const/4 v6, 0x0

    move-object v9, v7

    const-wide/16 v7, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v11, v10

    const/4 v10, 0x0

    move-object v13, v11

    const-wide/16 v11, 0x0

    move-object v14, v13

    const/4 v13, 0x0

    move-object v15, v14

    const/4 v14, 0x0

    move-object/from16 v16, v15

    const/4 v15, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v23, v17

    const/16 v17, 0x0

    move-object/from16 v29, v23

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object v9, v0

    move-object/from16 v6, v19

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v13, v29

    invoke-direct {v0, v13}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->d:F

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    invoke-static {v6, v0}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    const v0, 0x7f14109c

    invoke-static {v6, v0}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    shl-int/lit8 v0, v26, 0xc

    const/high16 v2, 0x70000

    and-int v7, v0, v2

    const/16 v8, 0x1d

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVLinkKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    move-object v1, v5

    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_5
    move-object v9, v0

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    new-instance v2, Lqd;

    move/from16 v3, p3

    const/16 v12, 0x10

    invoke-direct {v2, v9, v1, v3, v12}, Lqd;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function0;II)V

    iput-object v2, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final f(Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, -0x12175529    # -9.000882E27f

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const v1, 0x7f1408ff

    invoke-static {p1, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lni0;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v0, v3}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v0, -0x74cab5c1

    invoke-static {v0, v2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-static {v3, v1, v0, p1, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_2
    invoke-virtual {p1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v0, Lll0;

    const/16 v1, 0xa

    invoke-direct {v0, p0, p2, v1}, Lll0;-><init>(Ljava/lang/Object;II)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_3
    return-void
.end method

.method public static final g(Ljava/lang/String;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, -0x2f44bea5

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    const/16 v4, 0x10

    :goto_1
    or-int v23, v3, v4

    and-int/lit8 v3, v23, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    move v3, v5

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    and-int/lit8 v4, v23, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "HorizontalSection"

    invoke-static {v4, v3}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->g:Landroidx/compose/foundation/layout/Arrangement$SpaceBetween$1;

    sget-object v7, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v8, 0x6

    invoke-static {v6, v7, v2, v8}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget-wide v7, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v7, v8}, Ljava/lang/Long;->hashCode(J)I

    move-result v7

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v8

    invoke-static {v2, v3}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v10, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v10, :cond_4

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_3

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    sget-object v9, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v9}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v8, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v6, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v6}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    and-int/lit8 v20, v23, 0xe

    const/16 v21, 0x0

    const v22, 0x1fffa

    const/4 v1, 0x0

    move-object v8, v4

    move v9, v5

    const-wide/16 v4, 0x0

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-wide v2, v6

    const/4 v6, 0x0

    move-object v10, v8

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move v14, v11

    move-object v13, v12

    const-wide/16 v11, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v24, v16

    const/16 v16, 0x0

    move-object/from16 v25, v17

    const/16 v17, 0x0

    move-object/from16 v26, v25

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v0, v19

    new-instance v1, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-object/from16 v12, v26

    invoke-direct {v1, v12}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->s(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v0}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    shr-int/lit8 v4, v23, 0x3

    and-int/lit8 v20, v4, 0xe

    move-object/from16 v18, v1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v11, 0x0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v19

    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_4

    :cond_4
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_5
    move-object v0, v1

    move-object v1, v2

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_4
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_6

    new-instance v2, Lva;

    const/4 v3, 0x5

    move-object/from16 v4, p0

    move/from16 v5, p3

    invoke-direct {v2, v4, v0, v5, v3}, Lva;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_6
    return-void
.end method

.method public static final h(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    const-string v1, "RepairsDetailBffBottomContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v10, -0x2decdcb3

    move-object/from16 v11, p9

    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v13

    invoke-virtual {v13, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v10, 0x4

    goto :goto_0

    :cond_1
    const/4 v10, 0x2

    :goto_0
    or-int v10, p10, v10

    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x20

    goto :goto_1

    :cond_2
    const/16 v11, 0x10

    :goto_1
    or-int/2addr v10, v11

    invoke-virtual {v13, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/16 v11, 0x100

    goto :goto_2

    :cond_3
    const/16 v11, 0x80

    :goto_2
    or-int/2addr v10, v11

    invoke-virtual {v13, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    const/16 v11, 0x800

    goto :goto_3

    :cond_4
    const/16 v11, 0x400

    :goto_3
    or-int/2addr v10, v11

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x4000

    goto :goto_4

    :cond_5
    const/16 v11, 0x2000

    :goto_4
    or-int/2addr v10, v11

    invoke-virtual {v13, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/high16 v11, 0x20000

    goto :goto_5

    :cond_6
    const/high16 v11, 0x10000

    :goto_5
    or-int/2addr v10, v11

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/high16 v11, 0x100000

    goto :goto_6

    :cond_7
    const/high16 v11, 0x80000

    :goto_6
    or-int/2addr v10, v11

    invoke-virtual {v13, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    const/high16 v11, 0x800000

    goto :goto_7

    :cond_8
    const/high16 v11, 0x400000

    :goto_7
    or-int/2addr v10, v11

    invoke-virtual {v13, v9}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    move/from16 p9, v11

    if-eqz p9, :cond_9

    const/high16 v16, 0x4000000

    goto :goto_8

    :cond_9
    const/high16 v16, 0x2000000

    :goto_8
    or-int v10, v10, v16

    const v16, 0x2492493

    and-int v14, v10, v16

    const v11, 0x2492492

    const/4 v12, 0x0

    if-eq v14, v11, :cond_a

    const/4 v11, 0x1

    goto :goto_9

    :cond_a
    move v11, v12

    :goto_9
    and-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14, v11}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v11

    if-eqz v11, :cond_21

    sget-object v11, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-nez v11, :cond_b

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_22

    move-object v1, v0

    new-instance v0, Lbs0;

    const/4 v11, 0x0

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lbs0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    :goto_a
    iput-object v0, v12, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    return-void

    :cond_b
    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    if-nez v14, :cond_c

    const/4 v14, -0x1

    goto :goto_b

    :cond_c
    sget-object v19, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt$WhenMappings;->a:[I

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    aget v14, v19, v14

    :goto_b
    const/16 v19, 0x1

    sget-object v15, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    packed-switch v14, :pswitch_data_0

    const v1, -0x5e9f088d

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_c
    move-object v5, v7

    goto/16 :goto_19

    :pswitch_0
    const v1, -0x5ea2a2ae

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f1408e7

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v11, v10, 0xe

    shr-int/lit8 v10, v10, 0xf

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v10, v11

    invoke-static {v0, v1, v8, v13, v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :pswitch_1
    const v1, -0x5eaaa776

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    iget-object v1, v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->h:Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-static {v1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    move/from16 v11, v19

    if-ne v1, v11, :cond_10

    const v1, -0x5ea9789b

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f14089b

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const/high16 v11, 0x70000

    and-int/2addr v11, v10

    const/high16 v14, 0x20000

    if-ne v11, v14, :cond_d

    const/4 v11, 0x1

    goto :goto_d

    :cond_d
    move v11, v12

    :goto_d
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v14

    or-int/2addr v11, v14

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_e

    if-ne v14, v15, :cond_f

    :cond_e
    new-instance v14, Lcs0;

    const/4 v11, 0x1

    invoke-direct {v14, v6, v2, v11}, Lcs0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v14, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v10, v10, 0xe

    invoke-static {v0, v1, v14, v13, v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_e

    :cond_10
    const v1, -0x5ea39b0b

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_e
    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_c

    :pswitch_2
    const v1, -0x5eaf12b8

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f140893

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v11, v10, 0xe

    shr-int/lit8 v10, v10, 0xc

    and-int/lit16 v10, v10, 0x380

    or-int/2addr v10, v11

    invoke-static {v0, v1, v7, v13, v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_c

    :pswitch_3
    move/from16 v11, v19

    const v1, -0x5eb3c0b3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f14088c

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    const v14, 0xe000

    and-int/2addr v14, v10

    const/16 v11, 0x4000

    if-ne v14, v11, :cond_11

    const/16 v19, 0x1

    goto :goto_f

    :cond_11
    move/from16 v19, v12

    :goto_f
    invoke-virtual {v13, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int v11, v19, v11

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v11, :cond_12

    if-ne v14, v15, :cond_13

    :cond_12
    new-instance v14, Lcs0;

    invoke-direct {v14, v5, v2, v12}, Lcs0;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;I)V

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v14, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v10, v10, 0xe

    invoke-static {v0, v1, v14, v13, v10}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto/16 :goto_c

    :pswitch_4
    const v14, -0x5ed6df6d

    invoke-virtual {v13, v14}, Landroidx/compose/runtime/GapComposer;->L(I)V

    sget-object v14, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v17, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v14, v5, v13, v12}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v6, v13, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v6

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-static {v13, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    move/from16 v18, v6

    iget-object v6, v13, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v6, :cond_20

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v13, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_14

    invoke-virtual {v13, v12}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_10

    :cond_14
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_10
    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v7, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v13, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v13, v14, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->k:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-boolean v5, v5, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->e:Z

    if-eqz v5, :cond_15

    iget-object v5, v11, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->j:Ljava/lang/String;

    if-eqz v5, :cond_15

    move/from16 v5, v19

    goto :goto_11

    :cond_15
    const/4 v5, 0x0

    :goto_11
    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1a

    const v11, -0x32545360

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v11

    iget-object v11, v11, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    const v12, 0x7f140895

    invoke-static {v13, v12}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    invoke-static {v1, v6}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v12

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    const/high16 v23, 0xe000000

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v7

    iget v7, v7, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->c:F

    invoke-static {v12, v7, v14, v6, v2}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v2

    const-string v6, "careservicesDetail_rescheduleAppointment_button"

    invoke-static {v2, v6}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    and-int v2, v10, v23

    const/high16 v6, 0x4000000

    if-ne v2, v6, :cond_16

    move/from16 v2, v19

    goto :goto_12

    :cond_16
    const/4 v2, 0x0

    :goto_12
    and-int/lit16 v7, v10, 0x1c00

    const/16 v12, 0x800

    if-ne v7, v12, :cond_17

    move/from16 v7, v19

    goto :goto_13

    :cond_17
    const/4 v7, 0x0

    :goto_13
    or-int/2addr v2, v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_18

    if-ne v7, v15, :cond_19

    :cond_18
    new-instance v7, Lwz;

    const/16 v2, 0x9

    invoke-direct {v7, v9, v4, v2}, Lwz;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_19
    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object v2, v15

    move-object v15, v11

    const/4 v11, 0x0

    const/16 v12, 0x1f8

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v17, 0x0

    move/from16 v21, v20

    const/16 v20, 0x0

    move/from16 v22, v21

    const/16 v21, 0x0

    move/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v19, v7

    move/from16 v7, v24

    invoke-static/range {v11 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_1a
    move-object v2, v15

    const/high16 v6, 0x4000000

    const/4 v7, 0x0

    const/high16 v23, 0xe000000

    const v11, -0x32451122

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    if-eqz v5, :cond_1b

    const v5, 0x71fdd30d

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->e:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    :goto_15
    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object v15, v5

    goto :goto_16

    :cond_1b
    const v5, 0x71fdd86b

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->b(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonConfigs;->a:Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;

    goto :goto_15

    :goto_16
    const v5, 0x7f14088f

    invoke-static {v13, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v18

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->a:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v11

    iget v11, v11, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v12

    iget v12, v12, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v14

    iget v14, v14, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v11, v5, v12, v14}, Landroidx/compose/foundation/layout/PaddingKt;->l(Landroidx/compose/ui/Modifier;FFFF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const-string v5, "careservicesDetail_cancelCareService_button"

    invoke-static {v1, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v14

    and-int v1, v10, v23

    if-ne v1, v6, :cond_1c

    const/4 v1, 0x1

    goto :goto_17

    :cond_1c
    move v1, v7

    :goto_17
    and-int/lit16 v5, v10, 0x380

    const/16 v6, 0x100

    if-ne v5, v6, :cond_1d

    const/4 v5, 0x1

    goto :goto_18

    :cond_1d
    move v5, v7

    :goto_18
    or-int/2addr v1, v5

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_1e

    if-ne v5, v2, :cond_1f

    :cond_1e
    new-instance v5, Lwz;

    const/16 v1, 0xa

    invoke-direct {v5, v9, v3, v1}, Lwz;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V

    invoke-virtual {v13, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1f
    move-object/from16 v19, v5

    check-cast v19, Lkotlin/jvm/functions/Function0;

    const/4 v11, 0x0

    const/16 v12, 0x1f8

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v11 .. v22}, Lcom/vuitton/android/designkit/ui/theme/atoms/LVButtonKt;->b(IILandroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/atoms/configurations/ConfigurationButton;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZZ)V

    const/4 v11, 0x1

    invoke-virtual {v13, v11}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v5, p6

    goto :goto_19

    :cond_20
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :pswitch_5
    move v7, v12

    const v1, -0x5ede24a3

    invoke-virtual {v13, v1}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const v1, 0x7f140898

    invoke-static {v13, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    and-int/lit8 v2, v10, 0xe

    shr-int/lit8 v5, v10, 0xc

    and-int/lit16 v5, v5, 0x380

    or-int/2addr v2, v5

    move-object/from16 v5, p6

    invoke-static {v0, v1, v5, v13, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->c(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v13, v7}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_19

    :cond_21
    move-object v5, v7

    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_19
    invoke-virtual {v13}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v12

    if-eqz v12, :cond_22

    move-object v1, v0

    new-instance v0, Lbs0;

    const/4 v11, 0x1

    move-object/from16 v2, p1

    move-object/from16 v6, p5

    move/from16 v10, p10

    move-object v7, v5

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v11}, Lbs0;-><init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;II)V

    goto/16 :goto_a

    :cond_22
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    iget-object v6, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->c:Ljava/lang/String;

    const-string v1, "RepairsDetailBffMainContent"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    const v5, -0x7a904a2a

    move-object/from16 v7, p4

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v14

    iget-object v5, v14, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    invoke-virtual {v14, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    :goto_0
    or-int v7, p5, v7

    invoke-virtual {v14, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/16 v9, 0x20

    goto :goto_1

    :cond_2
    const/16 v9, 0x10

    :goto_1
    or-int/2addr v7, v9

    invoke-virtual {v14, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/16 v9, 0x100

    goto :goto_2

    :cond_3
    const/16 v9, 0x80

    :goto_2
    or-int/2addr v7, v9

    invoke-virtual {v14, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/16 v9, 0x800

    goto :goto_3

    :cond_4
    const/16 v9, 0x400

    :goto_3
    or-int/2addr v7, v9

    and-int/lit16 v9, v7, 0x493

    const/16 v12, 0x492

    const/4 v15, 0x0

    if-eq v9, v12, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    move v9, v15

    :goto_4
    and-int/lit8 v12, v7, 0x1

    invoke-virtual {v14, v12, v9}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v9

    if-eqz v9, :cond_15

    sget-object v9, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v14}, Landroidx/compose/foundation/ScrollKt;->b(Landroidx/compose/runtime/Composer;)Landroidx/compose/foundation/ScrollState;

    move-result-object v9

    const/16 v12, 0xe

    invoke-static {v0, v9, v15, v12}, Landroidx/compose/foundation/ScrollKt;->d(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/ScrollState;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v12, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v16, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p0, v7

    sget-object v7, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v12, v7, v14, v15}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v12

    iget-wide v10, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v11

    invoke-static {v14, v9}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v9

    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v17, v7

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v18, 0x0

    if-eqz v5, :cond_14

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v8, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v8, :cond_6

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_5

    :cond_6
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_5
    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v12, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v11, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    sget-object v11, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v10, v11}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v14, v10}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v14, v9, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->i:Ljava/util/List;

    move-object/from16 v19, v9

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;

    move-object/from16 v20, v9

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->h:Ljava/lang/String;

    move-object/from16 v21, v9

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->f:Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;

    move-object/from16 v22, v9

    iget-object v9, v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->e:Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;

    if-eqz v6, :cond_9

    const v15, -0x675f12e9

    invoke-static {v14, v15, v1}, Ln00;->i(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v15

    move-object/from16 v25, v0

    invoke-static {v14}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v0

    iget-object v0, v0, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v15, v0}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v26

    const v0, 0x7f080088

    const/4 v15, 0x0

    invoke-static {v0, v14, v15}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v27

    sget-object v0, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v29, Landroidx/compose/ui/layout/ContentScale$Companion;->h:Landroidx/compose/ui/layout/ContentScale$Companion$FillBounds$1;

    const/16 v31, 0x0

    const/16 v32, 0x36

    const/16 v28, 0x0

    const/16 v30, 0x0

    invoke-static/range {v26 .. v32}, Landroidx/compose/ui/draw/PainterModifierKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;I)Landroidx/compose/ui/Modifier;

    move-result-object v0

    move-object/from16 v26, v5

    sget-object v5, Landroidx/compose/ui/Alignment$Companion;->b:Landroidx/compose/ui/BiasAlignment;

    invoke-static {v5, v15}, Landroidx/compose/foundation/layout/BoxKt;->d(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v5

    iget-wide v3, v14, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v3

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v4

    invoke-static {v14, v0}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    if-eqz v26, :cond_8

    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v14, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_7

    invoke-virtual {v14, v7}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v14}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_6
    invoke-static {v14, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v14, v4, v12}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v3, v14, v11, v14, v10}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v14, v0, v13, v1, v3}, Ln00;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v0, v3, v15}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x100

    const/16 v16, 0x6

    move-object/from16 v3, v17

    const/16 v17, 0x7fc

    move-object v4, v7

    const/4 v7, 0x0

    move-object/from16 v23, v8

    const/4 v8, 0x0

    move-object/from16 v24, v9

    const/4 v9, 0x0

    move-object/from16 v27, v10

    const/4 v10, 0x0

    move-object/from16 v28, v11

    const/4 v11, 0x0

    move-object/from16 v29, v12

    const/4 v12, 0x0

    move-object/from16 v30, v13

    const/4 v13, 0x0

    move/from16 v31, v15

    move-object v15, v14

    const/4 v14, 0x0

    move-object v0, v4

    move-object v4, v3

    move-object v3, v0

    move-object/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v22

    move-object/from16 v40, v24

    move-object/from16 v35, v27

    move-object/from16 v34, v28

    move-object/from16 v33, v29

    move-object/from16 v36, v30

    move/from16 v2, v31

    const/4 v0, 0x1

    invoke-static/range {v5 .. v17}, Lcom/vuitton/android/presentation/imageloading/compose/ImageLoaderKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Landroidx/compose/ui/layout/ContentScale;Ljava/lang/String;Ljava/lang/Integer;IZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_7

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_9
    move-object/from16 v25, v0

    move-object/from16 v26, v5

    move-object v3, v7

    move-object/from16 v23, v8

    move-object/from16 v40, v9

    move-object/from16 v35, v10

    move-object/from16 v34, v11

    move-object/from16 v33, v12

    move-object/from16 v36, v13

    move-object v15, v14

    move-object/from16 v4, v17

    move-object/from16 v37, v19

    move-object/from16 v38, v20

    move-object/from16 v39, v22

    const/4 v0, 0x1

    const/4 v2, 0x0

    const v5, -0x6755b867

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v15, v5, v1, v6}, Lo60;->c(Landroidx/compose/runtime/GapComposer;ILjava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v5, v6, v2}, Landroidx/compose/foundation/layout/AspectRatioKt;->a(Landroidx/compose/ui/Modifier;FZ)Landroidx/compose/ui/Modifier;

    move-result-object v9

    const v5, 0x7f0800ce

    invoke-static {v5, v15, v2}, Landroidx/compose/ui/res/PainterResources_androidKt;->a(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    move-result-object v7

    sget-object v5, Landroidx/compose/ui/layout/ContentScale;->a:Landroidx/compose/ui/layout/ContentScale$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/layout/ContentScale$Companion;->b:Landroidx/compose/ui/layout/ContentScale$Companion$Crop$1;

    const/16 v15, 0x61b8

    const/16 v16, 0x68

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v7 .. v16}, Landroidx/compose/foundation/ImageKt;->a(Landroidx/compose/ui/graphics/painter/Painter;Ljava/lang/String;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;Landroidx/compose/ui/layout/ContentScale;FLandroidx/compose/ui/graphics/ColorFilter;Landroidx/compose/runtime/Composer;II)V

    move-object v15, v14

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_7
    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v6

    iget v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5, v6}, Landroidx/compose/foundation/layout/SizeKt;->f(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v15, v5}, Landroidx/compose/foundation/layout/SpacerKt;->a(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)V

    new-instance v5, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v5, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v1

    iget v1, v1, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-static {v5, v1, v6, v7}, Landroidx/compose/foundation/layout/PaddingKt;->k(Landroidx/compose/ui/Modifier;FFI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v15}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    invoke-static {v5, v4, v15, v2}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v4

    iget-wide v5, v15, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v5, v6}, Ljava/lang/Long;->hashCode(J)I

    move-result v5

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v6

    invoke-static {v15, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz v26, :cond_13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v7, v15, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v7, :cond_a

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_8
    move-object/from16 v3, v23

    goto :goto_9

    :cond_a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_8

    :goto_9
    invoke-static {v15, v4, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v33

    invoke-static {v15, v6, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-static {v5, v15, v3, v15, v4}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v3, v36

    invoke-static {v15, v1, v3}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v1, p1

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;

    invoke-static {v3, v15, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->f(Lcom/vuitton/android/presentation/screen/repairs/models/bff/HeaderUiModel;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v3, v40

    if-eqz v3, :cond_e

    const v4, 0x15db2eb5

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move/from16 v4, p0

    and-int/lit16 v5, v4, 0x380

    const/16 v6, 0x100

    if-ne v5, v6, :cond_b

    move v13, v0

    goto :goto_a

    :cond_b
    move v13, v2

    :goto_a
    invoke-virtual {v15, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v5, v13

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_d

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v6, v5, :cond_c

    goto :goto_b

    :cond_c
    move-object/from16 v5, p2

    goto :goto_c

    :cond_d
    :goto_b
    new-instance v6, Ljm0;

    move-object/from16 v5, p2

    const/16 v7, 0x10

    invoke-direct {v6, v5, v1, v7}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :goto_c
    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, v6, v15, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->l(Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_d
    move-object/from16 v3, v39

    goto :goto_e

    :cond_e
    move/from16 v4, p0

    move-object/from16 v5, p2

    const v3, 0x15df1900

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_d

    :goto_e
    if-eqz v3, :cond_f

    const v6, 0x15e01b2c

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v3, v15, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->a(Lcom/vuitton/android/presentation/screen/repairs/models/bff/AppointmentInformationUiModel;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_f

    :cond_f
    const v3, 0x15e1cea0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_f
    invoke-static/range {v21 .. v21}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const v3, 0x15e2dbd1

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v3, v21

    invoke-static {v2, v15, v3}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->d(ILandroidx/compose/runtime/Composer;Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_10
    move-object/from16 v3, v38

    goto :goto_11

    :cond_10
    const v3, 0x15e40460

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_10

    :goto_11
    if-eqz v3, :cond_11

    const v6, 0x15e4de96

    invoke-virtual {v15, v6}, Landroidx/compose/runtime/GapComposer;->L(I)V

    shr-int/lit8 v4, v4, 0x6

    and-int/lit8 v4, v4, 0x70

    move-object/from16 v6, p3

    invoke-static {v3, v6, v15, v4}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->b(Lcom/vuitton/android/presentation/screen/repairs/models/bff/AssessmentUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_12
    move-object/from16 v3, v37

    goto :goto_13

    :cond_11
    move-object/from16 v6, p3

    const v3, 0x15e75cc0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_12

    :goto_13
    if-eqz v3, :cond_12

    const v4, 0x15e83905

    invoke-virtual {v15, v4}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-static {v2, v15, v3}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailFollowUpBffKt;->d(ILandroidx/compose/runtime/Composer;Ljava/util/List;)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_14

    :cond_12
    const v3, 0x15e98ea0

    invoke-virtual {v15, v3}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    :goto_14
    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_15

    :cond_13
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_14
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v18

    :cond_15
    move-object/from16 v25, v0

    move-object v1, v2

    move-object v5, v3

    move-object v6, v4

    move-object v15, v14

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_15
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v7

    if-eqz v7, :cond_16

    new-instance v0, Luv;

    const/16 v6, 0x1d

    move-object/from16 v4, p3

    move-object v2, v1

    move-object v3, v5

    move-object/from16 v1, v25

    move/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Luv;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, v7, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_16
    return-void
.end method

.method public static final j(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/Composer;II)V
    .locals 31

    move-object/from16 v1, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p14

    move-object/from16 v7, p17

    move/from16 v9, p20

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p8 .. p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p9 .. p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p12 .. p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p13 .. p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v0, 0x4db2944c    # 3.74507904E8f

    move-object/from16 v2, p18

    invoke-interface {v2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int v0, p19, v0

    invoke-virtual {v10, v14}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    const/16 v5, 0x10

    if-eqz v4, :cond_1

    const/16 v4, 0x20

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    or-int/2addr v0, v4

    move-object/from16 v11, p3

    invoke-virtual {v10, v11}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x800

    goto :goto_2

    :cond_2
    const/16 v4, 0x400

    :goto_2
    or-int/2addr v0, v4

    move-object/from16 v4, p4

    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v13

    const/16 v16, 0x2000

    if-eqz v13, :cond_3

    const/16 v13, 0x4000

    goto :goto_3

    :cond_3
    move/from16 v13, v16

    :goto_3
    or-int/2addr v0, v13

    move-object/from16 v13, p5

    invoke-virtual {v10, v13}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v17

    const/high16 v18, 0x10000

    if-eqz v17, :cond_4

    const/high16 v17, 0x20000

    goto :goto_4

    :cond_4
    move/from16 v17, v18

    :goto_4
    or-int v0, v0, v17

    const/high16 v17, 0x180000

    and-int v20, p19, v17

    const/high16 v21, 0x80000

    const/high16 v22, 0x100000

    move-object/from16 v8, p6

    if-nez v20, :cond_6

    invoke-virtual {v10, v8}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v23, v22

    goto :goto_5

    :cond_5
    move/from16 v23, v21

    :goto_5
    or-int v0, v0, v23

    :cond_6
    const/high16 v23, 0xc00000

    and-int v24, p19, v23

    const/high16 v25, 0x400000

    const/high16 v26, 0x800000

    move-object/from16 v6, p7

    if-nez v24, :cond_8

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    move/from16 v27, v26

    goto :goto_6

    :cond_7
    move/from16 v27, v25

    :goto_6
    or-int v0, v0, v27

    :cond_8
    const/high16 v27, 0x6000000

    and-int v27, p19, v27

    move-object/from16 v12, p8

    if-nez v27, :cond_a

    invoke-virtual {v10, v12}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_9

    const/high16 v28, 0x4000000

    goto :goto_7

    :cond_9
    const/high16 v28, 0x2000000

    :goto_7
    or-int v0, v0, v28

    :cond_a
    move-object/from16 v6, p9

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_b

    const/high16 v28, 0x20000000

    goto :goto_8

    :cond_b
    const/high16 v28, 0x10000000

    :goto_8
    or-int v0, v0, v28

    and-int/lit8 v28, v9, 0x6

    move-object/from16 v6, p10

    if-nez v28, :cond_d

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_c

    const/16 v19, 0x4

    goto :goto_9

    :cond_c
    const/16 v19, 0x2

    :goto_9
    or-int v19, v9, v19

    goto :goto_a

    :cond_d
    move/from16 v19, v9

    :goto_a
    and-int/lit8 v28, v9, 0x30

    move-object/from16 v6, p11

    if-nez v28, :cond_f

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_e

    const/16 v5, 0x20

    :cond_e
    or-int v19, v19, v5

    :cond_f
    and-int/lit16 v5, v9, 0x180

    if-nez v5, :cond_11

    move-object/from16 v5, p12

    invoke-virtual {v10, v5}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    const/16 v24, 0x100

    goto :goto_b

    :cond_10
    const/16 v24, 0x80

    :goto_b
    or-int v19, v19, v24

    goto :goto_c

    :cond_11
    move-object/from16 v5, p12

    :goto_c
    and-int/lit16 v2, v9, 0xc00

    if-nez v2, :cond_13

    move-object/from16 v2, p13

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    const/16 v27, 0x800

    goto :goto_d

    :cond_12
    const/16 v27, 0x400

    :goto_d
    or-int v19, v19, v27

    goto :goto_e

    :cond_13
    move-object/from16 v2, p13

    :goto_e
    and-int/lit16 v3, v9, 0x6000

    if-nez v3, :cond_16

    const v3, 0x8000

    and-int/2addr v3, v9

    if-nez v3, :cond_14

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_f

    :cond_14
    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    :goto_f
    if-eqz v3, :cond_15

    const/16 v16, 0x4000

    :cond_15
    or-int v19, v19, v16

    :cond_16
    const/high16 v3, 0x30000

    and-int/2addr v3, v9

    if-nez v3, :cond_18

    move-object/from16 v3, p15

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_17

    const/high16 v18, 0x20000

    :cond_17
    or-int v19, v19, v18

    goto :goto_10

    :cond_18
    move-object/from16 v3, p15

    :goto_10
    and-int v16, v9, v17

    move-object/from16 v6, p16

    if-nez v16, :cond_1a

    invoke-virtual {v10, v6}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_19

    move/from16 v21, v22

    :cond_19
    or-int v19, v19, v21

    :cond_1a
    and-int v16, v9, v23

    if-nez v16, :cond_1d

    const/high16 v16, 0x1000000

    and-int v16, v9, v16

    if-nez v16, :cond_1b

    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_11

    :cond_1b
    invoke-virtual {v10, v7}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v16

    :goto_11
    if-eqz v16, :cond_1c

    move/from16 v25, v26

    :cond_1c
    or-int v19, v19, v25

    :cond_1d
    const v16, 0x12492493

    move/from16 v17, v0

    and-int v0, v17, v16

    const v2, 0x12492492

    const/4 v15, 0x0

    if-ne v0, v2, :cond_1f

    const v0, 0x492493

    and-int v0, v19, v0

    const v2, 0x492492

    if-eq v0, v2, :cond_1e

    goto :goto_12

    :cond_1e
    move v0, v15

    goto :goto_13

    :cond_1f
    :goto_12
    const/4 v0, 0x1

    :goto_13
    and-int/lit8 v2, v17, 0x1

    invoke-virtual {v10, v2, v0}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x7

    const/4 v2, 0x0

    invoke-static {v15, v0, v10, v2}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->f(IILandroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    move-result-object v0

    move-object/from16 v16, v2

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v2, v6, :cond_20

    invoke-static/range {v16 .. v16}, Landroidx/compose/runtime/SnapshotStateKt;->g(Ljava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_20
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v21

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v21, :cond_21

    if-ne v15, v6, :cond_22

    :cond_21
    new-instance v15, Lm8;

    const/16 v3, 0xa

    invoke-direct {v15, v0, v2, v3}, Lm8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v15}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_22
    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v3

    move/from16 v21, v3

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v21, :cond_23

    if-ne v3, v6, :cond_24

    :cond_23
    new-instance v3, Ln8;

    const/4 v4, 0x6

    invoke-direct {v3, v0, v2, v4}, Ln8;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;I)V

    invoke-virtual {v10, v3}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v21, v3

    check-cast v21, Lkotlin/jvm/functions/Function1;

    iget-boolean v3, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->i:Z

    if-eqz v3, :cond_25

    invoke-interface/range {p7 .. p7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_25
    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz v3, :cond_26

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->m:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    move-object/from16 v16, v3

    :cond_26
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/repairs/detail/components/BottomSheetScreen;

    const/high16 v4, 0x70000

    and-int v4, v19, v4

    move-object/from16 v19, v0

    const/high16 v0, 0x20000

    if-ne v4, v0, :cond_27

    const/4 v0, 0x1

    goto :goto_14

    :cond_27
    const/4 v0, 0x0

    :goto_14
    invoke-virtual {v10, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    const v4, 0xe000

    and-int v4, v17, v4

    move/from16 v17, v0

    const/16 v0, 0x4000

    if-ne v4, v0, :cond_28

    const/4 v0, 0x1

    goto :goto_15

    :cond_28
    const/4 v0, 0x0

    :goto_15
    or-int v0, v17, v0

    if-nez v16, :cond_29

    const/4 v4, -0x1

    goto :goto_16

    :cond_29
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    :goto_16
    invoke-virtual {v10, v4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result v4

    or-int/2addr v0, v4

    invoke-virtual {v10}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v0, :cond_2b

    if-ne v4, v6, :cond_2a

    goto :goto_17

    :cond_2a
    move-object v7, v3

    move-object/from16 v17, v16

    move-object/from16 v16, v2

    goto :goto_18

    :cond_2b
    :goto_17
    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1;

    const/4 v6, 0x0

    move-object/from16 v4, p4

    move-object v7, v3

    move-object/from16 v5, v16

    move-object v3, v2

    move-object v2, v1

    move-object/from16 v1, p15

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt$RepairsDetailBffScreen$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/coroutines/Continuation;)V

    move-object/from16 v16, v3

    move-object/from16 v17, v5

    invoke-virtual {v10, v0}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    move-object v4, v0

    :goto_18
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v10, v7, v4}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Lv8;

    const/4 v1, 0x5

    move-object/from16 v3, p14

    move-object/from16 v5, p16

    move-object/from16 v2, p17

    move-object v4, v8

    invoke-direct/range {v0 .. v5}, Lv8;-><init>(ILcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    const v1, -0x4686e8f8

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v18

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;

    move-object/from16 v2, p0

    move-object/from16 v3, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v4, p13

    move-object/from16 v8, p15

    move-object/from16 v1, p17

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/a;-><init>(Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    move-object v4, v5

    const v1, 0x519424e7

    invoke-static {v1, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v20

    new-instance v0, Lfs0;

    move-object/from16 v3, p2

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lfs0;-><init>(Landroidx/compose/material3/SnackbarHostState;I)V

    const v2, -0x1650cd3a

    invoke-static {v2, v0, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v21

    new-instance v0, Lh0;

    move/from16 v22, v1

    move-object v7, v3

    move-object v6, v11

    move-object v3, v12

    move-object v9, v13

    move-object v13, v15

    move-object/from16 v5, v16

    move-object/from16 v2, v19

    move-object/from16 v1, p0

    move-object/from16 v12, p9

    move-object/from16 v11, p10

    move-object v15, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v13}, Lh0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    const v2, -0x12a2ed23

    invoke-static {v2, v0, v15}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v26

    const v28, 0x30000db0

    const/16 v29, 0x1f1

    move-object/from16 v27, v15

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v20

    const/16 v20, 0x0

    move-object/from16 v16, v18

    move-object/from16 v18, v21

    move/from16 v0, v22

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v15 .. v29}, Landroidx/compose/material3/ScaffoldKt;->a(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;IJJLandroidx/compose/foundation/layout/WindowInsets;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v15, v27

    iget-boolean v2, v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;->b:Z

    if-nez v2, :cond_2d

    iget-boolean v2, v14, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    if-eqz v2, :cond_2c

    goto :goto_19

    :cond_2c
    const v2, -0x3f11b12a

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2d
    :goto_19
    const v2, -0x3f1230cc

    invoke-virtual {v15, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    const/4 v2, 0x1

    invoke-static {v0, v15, v0, v2}, Lcom/vuitton/android/designkit/components/components/LVLoadingOverlayKt;->a(ZLandroidx/compose/runtime/Composer;II)V

    invoke-virtual {v15, v0}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    goto :goto_1a

    :cond_2e
    move-object v15, v10

    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1a
    invoke-virtual {v15}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_2f

    move-object v2, v0

    new-instance v0, Lyr0;

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v30, v2

    move-object v2, v14

    move-object/from16 v14, p13

    invoke-direct/range {v0 .. v20}, Lyr0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/RepairsBffViewState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;II)V

    move-object/from16 v2, v30

    iput-object v0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_2f
    return-void
.end method

.method public static final k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 40

    move-object/from16 v0, p0

    const-string v1, "Section"

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v2, 0x51ad079d

    move-object/from16 v3, p3

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    or-int/lit8 v4, p4, 0x6

    move-object/from16 v7, p1

    invoke-virtual {v2, v7}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x20

    goto :goto_0

    :cond_1
    const/16 v5, 0x10

    :goto_0
    or-int/2addr v4, v5

    and-int/lit16 v5, v4, 0x93

    const/16 v6, 0x92

    const/4 v9, 0x0

    if-eq v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v9

    :goto_1
    and-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6, v5}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    new-instance v0, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v0, v1}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->j(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVShape;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVShape;->b:Landroidx/compose/foundation/shape/RoundedCornerShape;

    invoke-static {v0, v5}, Landroidx/compose/ui/draw/ClipKt;->a(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v6

    iget-object v6, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v10, v6, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->a:J

    sget-object v6, Landroidx/compose/ui/graphics/RectangleShapeKt;->a:Landroidx/compose/ui/graphics/RectangleShapeKt$RectangleShape$1;

    invoke-static {v5, v10, v11, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v10, Landroidx/compose/foundation/layout/Arrangement;->c:Landroidx/compose/foundation/layout/Arrangement$Top$1;

    sget-object v11, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v10, v11, v2, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v10

    iget-wide v12, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v12, v13}, Ljava/lang/Long;->hashCode(J)I

    move-result v12

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v13

    invoke-static {v2, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v14, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    const/16 v26, 0x0

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v15, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v15, :cond_3

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_2
    sget-object v15, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v10, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v13, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v12, v13}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v12, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v12}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v7, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v7}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v5}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    move-object/from16 v16, v10

    iget-wide v9, v8, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->u:J

    invoke-static {v5, v9, v10, v6}, Landroidx/compose/foundation/BackgroundKt;->b(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    sget-object v6, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->k:Landroidx/compose/ui/BiasAlignment$Vertical;

    const/4 v9, 0x0

    invoke-static {v6, v8, v2, v9}, Landroidx/compose/foundation/layout/RowKt;->a(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/RowMeasurePolicy;

    move-result-object v6

    iget-wide v9, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v9, v10}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v2, v5}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v5

    if-eqz v3, :cond_7

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v10, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v10, :cond_4

    invoke-virtual {v2, v14}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_3
    invoke-static {v2, v6, v15}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v6, v16

    invoke-static {v2, v9, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8, v2, v13, v2, v12}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v2, v5, v7, v1}, Ltr;->e(Landroidx/compose/runtime/GapComposer;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v8

    iget v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v5, v8}, Landroidx/compose/foundation/layout/PaddingKt;->i(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v5

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v8

    iget-object v8, v8, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->j:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v9

    iget-object v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v9, v9, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->m:J

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v23, v4, 0xe

    const/16 v24, 0x0

    const v25, 0x1fff8

    move-object v4, v7

    move-object/from16 v21, v8

    const-wide/16 v7, 0x0

    move-wide/from16 v38, v9

    move-object v10, v4

    move-object v4, v5

    move-wide/from16 v5, v38

    const/4 v9, 0x0

    move-object/from16 v18, v10

    move-object/from16 v17, v11

    const-wide/16 v10, 0x0

    move-object/from16 v19, v12

    const/4 v12, 0x0

    move-object/from16 v20, v13

    const/4 v13, 0x0

    move-object/from16 v22, v14

    move-object/from16 v27, v15

    const-wide/16 v14, 0x0

    move-object/from16 v28, v16

    const/16 v16, 0x0

    move-object/from16 v29, v17

    const/16 v17, 0x0

    move-object/from16 v30, v18

    const/16 v18, 0x0

    move-object/from16 v31, v19

    const/16 v19, 0x0

    move-object/from16 v32, v20

    const/16 v20, 0x0

    move-object/from16 p0, v0

    move-object/from16 p3, v3

    move-object/from16 v33, v27

    move-object/from16 v34, v28

    move-object/from16 v0, v29

    move-object/from16 v37, v30

    move-object/from16 v36, v31

    move-object/from16 v35, v32

    move-object/from16 v3, p1

    move-object/from16 v27, v22

    move-object/from16 v22, v2

    const/4 v2, 0x1

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v3, v22

    invoke-static {v3, v2, v1}, Lo60;->f(Landroidx/compose/runtime/GapComposer;ZLjava/lang/String;)Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    move-result-object v1

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->f:F

    invoke-static {v1, v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->j(Landroidx/compose/ui/Modifier;FF)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v4

    iget v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->e:F

    invoke-static {v4}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v4

    const/4 v9, 0x0

    invoke-static {v4, v0, v3, v9}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v0

    iget-wide v4, v3, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v5

    invoke-static {v3, v1}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    if-eqz p3, :cond_6

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v6, v3, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v6, :cond_5

    move-object/from16 v6, v27

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    :goto_4
    move-object/from16 v6, v33

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->o()V

    goto :goto_4

    :goto_5
    invoke-static {v3, v0, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v6, v34

    invoke-static {v3, v5, v6}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object/from16 v0, v35

    move-object/from16 v5, v36

    invoke-static {v4, v3, v0, v3, v5}, Lcj;->t(ILandroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/GapComposer;Lkotlin/jvm/functions/Function1;)V

    move-object/from16 v4, v37

    invoke-static {v3, v1, v4}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    const/16 v0, 0x36

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Landroidx/compose/foundation/layout/ColumnScopeInstance;->a:Landroidx/compose/foundation/layout/ColumnScopeInstance;

    move-object/from16 v8, p2

    invoke-virtual {v8, v1, v3, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;->A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    move-object/from16 v6, p0

    goto :goto_6

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_7
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_8
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    throw v26

    :cond_9
    move-object/from16 v8, p2

    move-object v3, v2

    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->D()V

    move-object v6, v0

    :goto_6
    invoke-virtual {v3}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    new-instance v5, Las0;

    const/4 v10, 0x0

    move-object/from16 v7, p1

    move/from16 v9, p4

    invoke-direct/range {v5 .. v10}, Las0;-><init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v5, v0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_a
    return-void
.end method

.method public static final l(Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const v0, -0x13202de1

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    or-int/2addr v0, p3

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x10

    if-eqz v1, :cond_1

    const/16 v1, 0x20

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_2

    move v1, v5

    goto :goto_2

    :cond_2
    move v1, v4

    :goto_2
    and-int/2addr v0, v5

    invoke-virtual {p2, v0, v1}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/ShippingInformationUiModel;->b:Ljava/lang/String;

    new-instance v1, Lni0;

    invoke-direct {v1, p0, p1, v2}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const v2, 0x7794d187

    invoke-static {v2, v1, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v1

    const/16 v2, 0x180

    const/4 v3, 0x0

    invoke-static {v3, v0, v1, p2, v2}, Lcom/vuitton/android/presentation/screen/repairs/detail/components/RepairDetailBffScreenKt;->k(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_3
    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v0, Les0;

    invoke-direct {v0, p0, p1, p3, v4}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method

.method public static final m(Ljava/lang/String;Ljava/util/List;Landroidx/compose/runtime/Composer;I)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, -0x3544c640    # -6135008.0f

    move-object/from16 v3, p2

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, p3, 0x6

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int v3, p3, v3

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0x20

    goto :goto_2

    :cond_2
    const/16 v4, 0x10

    :goto_2
    or-int/2addr v3, v4

    and-int/lit8 v4, v3, 0x13

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_3

    move v4, v6

    goto :goto_3

    :cond_3
    move v4, v7

    :goto_3
    and-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5, v4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const-string v4, "VerticalSection"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ltr;->d(Ljava/lang/String;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->a:Landroidx/compose/foundation/layout/Arrangement$Start$1;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->l(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVSpacings;

    move-result-object v5

    iget v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVSpacings;->b:F

    invoke-static {v5}, Landroidx/compose/foundation/layout/Arrangement;->f(F)Landroidx/compose/foundation/layout/Arrangement$SpacedAligned;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/Alignment;->a:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Landroidx/compose/ui/Alignment$Companion;->n:Landroidx/compose/ui/BiasAlignment$Horizontal;

    invoke-static {v5, v8, v2, v7}, Landroidx/compose/foundation/layout/ColumnKt;->a(Landroidx/compose/foundation/layout/Arrangement$Vertical;Landroidx/compose/ui/Alignment$Horizontal;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/layout/ColumnMeasurePolicy;

    move-result-object v5

    iget-wide v8, v2, Landroidx/compose/runtime/GapComposer;->T:J

    invoke-static {v8, v9}, Ljava/lang/Long;->hashCode(J)I

    move-result v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v9

    invoke-static {v2, v4}, Landroidx/compose/ui/ComposedModifierKt;->c(Landroidx/compose/runtime/Composer;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode;->b0:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b:Lkotlin/jvm/functions/Function0;

    iget-object v11, v2, Landroidx/compose/runtime/GapComposer;->a:Landroidx/compose/runtime/Applier;

    if-eqz v11, :cond_6

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->B()V

    iget-boolean v11, v2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-eqz v11, :cond_4

    invoke-virtual {v2, v10}, Landroidx/compose/runtime/GapComposer;->C(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->o()V

    :goto_4
    sget-object v10, Landroidx/compose/ui/node/ComposeUiNode$Companion;->f:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v10}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v9, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v8, Landroidx/compose/ui/node/ComposeUiNode$Companion;->g:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v5, v8}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->h:Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v5}, Landroidx/compose/runtime/Updater;->b(Landroidx/compose/runtime/Composer;Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d:Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v4, v5}, Landroidx/compose/runtime/Updater;->c(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v2}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v8, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->k:J

    and-int/lit8 v20, v3, 0xe

    const/16 v21, 0x0

    const v22, 0x1fffa

    const/4 v1, 0x0

    move-object/from16 v18, v4

    const-wide/16 v4, 0x0

    move v3, v6

    const/4 v6, 0x0

    move-object/from16 v19, v2

    move v10, v7

    move-wide/from16 v27, v8

    move v9, v3

    move-wide/from16 v2, v27

    const-wide/16 v7, 0x0

    move v11, v9

    const/4 v9, 0x0

    move v12, v10

    const/4 v10, 0x0

    move v13, v11

    move v14, v12

    const-wide/16 v11, 0x0

    move v15, v13

    const/4 v13, 0x0

    move/from16 v16, v14

    const/4 v14, 0x0

    move/from16 v17, v15

    const/4 v15, 0x0

    move/from16 v23, v16

    const/16 v16, 0x0

    move/from16 v24, v17

    const/16 v17, 0x0

    invoke-static/range {v0 .. v22}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    move-object/from16 v1, v19

    const v2, 0x7ba00bc8

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/GapComposer;->L(I)V

    move-object/from16 v2, p1

    move-object v3, v2

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->n(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVTypography;

    move-result-object v4

    iget-object v4, v4, Lcom/vuitton/android/designkit/ui/theme/LVTypography;->h:Landroidx/compose/ui/text/TextStyle;

    invoke-static {v1}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->c(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVColor;

    move-result-object v5

    iget-object v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor;->b:Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;

    iget-wide v5, v5, Lcom/vuitton/android/designkit/ui/theme/LVColor$Semantic;->l:J

    const/16 v24, 0x0

    const v25, 0x1fffa

    move-object/from16 v21, v4

    const/4 v4, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v1

    invoke-static/range {v3 .. v25}, Landroidx/compose/material3/TextKt;->c(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontWeight;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    goto :goto_5

    :cond_5
    const/4 v12, 0x0

    invoke-virtual {v1, v12}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    goto :goto_6

    :cond_6
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->b()V

    const/4 v0, 0x0

    throw v0

    :cond_7
    move-object/from16 v27, v2

    move-object v2, v1

    move-object/from16 v1, v27

    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v1}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v3, Lg2;

    const/16 v4, 0x1a

    move/from16 v5, p3

    invoke-direct {v3, v2, v5, v4, v0}, Lg2;-><init>(Ljava/lang/Object;IILjava/lang/String;)V

    iput-object v3, v1, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_8
    return-void
.end method
