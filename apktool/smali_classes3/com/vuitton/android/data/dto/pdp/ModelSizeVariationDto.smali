.class public final Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;,
        Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fB]\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\t\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "skuId",
        "Lcom/vuitton/foundation/model/domain/model/product/ProductId;",
        "productId",
        "",
        "name",
        "mediaUrl",
        "",
        "Lcom/vuitton/android/data/dto/pdp/WearingDto;",
        "wearings",
        "Lcom/vuitton/android/data/dto/pdp/DimensionsDto;",
        "dimensions",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "Companion",
        "$serializer",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ldd0;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ldd0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v0, v2, v3

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x35

    const/4 p9, 0x0

    const/16 v0, 0x35

    if-ne v0, p8, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object p9, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    iput-object p9, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    :goto_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;->a:Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p9
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_1

    move-object p4, v0

    :cond_1
    const/4 p7, 0x0

    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/DimensionsDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 47
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    .line 54
    iput-object p6, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/DimensionsDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/ProductId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/ProductId$Companion;

    :goto_0
    const-string v1, ", productId="

    const-string v2, ", name="

    const-string v3, "ModelSizeVariationDto(skuId="

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->a:Ljava/lang/String;

    invoke-static {v3, v4, v1, v0, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaUrl="

    const-string v2, ", wearings="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dimensions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ModelSizeVariationDto;->f:Lcom/vuitton/android/data/dto/pdp/DimensionsDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
