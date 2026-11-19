.class public final Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;
.super Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$$serializer;,
        Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB/\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nBC\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\t\u0010\u000e\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;",
        "",
        "id",
        "",
        "key",
        "type",
        "Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;",
        "data",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "$serializer"
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
.field public static final Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;


# instance fields
.field public final a:Ljava/lang/Integer;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->Companion:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0x6

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne v1, p6, :cond_2

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit8 p6, p1, 0x1

    if-nez p6, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    :goto_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    return-void

    :cond_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$$serializer;->a:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleSectionsDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 47
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

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

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImmersiveArticleProductsSectionDto(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsSectionDto;->d:Lcom/vuitton/android/data/dto/immersivearticle/ImmersiveArticleProductsDataDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
