.class public final Lcom/vuitton/android/data/dto/product/vto/TutorialDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/vto/TutorialDto$$serializer;,
        Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BQ\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eBg\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/product/vto/TutorialDto;",
        "",
        "",
        "sku",
        "productId",
        "title",
        "surtitle",
        "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
        "image",
        "introduction",
        "",
        "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;",
        "sectionList",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TutorialDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ll31;

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ll31;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v1, 0x6

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x4d

    const/4 v0, 0x0

    const/16 v1, 0x4d

    if-ne v1, p9, :cond_3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    :goto_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    :goto_1
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    goto :goto_2

    :cond_2
    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    :goto_2
    iput-object p8, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    return-void

    :cond_3
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/TutorialDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/vto/TutorialDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/common/AssetImageDto;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/product/vto/TutorialSectionDto;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    .line 62
    iput-object p6, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_2

    move-object p6, v0

    .line 64
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/common/AssetImageDto;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/common/AssetImageDto;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", productId="

    const-string v1, ", title="

    const-string v2, "TutorialDto(sku="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", surtitle="

    const-string v2, ", image="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->e:Lcom/vuitton/android/data/dto/common/AssetImageDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", introduction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sectionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/vto/TutorialDto;->g:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
