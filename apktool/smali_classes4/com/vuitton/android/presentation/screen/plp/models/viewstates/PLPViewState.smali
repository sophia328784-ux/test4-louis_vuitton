.class public final Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u008f\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0014\u0008\u0002\u0010\u0008\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0008\u0002\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;",
        "",
        "",
        "pageTitle",
        "trackingPageName",
        "Lkotlinx/coroutines/flow/Flow;",
        "Landroidx/paging/PagingData;",
        "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
        "items",
        "",
        "isPlpV3GridViewEnabled",
        "isAiCompanionEnabled",
        "",
        "latestPage",
        "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;",
        "currentGridMode",
        "changeGridVocalizationEnabled",
        "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;",
        "currentFocusedProduct",
        "totalCount",
        "",
        "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;",
        "dispatchFilters",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;)V",
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

.field public final c:Lkotlinx/coroutines/flow/Flow;

.field public final d:Z

.field public final e:Z

.field public final f:I

.field public final g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

.field public final h:Z

.field public final i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

.field public final j:Ljava/lang/Integer;

.field public final k:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 78
    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/flow/Flow<",
            "Landroidx/paging/PagingData<",
            "Lcom/vuitton/android/presentation/screen/plp/models/plp/PlpSectionUiModel;",
            ">;>;ZZI",
            "Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    .line 70
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->d:Z

    .line 71
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->e:Z

    .line 72
    iput p6, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    .line 73
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    .line 74
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->h:Z

    .line 75
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    .line 76
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->j:Ljava/lang/Integer;

    .line 77
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    invoke-static {}, Lkotlinx/coroutines/flow/FlowKt;->o()Lkotlinx/coroutines/flow/Flow;

    move-result-object p3

    :cond_2
    and-int/lit8 p13, p12, 0x8

    const/4 v1, 0x0

    if-eqz p13, :cond_3

    move p4, v1

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move p5, v1

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    sget-object p7, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;->b:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes$Full;

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move p8, v1

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    move-object p9, v0

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move-object p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    sget-object p11, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_a
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;-><init>(Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/flow/Flow;ZZILcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;ZLcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;Ljava/lang/Integer;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->j:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->j:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->d:Z

    invoke-static {v3, v2, v1}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->e:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    invoke-static {v3, v1, v2}, Ltr;->b(III)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->h:Z

    invoke-static {v3, v2, v1}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->j:Ljava/lang/Integer;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", trackingPageName="

    const-string v1, ", items="

    const-string v2, "PLPViewState(pageTitle="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->c:Lkotlinx/coroutines/flow/Flow;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPlpV3GridViewEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAiCompanionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", latestPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentGridMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->g:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/GridModes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", changeGridVocalizationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentFocusedProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->i:Lcom/vuitton/android/presentation/screen/plp/models/FocusedProductUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dispatchFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->k:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
