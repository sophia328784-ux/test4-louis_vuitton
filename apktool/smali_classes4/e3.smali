.class public final synthetic Le3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Le3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3;->g:Ljava/lang/Object;

    iput-object p2, p0, Le3;->c:Ljava/lang/Object;

    iput-object p3, p0, Le3;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Le3;->j:Ljava/lang/Object;

    iput-object p5, p0, Le3;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Le3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Le3;->h:Ljava/lang/Object;

    iput-object p8, p0, Le3;->i:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 1

    .line 23
    const/4 v0, 0x2

    iput v0, p0, Le3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3;->g:Ljava/lang/Object;

    iput-object p2, p0, Le3;->c:Ljava/lang/Object;

    iput-object p3, p0, Le3;->e:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Le3;->h:Ljava/lang/Object;

    iput-object p5, p0, Le3;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Le3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Le3;->i:Ljava/lang/Object;

    iput-object p8, p0, Le3;->j:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 24
    const/4 v0, 0x1

    iput v0, p0, Le3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le3;->c:Ljava/lang/Object;

    iput-object p2, p0, Le3;->g:Ljava/lang/Object;

    iput-object p3, p0, Le3;->h:Ljava/lang/Object;

    iput-object p4, p0, Le3;->d:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Le3;->i:Ljava/lang/Object;

    iput-object p6, p0, Le3;->e:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Le3;->j:Ljava/lang/Object;

    iput-object p8, p0, Le3;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Le3;->b:I

    const/16 v2, 0xe

    const/4 v3, 0x4

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget-object v5, v0, Le3;->f:Lkotlin/jvm/functions/Function0;

    const/4 v6, 0x0

    iget-object v7, v0, Le3;->j:Ljava/lang/Object;

    iget-object v8, v0, Le3;->i:Ljava/lang/Object;

    iget-object v9, v0, Le3;->h:Ljava/lang/Object;

    iget-object v10, v0, Le3;->c:Ljava/lang/Object;

    iget-object v11, v0, Le3;->g:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v11, Ljava/lang/String;

    check-cast v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Landroidx/compose/runtime/MutableState;

    check-cast v7, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v12, p2

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    move-object/from16 v13, p3

    check-cast v13, Landroidx/compose/runtime/Composer;

    move-object/from16 v14, p4

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/16 v1, 0xd

    const-string v14, "QuickAccessFiltersEntryPoint_AlbwjTQ$lambda$19$2$5"

    if-eqz v12, :cond_4

    const v2, 0x11d3fc0f

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v2, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v2, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v5, "QAF_CloseItem_button"

    invoke-static {v2, v5}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_0

    if-ne v7, v4, :cond_1

    :cond_0
    new-instance v7, Lnj0;

    invoke-direct {v7, v11, v1}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v7, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v6, v7}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-static {v13}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v14, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->A:I

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    iget-object v0, v0, Le3;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2

    if-ne v6, v4, :cond_3

    :cond_2
    new-instance v6, Lsq0;

    invoke-direct {v6, v0, v3}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object/from16 v18, v6

    check-cast v18, Lkotlin/jvm/functions/Function0;

    const/16 v21, 0x0

    const/16 v22, 0x44

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v2

    move-object/from16 v20, v13

    move-object v13, v1

    invoke-static/range {v13 .. v22}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    move-object/from16 v3, v20

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_2

    :cond_4
    move-object v3, v13

    const v11, 0x11ded821

    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->L(I)V

    new-instance v11, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;

    invoke-direct {v11, v14}, Lcom/dynatrace/agent/compose/userinteraction/sensor/DTFunctionNameModifier;-><init>(Ljava/lang/String;)V

    const-string v12, "QAF_FloatingIconItem_button"

    invoke-static {v11, v12}, Lcom/vuitton/android/designkit/ui/common/ModifierExtKt;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_5

    if-ne v13, v4, :cond_6

    :cond_5
    new-instance v13, Lnj0;

    invoke-direct {v13, v9, v2}, Lnj0;-><init>(Ljava/lang/String;I)V

    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-static {v11, v6, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->b(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v13

    iget-boolean v2, v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->q:Z

    if-eqz v2, :cond_7

    const v2, 0x11e47b72

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->l1:I

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    :goto_0
    move v14, v2

    goto :goto_1

    :cond_7
    const v2, 0x11e5e04f

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-static {v3}, Lcom/vuitton/android/designkit/ui/theme/LVAppDesignKitTheme;->g(Landroidx/compose/runtime/Composer;)Lcom/vuitton/android/designkit/ui/theme/LVIcon;

    move-result-object v2

    iget v2, v2, Lcom/vuitton/android/designkit/ui/theme/LVIcon;->p:I

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_0

    :goto_1
    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/QuickAccessFiltersViewState;->a:Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;

    invoke-interface {v8}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_8

    if-ne v8, v4, :cond_9

    :cond_8
    new-instance v8, Lsq0;

    const/4 v6, 0x5

    invoke-direct {v8, v5, v6}, Lsq0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v18, v8

    check-cast v18, Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Le3;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_a

    if-ne v6, v4, :cond_b

    :cond_a
    new-instance v6, Lx3;

    invoke-direct {v6, v0, v7, v1}, Lx3;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/MutableState;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    move-object/from16 v19, v6

    check-cast v19, Lkotlin/jvm/functions/Function1;

    const/16 v21, 0x180

    const/16 v22, 0x0

    const-string v15, "QAF_FloatingIconItem_text"

    move-object/from16 v16, v2

    move-object/from16 v20, v3

    invoke-static/range {v13 .. v22}, Lcom/vuitton/android/presentation/screen/filter/quickaccess/components/QuickFilterButtonKt;->a(Landroidx/compose/ui/Modifier;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/filter/quickaccess/models/FiltersButtonState;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-interface/range {v20 .. v20}, Landroidx/compose/runtime/Composer;->F()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object v13, v11

    check-cast v13, Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;

    move-object v14, v9

    check-cast v14, Landroidx/navigation/NavHostController;

    move-object/from16 v16, v8

    check-cast v16, Lkotlin/jvm/functions/Function1;

    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function3;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-static {v4, v1, v2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v1, Lcom/vuitton/android/core/type/SystemIcons;->b:Lcom/vuitton/android/core/type/SystemIcons$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/vuitton/android/core/type/SystemIcons;->c:Z

    new-instance v2, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v2, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    new-instance v4, Lcom/vuitton/android/core/type/SystemIcons;

    invoke-direct {v4, v1}, Lcom/vuitton/android/core/type/SystemIcons;-><init>(Z)V

    invoke-interface {v10, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/vuitton/android/presentation/screen/certificates/d;

    iget-object v15, v0, Le3;->d:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Le3;->e:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Le3;->f:Lkotlin/jvm/functions/Function0;

    move-object/from16 v19, v0

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v19}, Lcom/vuitton/android/presentation/screen/certificates/d;-><init>(Lcom/vuitton/android/presentation/screen/certificates/CertificateViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;)V

    const v0, 0x23ab127b

    invoke-static {v0, v12, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v3, v1}, Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVCertificatesLocalProviderKt;->a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    check-cast v7, Landroidx/compose/ui/platform/SoftwareKeyboardController;

    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v13, p4

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v14, v13, 0x6

    const/4 v15, 0x2

    if-nez v14, :cond_d

    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    goto :goto_3

    :cond_c
    move v3, v15

    :goto_3
    or-int/2addr v3, v13

    goto :goto_4

    :cond_d
    move v3, v13

    :goto_4
    and-int/lit8 v13, v13, 0x30

    if-nez v13, :cond_f

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v13

    if-eqz v13, :cond_e

    const/16 v13, 0x20

    goto :goto_5

    :cond_e
    const/16 v13, 0x10

    :goto_5
    or-int/2addr v3, v13

    :cond_f
    and-int/lit16 v13, v3, 0x93

    const/16 v14, 0x92

    move/from16 v17, v2

    const/4 v2, 0x1

    if-eq v13, v14, :cond_10

    move v6, v2

    :cond_10
    and-int/lit8 v13, v3, 0x1

    invoke-interface {v9, v13, v6}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v6

    if-eqz v6, :cond_17

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    if-eqz v1, :cond_14

    if-eq v1, v2, :cond_11

    const v0, 0x22419df3    # 2.6239995E-18f

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_6

    :cond_11
    const v1, -0x40f5d5e3

    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v13, v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;->c:Ljava/lang/String;

    iget-object v14, v11, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;->d:Ljava/lang/String;

    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_12

    if-ne v2, v4, :cond_13

    :cond_12
    new-instance v2, Ln1;

    invoke-direct {v2, v7, v8, v15}, Ln1;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v2, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v19, v3, 0xe

    iget-object v15, v0, Le3;->d:Lkotlin/jvm/functions/Function1;

    move-object/from16 v17, v2

    move-object/from16 v18, v9

    invoke-static/range {v12 .. v19}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationOtpStepKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object/from16 v6, v18

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_14
    move-object v6, v9

    const v1, -0x40f606e2

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_15

    if-ne v8, v4, :cond_16

    :cond_15
    new-instance v8, Ln1;

    invoke-direct {v8, v7, v5, v2}, Ln1;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v5, v8

    check-cast v5, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v7, v3, 0xe

    iget-object v4, v0, Le3;->e:Lkotlin/jvm/functions/Function0;

    move-object v3, v10

    move-object v2, v11

    move-object v1, v12

    invoke-static/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationPasswordStepKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/accountactivation/models/AccountActivationViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_6

    :cond_17
    move-object v6, v9

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
