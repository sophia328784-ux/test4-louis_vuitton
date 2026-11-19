.class public final synthetic Loy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Lkotlin/Function;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;Ljava/lang/String;ZLjava/lang/String;ILkotlin/jvm/functions/Function0;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Loy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy;->e:Ljava/lang/Object;

    iput-object p2, p0, Loy;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Loy;->c:Z

    iput-object p4, p0, Loy;->g:Ljava/lang/Object;

    iput p5, p0, Loy;->d:I

    iput-object p6, p0, Loy;->h:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;ILcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;Landroid/content/Context;ZLkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Loy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy;->e:Ljava/lang/Object;

    iput p2, p0, Loy;->d:I

    iput-object p3, p0, Loy;->f:Ljava/lang/Object;

    iput-object p4, p0, Loy;->g:Ljava/lang/Object;

    iput-boolean p5, p0, Loy;->c:Z

    iput-object p6, p0, Loy;->h:Lkotlin/Function;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)V
    .locals 1

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Loy;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loy;->e:Ljava/lang/Object;

    iput-boolean p2, p0, Loy;->c:Z

    iput-object p3, p0, Loy;->f:Ljava/lang/Object;

    iput-object p4, p0, Loy;->g:Ljava/lang/Object;

    iput-object p5, p0, Loy;->h:Lkotlin/Function;

    iput p6, p0, Loy;->d:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Loy;->b:I

    iget v2, v0, Loy;->d:I

    iget-boolean v3, v0, Loy;->c:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Loy;->h:Lkotlin/Function;

    iget-object v8, v0, Loy;->g:Ljava/lang/Object;

    iget-object v9, v0, Loy;->f:Ljava/lang/Object;

    iget-object v10, v0, Loy;->e:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    check-cast v9, Ljava/lang/String;

    check-cast v8, Ljava/lang/String;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    if-eqz v3, :cond_0

    invoke-static {v0, v8}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lee0;

    const/16 v3, 0x13

    invoke-direct {v1, v7, v3}, Lee0;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v0, v5, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v1, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :goto_0
    new-instance v1, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v1, v6, v6, v2, v6}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_0
    check-cast v10, Ljava/util/List;

    move-object v14, v9

    check-cast v14, Ljava/lang/String;

    move-object v15, v8

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v7

    check-cast v16, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v10, Ljava/lang/Iterable;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v7, v6, 0x1

    if-ltz v6, :cond_1

    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;

    iget-object v3, v12, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v11, Ld10;

    iget-boolean v13, v0, Loy;->c:Z

    iget v8, v0, Loy;->d:I

    move/from16 v17, v6

    move/from16 v18, v8

    invoke-direct/range {v11 .. v18}, Ld10;-><init>(Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/VariationUiModel;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;II)V

    new-instance v6, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v8, 0x43790420

    invoke-direct {v6, v8, v4, v11}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v8, 0x6

    invoke-static {v1, v3, v5, v6, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->c(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    move v6, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v5

    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    check-cast v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;

    check-cast v8, Landroid/content/Context;

    check-cast v7, Lkotlin/jvm/functions/Function0;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    new-instance v1, Landroidx/compose/ui/semantics/CollectionItemInfo;

    invoke-direct {v1, v2, v6, v6, v6}, Landroidx/compose/ui/semantics/CollectionItemInfo;-><init>(IIII)V

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->g(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Landroidx/compose/ui/semantics/CollectionItemInfo;)V

    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    if-eqz v9, :cond_3

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v2, v5

    :goto_2
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f140367

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->r(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sget-object v2, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v9, :cond_5

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFiltersCategoryUiModel;->a:Ljava/lang/String;

    goto :goto_4

    :cond_5
    move-object v2, v5

    :goto_4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v6, v4

    :cond_6
    invoke-static {v0, v6}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->k(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    new-instance v1, Lpy;

    invoke-direct {v1, v7, v4}, Lpy;-><init>(Lkotlin/jvm/functions/Function0;I)V

    invoke-static {v0, v5, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->e(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
