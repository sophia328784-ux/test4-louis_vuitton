.class public final synthetic Lcom/vuitton/android/presentation/screen/repairs/list/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;FFI)V
    .locals 0

    iput p4, p0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->b:I

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->e:Landroidx/fragment/app/Fragment;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->c:F

    iput p3, p0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->b:I

    sget-object v2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    iget v3, v0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->d:F

    iget v4, v0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->c:F

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/repairs/list/a;->e:Landroidx/fragment/app/Fragment;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$Companion;

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v5, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    :goto_0
    and-int/2addr v1, v7

    invoke-interface {v0, v1, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    move-result-object v1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1

    if-ne v9, v2, :cond_2

    :cond_1
    new-instance v9, Lvs0;

    invoke-direct {v9, v10, v6}, Lvs0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v15, v9

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_3

    if-ne v9, v2, :cond_4

    :cond_3
    new-instance v9, Lvs0;

    invoke-direct {v9, v10, v7}, Lvs0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_5

    if-ne v9, v2, :cond_6

    :cond_5
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$onCreateView$1$1$1$1$3$1;

    const-string v13, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v12, "onNavigateBackPressed"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v8

    :cond_6
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object v14, v9

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_7

    if-ne v9, v2, :cond_8

    :cond_7
    new-instance v9, Lws0;

    invoke-direct {v9, v10, v6}, Lws0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_9

    if-ne v8, v2, :cond_a

    :cond_9
    new-instance v8, Lws0;

    invoke-direct {v8, v10, v7}, Lws0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_b

    if-ne v7, v2, :cond_c

    :cond_b
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$onCreateView$1$1$1$1$6$1;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$onCreateView$1$1$1$1$6$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v17, v7

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_d

    if-ne v7, v2, :cond_e

    :cond_d
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$onCreateView$1$1$1$1$7$1;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment$onCreateView$1$1$1$1$7$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_f

    if-ne v7, v2, :cond_10

    :cond_f
    new-instance v7, Lvs0;

    invoke-direct {v7, v10, v5}, Lvs0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListFragment;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_10
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_11

    if-ne v6, v2, :cond_12

    :cond_11
    new-instance v6, Llk;

    const/4 v2, 0x5

    invoke-direct {v6, v4, v3, v2, v10}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_12
    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x0

    move-object/from16 v21, v0

    move-object v11, v1

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v16, v8

    move-object v15, v9

    invoke-static/range {v11 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_13
    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    move-object v10, v0

    check-cast v10, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v8, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->L:Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$Companion;

    and-int/lit8 v8, v1, 0x3

    if-eq v8, v5, :cond_14

    move v8, v7

    goto :goto_2

    :cond_14
    move v8, v6

    :goto_2
    and-int/2addr v1, v7

    invoke-interface {v0, v1, v8}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_27

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;->P()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object v1

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_15

    if-ne v9, v2, :cond_16

    :cond_15
    new-instance v9, Lns0;

    invoke-direct {v9, v10, v6}, Lns0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    move-object v15, v9

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_17

    if-ne v9, v2, :cond_18

    :cond_17
    new-instance v9, Lns0;

    invoke-direct {v9, v10, v7}, Lns0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_18
    move-object/from16 v16, v9

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_19

    if-ne v9, v2, :cond_1a

    :cond_19
    new-instance v8, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$3$1;

    const-string v13, "onNavigateBackPressed(Landroidx/fragment/app/Fragment;)V"

    const/4 v14, 0x1

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/extensions/FragmentExtKt;

    const-string v12, "onNavigateBackPressed"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v8

    :cond_1a
    check-cast v9, Lkotlin/reflect/KFunction;

    move-object v14, v9

    check-cast v14, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v8, :cond_1b

    if-ne v9, v2, :cond_1c

    :cond_1b
    new-instance v9, Los0;

    invoke-direct {v9, v10, v6}, Los0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1c
    check-cast v9, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_1d

    if-ne v8, v2, :cond_1e

    :cond_1d
    new-instance v8, Los0;

    invoke-direct {v8, v10, v7}, Los0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1e
    check-cast v8, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_1f

    if-ne v7, v2, :cond_20

    :cond_1f
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$6$1;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$6$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_20
    move-object/from16 v17, v7

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_21

    if-ne v7, v2, :cond_22

    :cond_21
    new-instance v7, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$7$1;

    invoke-direct {v7, v10}, Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment$onCreateView$1$1$1$1$7$1;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_22
    move-object/from16 v18, v7

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v6, :cond_23

    if-ne v7, v2, :cond_24

    :cond_23
    new-instance v7, Lns0;

    invoke-direct {v7, v10, v5}, Lns0;-><init>(Lcom/vuitton/android/presentation/screen/repairs/list/RepairListBffFragment;I)V

    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_24
    move-object/from16 v19, v7

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result v6

    or-int/2addr v5, v6

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_25

    if-ne v6, v2, :cond_26

    :cond_25
    new-instance v6, Llk;

    const/4 v2, 0x4

    invoke-direct {v6, v4, v3, v2, v10}, Llk;-><init>(FFILjava/lang/Object;)V

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_26
    move-object/from16 v20, v6

    check-cast v20, Lkotlin/jvm/functions/Function1;

    const/16 v22, 0x0

    move-object/from16 v21, v0

    move-object v11, v1

    move-object v12, v15

    move-object/from16 v13, v16

    move-object/from16 v16, v8

    move-object v15, v9

    invoke-static/range {v11 .. v22}, Lcom/vuitton/android/presentation/screen/repairs/list/components/RepairListBffComposableKt;->a(Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_27
    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
