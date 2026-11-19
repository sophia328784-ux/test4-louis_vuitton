.class public final Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;
.super Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushCardSectionDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBM\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;",
        "Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;",
        "",
        "title",
        "description",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;",
        "link",
        "Lcom/vuitton/android/data/dto/common/IconDto;",
        "icon",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "image",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

.field public final e:Lcom/vuitton/android/data/dto/common/IconDto;

.field public final f:Lcom/vuitton/android/data/dto/common/AssetImageDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->Companion:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lew;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Lew;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    new-array v2, v3, [Lkotlin/Lazy;

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

    sput-object v2, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x1f

    const/16 v1, 0x1f

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p7}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;Lcom/vuitton/android/data/dto/common/IconDto;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    iput-object p1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    .line 35
    iput-object p4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    .line 36
    iput-object p5, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", description="

    const-string v1, ", link="

    const-string v2, "PushCardSectionDto(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->e:Lcom/vuitton/android/data/dto/common/IconDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/common/editorial/EditorialModuleDto$PushCardSectionDto;->f:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
