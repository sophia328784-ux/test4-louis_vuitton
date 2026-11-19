.class public final Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;
.super Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HalfEditoDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;,
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;,
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0003\u0014\u0015\u0013B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rBW\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;",
        "",
        "title",
        "surtitle",
        "description",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;",
        "alignment",
        "Lcom/vuitton/android/data/dto/common/AssetDto;",
        "asset",
        "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;",
        "product",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "Companion",
        "AlignmentDto",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

.field public final f:Lcom/vuitton/android/data/dto/common/AssetDto;

.field public final g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lyp0;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Lyp0;-><init>(I)V

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

    sput-object v2, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3f

    const/16 v1, 0x3f

    if-ne v1, v0, :cond_0

    .line 35
    invoke-direct {p0, p1, p8}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p7, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;Lcom/vuitton/android/data/dto/common/AssetDto;Lcom/vuitton/android/data/dto/productshort/ProductShortDto;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    iput-object p6, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/common/AssetDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", surtitle="

    const-string v1, ", description="

    const-string v2, "HalfEditoDto(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", alignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->e:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto$AlignmentDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->f:Lcom/vuitton/android/data/dto/common/AssetDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$HalfEditoDto;->g:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
