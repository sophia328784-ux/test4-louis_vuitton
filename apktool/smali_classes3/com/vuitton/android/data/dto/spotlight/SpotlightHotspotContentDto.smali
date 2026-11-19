.class public final Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$$serializer;,
        Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u001f\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "productSku",
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;",
        "detail",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    const/4 p5, 0x0

    if-nez p4, :cond_0

    iput-object p5, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    iput-object p5, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    return-void

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 26
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SpotlightHotspotContentDto(productSku="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", detail="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDetailDto;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
