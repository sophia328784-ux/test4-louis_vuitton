.class public final Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;
.super Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoreModeSimpleDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$$serializer;,
        Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBC\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;",
        "Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;",
        "",
        "title",
        "description",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "image",
        "Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;",
        "link",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

.field public final d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->Companion:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0xf

    const/4 v0, 0x0

    const/16 v1, 0xf

    if-ne v1, p6, :cond_0

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$$serializer;->a:Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 30
    iput-object p1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    .line 33
    iput-object p4, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", description="

    const-string v1, ", image="

    const-string v2, "StoreModeSimpleDto(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->c:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/storemode/StoreModeDataDto$StoreModeSimpleDto;->d:Lcom/vuitton/android/data/dto/linktype/ContributionLinkLegacyDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
