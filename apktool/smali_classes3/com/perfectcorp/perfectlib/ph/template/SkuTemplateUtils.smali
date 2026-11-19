.class public abstract Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;
    .locals 6

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->values()[Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static b(Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;)Z
    .locals 3

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/template/q;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->isAccessory()Z

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method public static c(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;
    .locals 6

    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ph/template/SkuTemplateUtils;->a(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object p0

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->UNDEFINED:Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    invoke-static {}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->values()[Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->getFeatureType()Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    move-result-object v5

    if-ne v5, p0, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
