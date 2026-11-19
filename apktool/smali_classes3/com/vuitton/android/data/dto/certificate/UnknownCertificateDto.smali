.class public final Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;
.super Lcom/vuitton/android/data/dto/certificate/CertificateDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$$serializer;,
        Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BW\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000eBa\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;",
        "Lcom/vuitton/android/data/dto/certificate/CertificateDto;",
        "",
        "identifier",
        "type",
        "Lcom/vuitton/android/data/dto/certificate/ProductDto;",
        "product",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "acquiredDate",
        "detailId",
        "Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;",
        "status",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

.field public final d:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->Companion:Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lb51;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lb51;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x7

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const/4 v4, 0x2

    aput-object v1, v2, v4

    const/4 v4, 0x3

    aput-object v1, v2, v4

    const/4 v4, 0x4

    aput-object v1, v2, v4

    const/4 v4, 0x5

    aput-object v1, v2, v4

    aput-object v0, v2, v3

    sput-object v2, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x40

    const/4 v0, 0x0

    const/16 v1, 0x40

    if-ne v1, p9, :cond_6

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/certificate/CertificateDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    and-int/lit8 p9, p1, 0x1

    if-nez p9, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    goto :goto_2

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    :goto_2
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_3

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    goto :goto_3

    :cond_3
    iput-object p5, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    :goto_3
    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    goto :goto_4

    :cond_4
    iput-object p6, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    :goto_4
    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_5

    iput-object v0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    goto :goto_5

    :cond_5
    iput-object p7, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    :goto_5
    iput-object p8, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    return-void

    :cond_6
    sget-object p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$$serializer;->a:Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)V
    .locals 1

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/certificate/CertificateDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    iput-object p1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    .line 81
    iput-object p4, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    .line 82
    iput-object p5, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    .line 83
    iput-object p6, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    .line 84
    iput-object p7, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p8, p8, 0x20

    if-eqz p8, :cond_5

    move-object p6, v0

    .line 85
    :cond_5
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/ProductDto;Lcom/vuitton/android/data/dto/common/AssetDto;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/certificate/ProductDto;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    if-nez v2, :cond_3

    move v2, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", type="

    const-string v1, ", product="

    const-string v2, "UnknownCertificateDto(identifier="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->c:Lcom/vuitton/android/data/dto/certificate/ProductDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->d:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", acquiredDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detailId="

    const-string v2, ", status="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/certificate/UnknownCertificateDto;->g:Lcom/vuitton/android/data/dto/certificate/CertificateStatusDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
