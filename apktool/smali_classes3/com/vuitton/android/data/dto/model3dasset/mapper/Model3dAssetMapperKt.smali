.class public abstract Lcom/vuitton/android/data/dto/model3dasset/mapper/Model3dAssetMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/model3dasset/mapper/Model3dAssetMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;)Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;->a:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetTypeDto;

    sget-object v2, Lcom/vuitton/android/data/dto/model3dasset/mapper/Model3dAssetMapperKt$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v5, 0x3

    if-ne v1, v5, :cond_0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;->ASSET_IOS_3D:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_1
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;->ASSET_ANDROID_3D:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;->IMAGE:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;

    :goto_0
    iget-object v5, p0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetDto;->c:Lcom/vuitton/android/data/dto/model3dasset/Model3dAssetNameDto;

    sget-object v6, Lcom/vuitton/android/data/dto/model3dasset/mapper/Model3dAssetMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v6, p0

    if-eq p0, v4, :cond_4

    if-ne p0, v3, :cond_3

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;->BACKGROUND_3D:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;

    goto :goto_1

    :cond_3
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_4
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;->LD_R:Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;

    :goto_1
    invoke-direct {v0, v1, v5, p0}, Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAsset;-><init>(Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/immersivearticle/Model3dAssetName;)V

    return-object v0
.end method
