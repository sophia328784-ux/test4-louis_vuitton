.class public final synthetic Lcom/vuitton/android/presentation/screen/imageviewer/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->b:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->t:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$Companion;

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    and-int/2addr v1, v5

    invoke-interface {v7, v1, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->b:Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerViewModel;->c8()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v1

    invoke-static {v1, v7}, Landroidx/compose/runtime/SnapshotStateKt;->b(Lkotlinx/coroutines/flow/StateFlow;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/MutableState;

    move-result-object v1

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->q:Lkotlin/Lazy;

    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->p:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;->r:Lkotlin/Lazy;

    invoke-interface {v6}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->c:Ljava/lang/String;

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/imageviewer/a;->d:Ljava/lang/String;

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v8, :cond_1

    if-ne v11, v12, :cond_2

    :cond_1
    new-instance v11, Lp20;

    invoke-direct {v11, v10, v9, v0, v4}, Lp20;-><init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v11

    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v8

    invoke-interface {v7, v9}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v11

    or-int/2addr v8, v11

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v11

    if-nez v8, :cond_3

    if-ne v11, v12, :cond_4

    :cond_3
    new-instance v11, Lp20;

    invoke-direct {v11, v10, v9, v0, v5}, Lp20;-><init>(Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v11}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    move-object v5, v11

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v7, v10}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez v0, :cond_5

    if-ne v8, v12, :cond_6

    :cond_5
    new-instance v8, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity$onCreate$1$1$3$1;

    const-string v13, "finish()V"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/vuitton/android/presentation/screen/imageviewer/ImageViewerActivity;

    const-string v12, "finish"

    invoke-direct/range {v8 .. v14}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v8, Lkotlin/reflect/KFunction;

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move v0, v2

    move-object v2, v6

    move-object v6, v8

    const/4 v8, 0x0

    move-object v15, v3

    move v3, v1

    move-object v1, v15

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/imageviewer/components/ImageViewerComposableKt;->a(ILjava/util/ArrayList;Lcom/vuitton/foundation/model/domain/model/product/universal/ProductBackground;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v7}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
