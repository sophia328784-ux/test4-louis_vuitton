.class public final Lcom/vuitton/android/data/dto/catalog/CategoryDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/catalog/CategoryDto$$serializer;,
        Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eBW\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/catalog/CategoryDto;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;",
        "tag",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;",
        "carousel",
        "Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;",
        "redirection",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

.field public final e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

.field public final f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->Companion:Lcom/vuitton/android/data/dto/catalog/CategoryDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0x27

    const/4 v0, 0x0

    const/16 v1, 0x27

    if-ne v1, p8, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    :goto_0
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    :goto_1
    iput-object p7, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/catalog/CategoryDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/catalog/CategoryDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 51
    iput-object p4, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    .line 52
    iput-object p5, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    .line 53
    iput-object p6, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_1

    move-object p5, v0

    .line 54
    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/data/dto/catalog/CategoryDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    iget-object v3, v3, Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", asset="

    const-string v2, "CategoryDto(id="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->d:Lcom/vuitton/android/data/dto/catalog/CategoryTagDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", carousel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->e:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselMediumSectionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", redirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/catalog/CategoryDto;->f:Lcom/vuitton/android/data/dto/catalog/CategoryRedirectionDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
