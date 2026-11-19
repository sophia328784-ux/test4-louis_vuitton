.class public final synthetic Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Landroidx/paging/compose/LazyPagingItems;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/paging/compose/LazyPagingItems;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;->c:Landroidx/paging/compose/LazyPagingItems;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel;

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;

    iget p1, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$BrandContentLine;->a:I

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/a;->c:Landroidx/paging/compose/LazyPagingItems;

    invoke-virtual {p0}, Landroidx/paging/compose/LazyPagingItems;->c()Landroidx/paging/ItemSnapshotList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/paging/ItemSnapshotList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;

    instance-of p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel$ProductSlider;

    if-eqz p0, :cond_0

    const-string p0, "productSlider"

    return-object p0

    :cond_0
    const-string p0, "brandContent"

    return-object p0

    :cond_1
    instance-of p0, p1, Lcom/vuitton/android/presentation/screen/plp/components/subcomponents/GridLineComposeModel$ProductLine;

    if-eqz p0, :cond_2

    const-string p0, "productLine"

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
