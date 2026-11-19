.class public abstract Lcom/vuitton/android/presentation/screen/catalog/mappers/PLPEntryMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;)Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/catalog/PLPEntry;->d:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/vuitton/android/presentation/screen/catalog/models/PLPEntryUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V

    return-object v0
.end method
