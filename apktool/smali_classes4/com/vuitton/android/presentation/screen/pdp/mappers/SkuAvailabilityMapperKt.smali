.class public abstract Lcom/vuitton/android/presentation/screen/pdp/mappers/SkuAvailabilityMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;ZZZ)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-boolean v5, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->c:Z

    iget-boolean v3, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->d:Z

    iget-boolean v13, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->b:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->e:Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;

    if-eqz p0, :cond_2

    const/4 v2, 0x0

    invoke-static {p0, v5, v3, v2}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;ZZZ)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-result-object v2

    goto :goto_1

    :cond_1
    if-eqz v13, :cond_2

    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->h:Ljava/lang/Integer;

    iget-object v9, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->i:Ljava/lang/Integer;

    iget-object v10, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->j:Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;

    iget-object v11, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->f:Ljava/lang/Integer;

    iget-object v12, p0, Lcom/vuitton/foundation/model/domain/model/product/availability/SkuAvailability;->g:Ljava/lang/Integer;

    const/4 v7, 0x0

    move/from16 v4, p3

    move v6, v3

    move/from16 v3, p2

    invoke-static/range {v3 .. v12}, Lcom/vuitton/android/presentation/screen/pdp/mappers/ProductDisclaimerMapperKt;->a(ZZZZLcom/vuitton/foundation/model/domain/model/product/ProductDisclaimer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/foundation/model/domain/model/product/availability/AvailabilityTimeFormat;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;

    move-result-object v2

    move v3, v6

    :cond_2
    :goto_1
    const/4 v6, 0x0

    move v4, v5

    move-object v5, v2

    move v2, v4

    move v4, v13

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuAvailabilityUiModel;-><init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/pdp/models/uimodels/ProductDisclaimerUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
