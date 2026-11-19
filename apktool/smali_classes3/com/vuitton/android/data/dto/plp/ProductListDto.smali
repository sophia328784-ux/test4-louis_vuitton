.class public final Lcom/vuitton/android/data/dto/plp/ProductListDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/plp/ProductListDto$$serializer;,
        Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000e\u0010\u000fBe\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\t\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\u000e\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/plp/ProductListDto;",
        "",
        "",
        "name",
        "id",
        "trackingPageName",
        "",
        "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;",
        "sectionList",
        "",
        "totalProducts",
        "Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;",
        "optionList",
        "nextPage",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;

.field public static final h:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/List;

.field public final e:I

.field public final f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

.field public final g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->Companion:Lcom/vuitton/android/data/dto/plp/ProductListDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lyp0;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lyp0;-><init>(I)V

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

    aput-object v0, v2, v4

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    aput-object v1, v2, v3

    sput-object v2, Lcom/vuitton/android/data/dto/plp/ProductListDto;->h:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p9, p1, 0x3b

    const/4 v0, 0x0

    const/16 v1, 0x3b

    if-ne v1, p9, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    :goto_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    iput p6, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    iput-object p7, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    return-void

    :cond_1
    iput-object p8, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/plp/ProductListDto$$serializer;->a:Lcom/vuitton/android/data/dto/plp/ProductListDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/plp/ProductListDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/plp/ProductListSectionDto;",
            ">;I",
            "Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    .line 51
    iput-object p2, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    .line 54
    iput p5, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    .line 55
    iput-object p6, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    .line 56
    iput-object p7, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_1

    move-object p7, v0

    .line 57
    :cond_1
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/dto/plp/ProductListDto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/vuitton/android/data/dto/productshort/ProductListOptionDto;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    iget v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v3, v2

    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", id="

    const-string v1, ", trackingPageName="

    const-string v2, "ProductListDto(name="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sectionList="

    const-string v2, ", totalProducts="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->d:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    iget v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", optionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->f:Lcom/vuitton/android/data/dto/productshort/ProductListOptionDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/plp/ProductListDto;->g:Ljava/lang/Integer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
