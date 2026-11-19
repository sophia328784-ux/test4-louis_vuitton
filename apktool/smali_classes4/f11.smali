.class public final synthetic Lf11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

.field public final synthetic c:Landroidx/compose/ui/Modifier;

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

.field public final synthetic e:F

.field public final synthetic f:Z

.field public final synthetic g:Lkotlin/jvm/functions/Function2;

.field public final synthetic h:Lkotlin/jvm/functions/Function2;

.field public final synthetic i:Lkotlin/jvm/functions/Function2;

.field public final synthetic j:F

.field public final synthetic k:F


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf11;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iput-object p2, p0, Lf11;->c:Landroidx/compose/ui/Modifier;

    iput-object p3, p0, Lf11;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    iput p4, p0, Lf11;->e:F

    iput-boolean p5, p0, Lf11;->f:Z

    iput-object p6, p0, Lf11;->g:Lkotlin/jvm/functions/Function2;

    iput-object p7, p0, Lf11;->h:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lf11;->i:Lkotlin/jvm/functions/Function2;

    iput p9, p0, Lf11;->j:F

    iput p10, p0, Lf11;->k:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lf11;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;->c:Ljava/util/List;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    new-instance v0, Ll01;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Ll01;-><init>(I)V

    new-instance v2, Lni0;

    const/16 v4, 0x1a

    iget-object v5, p0, Lf11;->c:Landroidx/compose/ui/Modifier;

    iget-object v9, p0, Lf11;->d:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    invoke-direct {v2, v5, v9, v4}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x4bbd5e52    # 2.48209E7f

    const/4 v10, 0x1

    invoke-direct {v4, v5, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v11, 0x0

    const/4 v12, 0x5

    invoke-static {p1, v11, v0, v4, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->c(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-instance v13, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v13, v3}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;

    iget v4, p0, Lf11;->e:F

    iget-boolean v5, p0, Lf11;->f:Z

    iget-object v6, p0, Lf11;->g:Lkotlin/jvm/functions/Function2;

    iget-object v7, p0, Lf11;->h:Lkotlin/jvm/functions/Function2;

    iget-object v8, p0, Lf11;->i:Lkotlin/jvm/functions/Function2;

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/StaggeredGridViewKt$StaggeredGridView_xYaah8o$lambda$2$0$$inlined$itemsIndexed$default$4;-><init>(Ljava/util/List;FZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;)V

    new-instance v4, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, -0x73c450aa

    invoke-direct {v4, v5, v10, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {p1, v0, v13, v4}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->d(ILkotlin/jvm/functions/Function1;Landroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x7

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ComposableSingletons$StaggeredGridViewKt;->a:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ComposableSingletons$StaggeredGridViewKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ComposableSingletons$StaggeredGridViewKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1, v11, v11, v0, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->c(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    :cond_0
    new-instance v6, Ll01;

    invoke-direct {v6, v2}, Ll01;-><init>(I)V

    new-instance v0, Lor0;

    const/4 v5, 0x1

    iget v3, p0, Lf11;->j:F

    iget v4, p0, Lf11;->k:F

    move-object v2, v9

    invoke-direct/range {v0 .. v5}, Lor0;-><init>(Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/CurrentThemeUiModel;Ljava/lang/Object;FFI)V

    new-instance p0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v1, -0x2e4305b7

    invoke-direct {p0, v1, v10, v0}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {p1, v11, v6, p0, v12}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->c(Landroidx/compose/foundation/lazy/grid/LazyGridScope;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
