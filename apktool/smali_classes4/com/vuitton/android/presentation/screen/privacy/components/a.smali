.class public final synthetic Lcom/vuitton/android/presentation/screen/privacy/components/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Landroidx/compose/runtime/State;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;ZZLkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->c:Z

    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->d:Z

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->h:Landroidx/compose/runtime/State;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/PaddingValues;

    move-object/from16 v12, p2

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v3, v2, 0x6

    if-nez v3, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v2, v3

    :cond_1
    and-int/lit8 v3, v2, 0x13

    const/16 v4, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x1

    invoke-interface {v12, v4, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_c

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->h:Landroidx/compose/runtime/State;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->a:Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->b:Ljava/util/List;

    invoke-interface {v3}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/privacy/models/PrivacyViewState;->f:Z

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->b:Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    move v8, v2

    move-object v2, v4

    move v4, v3

    move-object v3, v7

    invoke-interface {v15}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;->kb()Z

    move-result v7

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v9, :cond_3

    if-ne v10, v11, :cond_4

    :cond_3
    new-instance v13, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt$PrivacyComposable$3$1$1;

    const-string v18, "updateConsentValue(Lcom/vuitton/android/presentation/screen/privacy/models/ConsentUiModel;Z)V"

    const/16 v19, 0x0

    const/4 v14, 0x2

    const-class v16, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    const-string v17, "updateConsentValue"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v10, v13

    :cond_4
    check-cast v10, Lkotlin/reflect/KFunction;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v9, :cond_5

    if-ne v13, v11, :cond_6

    :cond_5
    new-instance v13, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyComposableKt$PrivacyComposable$3$2$1;

    const-string v18, "saveConsents()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;

    const-string v17, "saveConsents"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v13, Lkotlin/reflect/KFunction;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v9

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v9, :cond_7

    if-ne v14, v11, :cond_8

    :cond_7
    new-instance v14, Lmp0;

    invoke-direct {v14, v15, v5}, Lmp0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;I)V

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v9, v14

    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v14

    if-nez v5, :cond_9

    if-ne v14, v11, :cond_a

    :cond_9
    new-instance v14, Lmp0;

    invoke-direct {v14, v15, v6}, Lmp0;-><init>(Lcom/vuitton/android/presentation/screen/privacy/PrivacyViewModel;I)V

    invoke-interface {v12, v14}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v14, Lkotlin/jvm/functions/Function0;

    check-cast v13, Lkotlin/jvm/functions/Function0;

    and-int/lit8 v5, v8, 0xe

    move-object v8, v10

    move-object v10, v14

    move v14, v5

    iget-boolean v5, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->c:Z

    iget-boolean v6, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->d:Z

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->e:Lkotlin/jvm/functions/Function0;

    move-object/from16 v20, v13

    move-object v13, v12

    move-object/from16 v12, v20

    invoke-static/range {v1 .. v14}, Lcom/vuitton/android/presentation/screen/privacy/components/PrivacyScreenKt;->a(Landroidx/compose/foundation/layout/PaddingValues;Lcom/vuitton/foundation/model/domain/model/privacy/PrivacyType;Ljava/util/List;ZZZZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    move-object v12, v13

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->f:Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;

    invoke-virtual {v5}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, -0x62390d07

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    const v1, 0x7f140319

    invoke-static {v12, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v3

    new-instance v1, La3;

    const/16 v2, 0x1a

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/privacy/components/a;->g:Lkotlin/jvm/functions/Function0;

    invoke-direct {v1, v4, v2}, La3;-><init>(Lkotlin/jvm/functions/Function0;I)V

    const v0, 0x7417fad1

    invoke-static {v0, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v11

    sget v0, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;->e:I

    shl-int/lit8 v0, v0, 0x9

    const/high16 v1, 0x6000000

    or-int v13, v0, v1

    const/16 v14, 0xf1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v14}, Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetKt;->b(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/designkit/ui/theme/templates/LVModalBottomSheetState;Landroidx/compose/foundation/layout/WindowInsets;JZLandroidx/compose/material3/ModalBottomSheetProperties;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_b
    const v0, -0x623322fe

    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_2

    :cond_c
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
