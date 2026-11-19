.class public abstract Lcom/perfectcorp/perfectlib/hc/database/Contract;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/hc/database/Contract$TutorialInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$BackgroundInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ConditionalInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCare3ProductRelation;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCare3Product;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCareProductRelation;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkinCareProduct;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGuid;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTag;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$GenericTagGroup;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$HairCareProduct;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$DownloadImage;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskDetail;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ProductMaskList;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListWearingStyle;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetListSupportedPattern;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetWearingStyle;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuSetSupportedPattern;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$IdUsage;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$CacheStrategyForCacheFirstThenUpdate;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ReferenceElementInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$IdSystemInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItem;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$Sku;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuItemOnly;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$SkuOnly;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$MakeupItemCache;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$PaletteShapeInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ShapeInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternPaletteInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$PatternInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$PaletteTextureInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$TextureInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$EffectInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$LookInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$ColorInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$MaskInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$PaletteInfo;,
        Lcom/perfectcorp/perfectlib/hc/database/Contract$DatabaseTable;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Lcom/perfectcorp/perfectlib/hc/database/Contract;->a:Ljava/util/List;

    return-void
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "("

    invoke-static {p0, v0}, Ln00;->u(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;

    const-string v1, ","

    invoke-direct {v0, v1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/com/google/common/base/Joiner;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CREATE INDEX IF NOT EXISTS \'indexing_"

    const-string v0, "\' ON "

    invoke-static {p1, p0, v0, p0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "_"

    const-string v1, "\' ON "

    const-string v2, "CREATE INDEX IF NOT EXISTS \'"

    invoke-static {v2, p0, v0, p1, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "("

    const-string v1, ")"

    invoke-static {p0, p1, v0, p2, v1}, Ltr;->l(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
