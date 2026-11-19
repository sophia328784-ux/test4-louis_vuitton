.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;
.super Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarouselLargeSingleSectionDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B5\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBI\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;",
        "titles",
        "",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;",
        "slides",
        "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
        "targeting",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;",
        "link",
        "<init>",
        "(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;

.field public static final f:[Lkotlin/Lazy;


# instance fields
.field public final b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

.field public final c:Ljava/util/List;

.field public final d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

.field public final e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lrt;

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Lrt;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->f:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0xa

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v2, v0, :cond_2

    invoke-direct {p0, p1, p6}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    and-int/lit8 p6, p1, 0x1

    if-nez p6, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    :goto_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_1

    iput-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    :goto_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleSlideSingleDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;",
            "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 44
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    .line 45
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    .line 46
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    .line 47
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    move-object p3, v0

    .line 48
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;-><init>(Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;Ljava/util/List;Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v3, Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    mul-int/2addr v1, v2

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CarouselLargeSingleSectionDto(titles="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->b:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleTitlesDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", slides="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targeting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->d:Lcom/vuitton/android/data/dto/common/editorial/TargetingDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$CarouselLargeSingleSectionDto;->e:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
