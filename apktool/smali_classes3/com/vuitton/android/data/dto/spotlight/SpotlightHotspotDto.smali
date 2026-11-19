.class public final Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;,
        Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00112\u00020\u0001:\u0002\u0012\u0011B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bBC\u0008\u0010\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0004\u0008\n\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;",
        "",
        "",
        "id",
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;",
        "position",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;",
        "content",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->Companion:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-ne v0, p6, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;->a:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    .line 32
    iput-object p3, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 33
    iput-object p4, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpotlightHotspotDto(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->b:Lcom/vuitton/android/data/dto/spotlight/SpotlightPositionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotDto;->d:Lcom/vuitton/android/data/dto/spotlight/SpotlightHotspotContentDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
