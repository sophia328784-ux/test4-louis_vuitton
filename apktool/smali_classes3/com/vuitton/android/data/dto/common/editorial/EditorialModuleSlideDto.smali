.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rBM\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;",
        "",
        "",
        "id",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;",
        "titles",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;",
        "link",
        "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
        "targeting",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

.field public final e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p1, 0xd

    const/4 v0, 0x0

    const/16 v1, 0xd

    if-ne v1, p7, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    .line 48
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 49
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    .line 50
    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x2

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1

    move-object p5, v0

    .line 51
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;-><init>(Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EditorialModuleSlideDto(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->c:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideDto;->e:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
