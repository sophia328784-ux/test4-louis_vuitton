.class public final synthetic Lcom/vuitton/android/presentation/screen/osa/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic e:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/c;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/c;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/c;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/c;->e:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/c;->f:Lkotlin/jvm/functions/Function0;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/c;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/osa/c;->h:Lkotlinx/coroutines/CoroutineScope;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/osa/c;->i:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$LocationForm;

    move-object/from16 v11, p2

    check-cast v11, Landroidx/compose/runtime/Composer;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v3, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v2, v5

    invoke-interface {v11, v2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/osa/c;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-interface {v13}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v11}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v14

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/osa/c;->c:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v6, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v6, :cond_2

    :cond_1
    new-instance v15, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$2$1$1;

    const-string v20, "onReasonSelected(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V"

    const/16 v21, 0x0

    const/16 v16, 0x1

    const-class v18, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    const-string v19, "onReasonSelected"

    move-object/from16 v17, v3

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v15

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/osa/c;->d:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v1, v7

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/c;->e:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/osa/c;->f:Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v1, v9

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v9

    if-nez v1, :cond_3

    if-ne v9, v6, :cond_4

    :cond_3
    move-object/from16 v17, v15

    goto :goto_1

    :cond_4
    move-object v1, v15

    goto :goto_2

    :goto_1
    new-instance v15, Lr0;

    const/16 v20, 0x12

    move-object/from16 v16, v3

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v20}, Lr0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    move-object/from16 v1, v17

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v9, v15

    :goto_2
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_5

    if-ne v12, v6, :cond_6

    :cond_5
    new-instance v12, Lvj0;

    invoke-direct {v12, v3, v1, v4}, Lvj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v4, v12

    check-cast v4, Lkotlin/jvm/functions/Function0;

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v10, :cond_7

    if-ne v12, v6, :cond_8

    :cond_7
    new-instance v12, Lvj0;

    invoke-direct {v12, v3, v1, v5}, Lvj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;I)V

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v5, v12

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v10, v12

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/c;->h:Lkotlinx/coroutines/CoroutineScope;

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v15

    or-int/2addr v10, v15

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v15

    if-nez v10, :cond_9

    if-ne v15, v6, :cond_a

    :cond_9
    move-object/from16 v17, v12

    goto :goto_3

    :cond_a
    move-object/from16 v17, v1

    goto :goto_4

    :goto_3
    new-instance v12, Lcom/vuitton/android/presentation/screen/osa/a;

    move-object v15, v1

    move-object/from16 v16, v7

    move-object/from16 v18, v8

    invoke-direct/range {v12 .. v18}, Lcom/vuitton/android/presentation/screen/osa/a;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Landroidx/compose/runtime/MutableState;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlinx/coroutines/CoroutineScope;Lkotlin/jvm/functions/Function0;)V

    move-object/from16 v17, v15

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v15, v12

    :goto_4
    check-cast v15, Lkotlin/jvm/functions/Function1;

    const/4 v12, 0x0

    move-object v8, v5

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/c;->g:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/c;->i:Lkotlin/jvm/functions/Function1;

    move-object v7, v2

    move-object v6, v4

    move-object v4, v9

    move-object v9, v15

    move-object/from16 v2, v17

    invoke-static/range {v2 .. v12}, Lcom/vuitton/android/presentation/screen/osa/form/storeselection/components/OsaLocationFormComposableKt;->a(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_5

    :cond_b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->D()V

    :goto_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
