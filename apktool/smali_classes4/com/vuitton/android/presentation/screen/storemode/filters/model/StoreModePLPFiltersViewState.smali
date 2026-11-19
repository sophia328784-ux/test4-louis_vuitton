.class public final Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;",
        "",
        "",
        "initialFilterKey",
        "currentFilterKey",
        "sortId",
        "",
        "showFilters",
        "hasActiveFilters",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;",
        "productListOptions",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 43
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->a:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    .line 40
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    .line 41
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    .line 42
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    const/4 v1, 0x0

    if-eqz p8, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move-object p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", currentFilterKey="

    const-string v1, ", sortId="

    const-string v2, "StoreModePLPFiltersViewState(initialFilterKey="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", showFilters="

    const-string v2, ", hasActiveFilters="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->c:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->d:Z

    invoke-static {v3, v1, v2, v0, v4}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", productListOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/filters/model/StoreModePLPFiltersViewState;->f:Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductListOptionUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
