.class public final Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$$serializer;,
        Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000b2\u00020\u0001:\u0002\u000c\u000bB\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B%\u0008\u0010\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u0004\u0010\n\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;",
        "",
        "Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;",
        "categoryList",
        "<init>",
        "(Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$Companion;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->Companion:Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;-><init>(Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    return-void

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 17
    :cond_0
    invoke-direct {p0, p1}, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;-><init>(Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ProductAGECDataDto(categoryList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/ProductAGECDataDto;->a:Lcom/vuitton/android/data/dto/pdp/ProductAGECCategoryListDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
