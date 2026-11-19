.class public final Lcom/perfectcorp/perfectlib/ProductId;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/EffectId;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/EffectId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    return-void
.end method


# virtual methods
.method public final getNailPosition()Lcom/perfectcorp/perfectlib/NailPosition;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getNailPosition()Lcom/perfectcorp/perfectlib/NailPosition;

    move-result-object p0

    return-object p0
.end method

.method public final getPaletteGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getPaletteGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getPatternGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getPatternGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getProductGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getProductGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSkuGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getSkuGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSkuSetGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getSkuSetGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getType()Lcom/perfectcorp/perfectlib/PerfectEffect;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getType()Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object p0

    return-object p0
.end method

.method public final getWearingStyleGuid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ProductId;->a:Lcom/perfectcorp/perfectlib/EffectId;

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/EffectId;->getWearingStyleGuid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;

    const-string v1, "ProductId"

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getType()Lcom/perfectcorp/perfectlib/PerfectEffect;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuSetGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getSkuSetGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "productGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getProductGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "skuGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getSkuGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "paletteGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getPaletteGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "patternGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getPatternGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "wearingStyleGuid"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getWearingStyleGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "nailPosition"

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ProductId;->getNailPosition()Lcom/perfectcorp/perfectlib/NailPosition;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/com/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
