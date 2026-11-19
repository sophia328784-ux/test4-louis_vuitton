.class public final synthetic Lcom/vuitton/android/presentation/screen/authentication/register/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

.field public final synthetic c:Landroidx/compose/material3/SnackbarHostState;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic h:Landroidx/compose/runtime/MutableState;

.field public final synthetic i:Landroidx/navigation/NavHostController;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function1;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;

.field public final synthetic m:Lkotlin/jvm/functions/Function0;

.field public final synthetic n:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;Landroidx/compose/material3/SnackbarHostState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/runtime/MutableState;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->c:Landroidx/compose/material3/SnackbarHostState;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->d:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->f:Landroidx/compose/foundation/pager/PagerState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->h:Landroidx/compose/runtime/MutableState;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->i:Landroidx/navigation/NavHostController;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->k:Lkotlin/jvm/functions/Function1;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->l:Lkotlin/jvm/functions/Function0;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->m:Lkotlin/jvm/functions/Function0;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->n:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v3, p3

    check-cast v3, Landroidx/compose/runtime/Composer;

    move-object/from16 v4, p4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->h:Landroidx/compose/runtime/MutableState;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->n:Landroidx/compose/runtime/MutableState;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->b:Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v13, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v4, :cond_0

    if-ne v6, v13, :cond_1

    :cond_0
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$1$1;

    const-string v11, "onFieldUpdated(Lcom/vuitton/android/presentation/screen/authentication/register/Step;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/Object;)V"

    const/4 v12, 0x0

    const/4 v7, 0x3

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "onFieldUpdated"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v4, v6

    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_2

    if-ne v7, v13, :cond_3

    :cond_2
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$2$1;

    const-string v11, "onFieldClicked(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "onFieldClicked"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_3
    move-object v14, v7

    check-cast v14, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_4

    if-ne v7, v13, :cond_5

    :cond_4
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$3$1;

    const-string v11, "confirmStep(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "confirmStep"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_5
    move-object v15, v7

    check-cast v15, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_6

    if-ne v7, v13, :cond_7

    :cond_6
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$4$1;

    const-string v11, "skipAddressStep()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "skipAddressStep"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_7
    move-object/from16 v16, v7

    check-cast v16, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_8

    if-ne v7, v13, :cond_9

    :cond_8
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$5$1;

    const-string v11, "updateBirthDate(J)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "updateBirthDate"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_9
    move-object/from16 v17, v7

    check-cast v17, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_a

    if-ne v7, v13, :cond_b

    :cond_a
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$6$1;

    const-string v11, "closeDatePicker()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "closeDatePicker"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_b
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_c

    if-ne v7, v13, :cond_d

    :cond_c
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$7$1;

    const-string v11, "updateOtpCode(Ljava/lang/String;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "updateOtpCode"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_d
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_e

    if-ne v7, v13, :cond_f

    :cond_e
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$8$1;

    const-string v11, "onStepReached(Lcom/vuitton/android/presentation/screen/authentication/register/Step;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "onStepReached"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_f
    move-object/from16 v20, v7

    check-cast v20, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_10

    if-ne v7, v13, :cond_11

    :cond_10
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$9$1;

    const-string v11, "goToPreviousStep()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "goToPreviousStep"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_11
    move-object/from16 v21, v7

    check-cast v21, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_12

    if-ne v7, v13, :cond_13

    :cond_12
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$10$1;

    const-string v11, "onResendCodeClick()V"

    const/4 v12, 0x0

    const/4 v7, 0x0

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "onResendCodeClick"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_13
    move-object/from16 v22, v7

    check-cast v22, Lkotlin/reflect/KFunction;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_14

    if-ne v7, v13, :cond_15

    :cond_14
    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterComposableKt$NativeRegisterComposable$7$1$1$11$1;

    const-string v11, "trackAddressEvent(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterAddressTrackingUiModel;)V"

    const/4 v12, 0x0

    const/4 v7, 0x1

    const-class v9, Lcom/vuitton/android/presentation/screen/authentication/register/NativeRegisterViewModel;

    const-string v10, "trackAddressEvent"

    invoke-direct/range {v6 .. v12}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_15
    check-cast v7, Lkotlin/reflect/KFunction;

    move-object v10, v4

    check-cast v10, Lkotlin/jvm/functions/Function3;

    move-object v11, v14

    check-cast v11, Lkotlin/jvm/functions/Function1;

    move-object v12, v15

    check-cast v12, Lkotlin/jvm/functions/Function1;

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->i:Landroidx/navigation/NavHostController;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_16

    if-ne v9, v13, :cond_17

    :cond_16
    new-instance v9, Lof0;

    const/4 v4, 0x0

    invoke-direct {v9, v6, v8, v1, v4}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_17
    move-object v14, v9

    check-cast v14, Lkotlin/jvm/functions/Function0;

    check-cast v17, Lkotlin/jvm/functions/Function1;

    check-cast v18, Lkotlin/jvm/functions/Function0;

    check-cast v19, Lkotlin/jvm/functions/Function1;

    check-cast v20, Lkotlin/jvm/functions/Function1;

    check-cast v21, Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->m:Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v4, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->f:Landroidx/compose/foundation/pager/PagerState;

    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v4, v9

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v4, :cond_18

    if-ne v9, v13, :cond_19

    :cond_18
    new-instance v9, Lpp;

    const/16 v4, 0x1d

    invoke-direct {v9, v1, v8, v6, v4}, Lpp;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_19
    move-object/from16 v23, v9

    check-cast v23, Lkotlin/jvm/functions/Function0;

    move-object/from16 v24, v22

    check-cast v24, Lkotlin/jvm/functions/Function0;

    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1a

    if-ne v4, v13, :cond_1b

    :cond_1a
    new-instance v4, Ltb0;

    const/16 v1, 0xc

    invoke-direct {v4, v8, v1}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1b
    move-object/from16 v25, v4

    check-cast v25, Lkotlin/jvm/functions/Function1;

    move-object/from16 v26, v7

    check-cast v26, Lkotlin/jvm/functions/Function1;

    sget v1, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v1, v1, 0x12

    or-int/lit8 v28, v1, 0x30

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->c:Landroidx/compose/material3/SnackbarHostState;

    move-object v8, v6

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->d:Lkotlin/jvm/functions/Function1;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->e:Lkotlin/jvm/functions/Function0;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->g:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->j:Lkotlin/jvm/functions/Function0;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->k:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/authentication/register/components/a;->l:Lkotlin/jvm/functions/Function0;

    move-object/from16 v27, v3

    move-object/from16 v13, v16

    move-object/from16 v22, v21

    move-object/from16 v16, v1

    move-object v3, v2

    move-object/from16 v21, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v18

    move-object/from16 v18, v0

    invoke-static/range {v3 .. v28}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterScreenKt;->a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Landroidx/compose/material3/SnackbarHostState;Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBottomSheetScreen;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/foundation/pager/PagerState;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
