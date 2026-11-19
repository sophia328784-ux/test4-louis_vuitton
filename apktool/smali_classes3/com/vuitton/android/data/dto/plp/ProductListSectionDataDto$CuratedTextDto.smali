.class public final Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;
.super Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CuratedTextDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;,
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;,
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0003\u0010\u0011\u000fB#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB9\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;",
        "title",
        "",
        "description",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "image",
        "<init>",
        "(Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "LabelDto",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;


# instance fields
.field public final b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/common/AssetImageDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 3

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    invoke-direct {p0, p1, p5}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iput-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    return-void

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v2, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v1
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 34
    iput-object p1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    .line 35
    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 37
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;-><init>(Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CuratedTextDto(title="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->b:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto$LabelDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$CuratedTextDto;->d:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
