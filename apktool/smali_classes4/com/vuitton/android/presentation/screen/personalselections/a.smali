.class public final synthetic Lcom/vuitton/android/presentation/screen/personalselections/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

.field public final synthetic e:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/personalselections/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/personalselections/a;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/personalselections/a;->d:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/personalselections/a;->e:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;->s:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    and-int/2addr v1, v4

    invoke-interface {v12, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/personalselections/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/personalselections/a;->c:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    if-eqz v2, :cond_3

    sget-object v6, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$WhenMappings;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v6, v2

    if-eq v2, v4, :cond_2

    if-ne v2, v5, :cond_1

    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$AdvisorCurationDetail;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    new-instance v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$InStoreDetail;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;->INSTANCE:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute$List;

    :goto_1
    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/personalselections/a;->d:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_4

    if-ne v6, v7, :cond_5

    :cond_4
    new-instance v13, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$1$1;

    const-string v18, "finish()V"

    const/16 v19, 0x0

    const/4 v14, 0x0

    const-class v16, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;

    const-string v17, "finish"

    invoke-direct/range {v13 .. v19}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v6, v13

    :cond_5
    check-cast v6, Lkotlin/reflect/KFunction;

    move-object v1, v6

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_6

    if-ne v8, v7, :cond_7

    :cond_6
    new-instance v8, Lxe0;

    const/16 v6, 0x8

    invoke-direct {v8, v15, v6}, Lxe0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    check-cast v8, Lkotlin/jvm/functions/Function3;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_8

    if-ne v9, v7, :cond_9

    :cond_8
    new-instance v9, Lx60;

    const/16 v6, 0x1c

    invoke-direct {v9, v15, v6}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_9
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v10

    if-nez v6, :cond_a

    if-ne v10, v7, :cond_b

    :cond_a
    new-instance v10, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$4$1;

    invoke-direct {v10, v15}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$4$1;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;)V

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_b
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v6

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v6, :cond_c

    if-ne v11, v7, :cond_d

    :cond_c
    new-instance v11, Lnn0;

    invoke-direct {v11, v15, v3}, Lnn0;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_d
    move-object v6, v11

    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v3, :cond_e

    if-ne v11, v7, :cond_f

    :cond_e
    new-instance v11, Lnn0;

    invoke-direct {v11, v15, v4}, Lnn0;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    invoke-interface {v12, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_f
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_10

    if-ne v4, v7, :cond_11

    :cond_10
    new-instance v4, Lnn0;

    invoke-direct {v4, v15, v5}, Lnn0;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_11
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_12

    if-ne v5, v7, :cond_13

    :cond_12
    new-instance v5, Lnn0;

    const/4 v3, 0x3

    invoke-direct {v5, v15, v3}, Lnn0;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_13
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v13

    if-nez v3, :cond_14

    if-ne v13, v7, :cond_15

    :cond_14
    new-instance v13, Lnn0;

    const/4 v3, 0x4

    invoke-direct {v13, v15, v3}, Lnn0;-><init>(Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity;I)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_15
    check-cast v13, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v7, :cond_16

    sget-object v3, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$10$1;->b:Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsActivity$onCreate$1$1$1$10$1;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_16
    check-cast v3, Lkotlin/jvm/functions/Function1;

    move-object v7, v11

    move-object v11, v3

    move-object v3, v8

    move-object v8, v4

    move-object v4, v9

    move-object v9, v5

    move-object v5, v10

    move-object v10, v13

    const/4 v13, 0x0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/a;->e:Landroidx/navigation/NavHostController;

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsNavHostKt;->a(Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/personalselections/PersonalSelectionsRoute;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_17
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
