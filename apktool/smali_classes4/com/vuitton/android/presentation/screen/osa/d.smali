.class public final synthetic Lcom/vuitton/android/presentation/screen/osa/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

.field public final synthetic d:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:Lkotlin/jvm/functions/Function0;

.field public final synthetic k:Lkotlin/jvm/functions/Function0;

.field public final synthetic l:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/d;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/d;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/d;->d:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/d;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/d;->f:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/d;->g:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/osa/d;->h:Lkotlin/jvm/functions/Function0;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/osa/d;->i:Lkotlin/jvm/functions/Function2;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/osa/d;->j:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/osa/d;->k:Lkotlin/jvm/functions/Function0;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/osa/d;->l:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/osa/OsaRoutes$ContactForm;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v1, v3, 0x11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x10

    if-eq v1, v6, :cond_0

    move v1, v5

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v3, v5

    invoke-interface {v2, v3, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/d;->b:Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v14, v0, Lcom/vuitton/android/presentation/screen/osa/d;->c:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;

    invoke-interface {v2, v14}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v7, :cond_1

    if-ne v8, v10, :cond_2

    :cond_1
    new-instance v8, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$3$1$1;

    const/4 v7, 0x0

    invoke-direct {v8, v14, v7}, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$3$1$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-static {v2, v3, v8}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/osa/d;->d:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    iget-object v15, v0, Lcom/vuitton/android/presentation/screen/osa/d;->e:Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v15}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v7, v8

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_3

    if-ne v8, v10, :cond_4

    :cond_3
    new-instance v8, Ly0;

    invoke-direct {v8, v1, v15, v6}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v2, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v6, v8

    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/d;->f:Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/d;->g:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v8, v12

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v12

    if-nez v8, :cond_5

    if-ne v12, v10, :cond_6

    :cond_5
    new-instance v12, Lxj0;

    invoke-direct {v12, v7, v11, v4}, Lxj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;Lkotlin/jvm/functions/Function1;I)V

    invoke-interface {v2, v12}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    move-object v4, v12

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_7

    if-ne v11, v10, :cond_8

    :cond_7
    new-instance v11, Lwj0;

    invoke-direct {v11, v7, v5}, Lwj0;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/storeselection/OsaLocationFormViewModel;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v5, v11

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_9

    if-ne v11, v10, :cond_a

    :cond_9
    new-instance v11, Lx0;

    const/16 v8, 0xc

    invoke-direct {v11, v1, v8}, Lx0;-><init>(Landroidx/navigation3/runtime/NavBackStack;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v16, v11

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_b

    if-ne v11, v10, :cond_c

    :cond_b
    new-instance v11, Lof0;

    const/16 v8, 0x11

    invoke-direct {v11, v9, v7, v1, v8}, Lof0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v2, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_c
    move-object v1, v11

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v2, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v7

    invoke-interface {v2}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v7, :cond_d

    if-ne v8, v10, :cond_e

    :cond_d
    new-instance v7, Lcom/vuitton/android/presentation/screen/osa/OsaNavDisplayKt$OsaNavDisplay$2$3$7$1;

    const-string v12, "onReasonSelected(Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/osa/reasons/OsaReasonsFormViewModel;

    const-string v11, "onReasonSelected"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v2, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_e
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    const/16 v17, 0x0

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/osa/d;->h:Lkotlin/jvm/functions/Function0;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/d;->i:Lkotlin/jvm/functions/Function2;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/d;->j:Lkotlin/jvm/functions/Function0;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/d;->k:Lkotlin/jvm/functions/Function0;

    iget-object v13, v0, Lcom/vuitton/android/presentation/screen/osa/d;->l:Lkotlin/jvm/functions/Function0;

    move-object v9, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v9

    move-object v9, v15

    move-object v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v2

    move-object v2, v14

    move-object v14, v1

    invoke-static/range {v2 .. v17}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormComposableKt;->a(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonsFormViewState;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_f
    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
