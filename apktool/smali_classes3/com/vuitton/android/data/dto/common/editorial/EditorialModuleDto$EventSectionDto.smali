.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;
.super Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventSectionDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00152\u00020\u0001:\u0002\u0016\u0015BC\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBW\u0008\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0004\u0008\u000e\u0010\u0014\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;",
        "titles",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;",
        "link",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;",
        "ratio",
        "",
        "deadline",
        "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
        "targeting",
        "<init>",
        "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

.field public final c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

.field public final d:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lrt;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lrt;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x1c

    const/4 v1, 0x0

    const/16 v2, 0x1c

    if-ne v2, v0, :cond_3

    invoke-direct {p0, p1, p8}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p8, p1, 0x1

    if-nez p8, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    :goto_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_2

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_2
    iput-object p7, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    .line 56
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    .line 57
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 58
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    .line 59
    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move-object p6, v0

    .line 61
    :cond_2
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;-><init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventSectionDto(titles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->c:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->e:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$EventSectionDto;->g:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
