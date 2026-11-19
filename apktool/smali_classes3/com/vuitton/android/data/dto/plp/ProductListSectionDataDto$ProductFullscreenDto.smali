.class public final Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;
.super Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProductFullscreenDto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;,
        Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \r2\u00020\u0001:\u0002\u000e\rB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B/\u0008\u0010\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u0006\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;",
        "Lcom/vuitton/android/data/dto/productshort/ProductShortDto;",
        "product",
        "Lcom/vuitton/android/data/dto/common/editorial/RatioDto;",
        "ratio",
        "<init>",
        "(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

.field public final c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lyp0;

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Lyp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    invoke-direct {p0, p1, p4}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(ILkotlinx/serialization/internal/SerializationConstructorMarker;)V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/productshort/ProductShortDto;Lcom/vuitton/android/data/dto/common/editorial/RatioDto;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, v0}, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    iput-object p1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    .line 26
    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/productshort/ProductShortDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductFullscreenDto(product="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->b:Lcom/vuitton/android/data/dto/productshort/ProductShortDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListSectionDataDto$ProductFullscreenDto;->c:Lcom/vuitton/android/data/dto/common/editorial/RatioDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
