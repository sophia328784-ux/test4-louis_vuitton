.class public abstract Lcom/vuitton/android/presentation/screen/personalselections/detail/models/mappers/PersonalSelectionsDetailUiModelMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/personalselections/detail/models/mappers/PersonalSelectionsDetailUiModelMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;)Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;

    sget-object v1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    move-object v2, v1

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProduct;->d:Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;

    if-eqz p0, :cond_0

    new-instance v4, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;

    iget-boolean v5, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;->a:Z

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionProductInteraction;->b:Ljava/lang/String;

    invoke-direct {v4, v5, p0}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;-><init>(ZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionProductInteractionUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/personalselections/SelectionType;)Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/mappers/PersonalSelectionsDetailUiModelMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;->ADVISOR_CURATION:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionTypeUiModel;

    return-object p0
.end method
