.class public final synthetic Lvf0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;

.field public final synthetic d:Lkotlin/jvm/functions/Function3;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;

.field public final synthetic f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function1;

.field public final synthetic m:Lkotlin/jvm/functions/Function1;

.field public final synthetic n:Lkotlin/jvm/functions/Function0;

.field public final synthetic o:Lkotlin/jvm/functions/Function1;

.field public final synthetic p:Lkotlin/jvm/functions/Function0;

.field public final synthetic q:Lkotlin/jvm/functions/Function1;

.field public final synthetic r:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/pager/PagerState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvf0;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    iput-object p2, p0, Lvf0;->c:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lvf0;->d:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lvf0;->e:Lkotlin/jvm/functions/Function1;

    iput-object p5, p0, Lvf0;->f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iput-object p6, p0, Lvf0;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lvf0;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lvf0;->i:Landroidx/compose/foundation/pager/PagerState;

    iput-object p9, p0, Lvf0;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lvf0;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lvf0;->l:Lkotlin/jvm/functions/Function1;

    iput-object p12, p0, Lvf0;->m:Lkotlin/jvm/functions/Function1;

    iput-object p13, p0, Lvf0;->n:Lkotlin/jvm/functions/Function0;

    iput-object p14, p0, Lvf0;->o:Lkotlin/jvm/functions/Function1;

    iput-object p15, p0, Lvf0;->p:Lkotlin/jvm/functions/Function0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lvf0;->q:Lkotlin/jvm/functions/Function1;

    move-object/from16 p1, p17

    iput-object p1, p0, Lvf0;->r:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/layout/ColumnScope;

    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v7, p3

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v4, v3, 0x6

    const/4 v5, 0x2

    if-nez v4, :cond_1

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    or-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v3, v3, 0x30

    if-nez v3, :cond_3

    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v4, v3

    :cond_3
    and-int/lit16 v3, v4, 0x93

    const/16 v8, 0x92

    const/4 v10, 0x1

    if-eq v3, v8, :cond_4

    move v3, v10

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    and-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_28

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v13, v0, Lvf0;->b:Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;

    invoke-virtual {v13}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/vuitton/android/presentation/screen/authentication/register/Step;->a()Lkotlin/enums/EnumEntries;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;->q:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/authentication/register/Step;

    :goto_4
    iget-object v8, v0, Lvf0;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {v8, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterScreenKt$WhenMappings;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v8, v3

    iget-object v8, v0, Lvf0;->d:Lkotlin/jvm/functions/Function3;

    iget-object v11, v0, Lvf0;->e:Lkotlin/jvm/functions/Function1;

    iget-object v12, v0, Lvf0;->f:Landroidx/compose/ui/platform/SoftwareKeyboardController;

    iget-object v14, v0, Lvf0;->g:Lkotlin/jvm/functions/Function1;

    iget-object v15, v0, Lvf0;->h:Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lvf0;->i:Landroidx/compose/foundation/pager/PagerState;

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eq v3, v10, :cond_22

    const/4 v10, 0x3

    if-eq v3, v5, :cond_1c

    if-eq v3, v10, :cond_14

    const/4 v5, 0x4

    if-eq v3, v5, :cond_c

    const/4 v5, 0x5

    if-ne v3, v5, :cond_b

    const v3, -0x20570c8

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v0, Lvf0;->r:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_6

    if-ne v8, v6, :cond_7

    :cond_6
    new-instance v8, Lwz;

    const/4 v5, 0x1

    invoke-direct {v8, v3, v14, v5}, Lwz;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v3, v8

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_8

    if-ne v8, v6, :cond_9

    :cond_8
    new-instance v11, Luf0;

    const/16 v16, 0x1

    invoke-direct/range {v11 .. v16}, Luf0;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v11

    :cond_9
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v5

    if-ne v5, v2, :cond_a

    const/4 v6, 0x1

    :goto_5
    move/from16 v17, v4

    move-object v4, v8

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    goto :goto_5

    :goto_6
    and-int/lit8 v8, v17, 0xe

    iget-object v2, v0, Lvf0;->q:Lkotlin/jvm/functions/Function1;

    move-object v0, v1

    move-object v1, v13

    move-object v5, v14

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterActivationComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_12

    :cond_b
    const v0, -0x20785e7

    invoke-static {v7, v0}, Lo60;->v(Landroidx/compose/runtime/Composer;I)Lkotlin/NoWhenBranchMatchedException;

    move-result-object v0

    throw v0

    :cond_c
    move/from16 v17, v4

    const v3, -0x2061507

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->L(I)V

    iget-object v3, v0, Lvf0;->o:Lkotlin/jvm/functions/Function1;

    invoke-interface {v7, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_e

    if-ne v5, v6, :cond_d

    goto :goto_7

    :cond_d
    const/4 v4, 0x0

    goto :goto_8

    :cond_e
    :goto_7
    new-instance v5, Ltf0;

    const/4 v4, 0x0

    invoke-direct {v5, v3, v4}, Ltf0;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_8
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v3, :cond_f

    if-ne v10, v6, :cond_10

    :cond_f
    new-instance v10, Lye0;

    const/4 v3, 0x1

    invoke-direct {v10, v8, v3}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v3, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v3, :cond_11

    if-ne v8, v6, :cond_12

    :cond_11
    move-object v3, v11

    goto :goto_9

    :cond_12
    move-object v3, v11

    goto :goto_a

    :goto_9
    new-instance v11, Luf0;

    const/16 v16, 0x0

    invoke-direct/range {v11 .. v16}, Luf0;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v11

    :goto_a
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v6

    if-ne v6, v2, :cond_13

    const/4 v9, 0x1

    goto :goto_b

    :cond_13
    move v9, v4

    :goto_b
    and-int/lit8 v12, v17, 0xe

    move-object v2, v1

    move-object v1, v13

    const/4 v13, 0x0

    move-object v4, v2

    iget-object v2, v0, Lvf0;->m:Lkotlin/jvm/functions/Function1;

    move-object v6, v3

    iget-object v3, v0, Lvf0;->n:Lkotlin/jvm/functions/Function0;

    move-object v11, v7

    iget-object v7, v0, Lvf0;->p:Lkotlin/jvm/functions/Function0;

    move-object v0, v4

    move-object v4, v5

    move-object v5, v10

    move v10, v9

    move-object v9, v14

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterBirthInfoComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;II)V

    move-object v7, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_12

    :cond_14
    move/from16 v17, v4

    move-object v3, v11

    const/4 v4, 0x0

    const v5, -0x2069760

    invoke-interface {v7, v5}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v5, :cond_15

    if-ne v11, v6, :cond_16

    :cond_15
    new-instance v11, Lye0;

    const/4 v5, 0x4

    invoke-direct {v11, v8, v5}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v11, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_18

    if-ne v8, v6, :cond_17

    goto :goto_c

    :cond_17
    const/4 v5, 0x1

    goto :goto_d

    :cond_18
    :goto_c
    new-instance v8, Lof0;

    const/4 v5, 0x1

    invoke-direct {v8, v12, v13, v15, v5}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :goto_d
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v14

    iget-object v15, v0, Lvf0;->k:Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v16

    or-int v14, v14, v16

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v14, :cond_19

    if-ne v4, v6, :cond_1a

    :cond_19
    new-instance v4, Ln1;

    invoke-direct {v4, v12, v15, v10}, Ln1;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1a
    move-object v6, v4

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v4

    if-ne v4, v2, :cond_1b

    move v9, v5

    goto :goto_e

    :cond_1b
    const/4 v9, 0x0

    :goto_e
    and-int/lit8 v10, v17, 0xe

    iget-object v4, v0, Lvf0;->j:Lkotlin/jvm/functions/Function0;

    iget-object v0, v0, Lvf0;->l:Lkotlin/jvm/functions/Function1;

    move-object v5, v8

    move v8, v9

    move-object v2, v11

    move-object v9, v7

    move-object v7, v0

    move-object v0, v1

    move-object v1, v13

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterRegistrationAddressComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    move-object v7, v9

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto/16 :goto_12

    :cond_1c
    move-object v0, v1

    move/from16 v17, v4

    move-object v3, v11

    const/4 v5, 0x1

    const v1, -0x2071546

    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_1d

    if-ne v4, v6, :cond_1e

    :cond_1d
    new-instance v4, Lye0;

    invoke-direct {v4, v8, v10}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v1, :cond_1f

    if-ne v8, v6, :cond_20

    :cond_1f
    new-instance v11, Luf0;

    const/16 v16, 0x3

    invoke-direct/range {v11 .. v16}, Luf0;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v11

    :cond_20
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    if-ne v1, v2, :cond_21

    move v6, v5

    :goto_f
    move-object v2, v4

    move-object v4, v8

    goto :goto_10

    :cond_21
    const/4 v6, 0x0

    goto :goto_f

    :goto_10
    and-int/lit8 v8, v17, 0xe

    move-object v1, v13

    move-object v5, v14

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterPersonalInfoComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_12

    :cond_22
    move-object v0, v1

    move/from16 v17, v4

    move v1, v10

    move-object v3, v11

    const v4, -0x207910f

    invoke-interface {v7, v4}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v4, :cond_23

    if-ne v10, v6, :cond_24

    :cond_23
    new-instance v10, Lye0;

    invoke-direct {v10, v8, v5}, Lye0;-><init>(Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    check-cast v10, Lkotlin/jvm/functions/Function2;

    invoke-interface {v7, v12}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v4

    invoke-interface {v7, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v7, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v7, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v4, v5

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_25

    if-ne v5, v6, :cond_26

    :cond_25
    new-instance v11, Luf0;

    const/16 v16, 0x2

    invoke-direct/range {v11 .. v16}, Luf0;-><init>(Landroidx/compose/ui/platform/SoftwareKeyboardController;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v11

    :cond_26
    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v9}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v5

    if-ne v5, v2, :cond_27

    move v6, v1

    goto :goto_11

    :cond_27
    const/4 v6, 0x0

    :goto_11
    and-int/lit8 v8, v17, 0xe

    move-object v2, v10

    move-object v1, v13

    move-object v5, v14

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/register/components/NativeRegisterCredentialsComposableKt;->a(Landroidx/compose/foundation/layout/ColumnScope;Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterViewState;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ZLandroidx/compose/runtime/Composer;I)V

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->F()V

    goto :goto_12

    :cond_28
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
