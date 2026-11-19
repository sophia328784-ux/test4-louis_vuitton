.class public final Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$$serializer;,
        Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00142\u00020\u0001:\u0002\u0015\u0014BA\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000eB[\u0008\u0010\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\n\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0004\u0008\r\u0010\u0013\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;",
        "type",
        "",
        "isAvailable",
        "sizeGuideIdentifier",
        "",
        "Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;",
        "options",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->Companion:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lgp0;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Lgp0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lyp0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lyp0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x6

    new-array v3, v3, [Lkotlin/Lazy;

    aput-object v1, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v2, v3, v4

    const/4 v2, 0x3

    aput-object v1, v3, v2

    const/4 v2, 0x4

    aput-object v1, v3, v2

    const/4 v1, 0x5

    aput-object v0, v3, v1

    sput-object v3, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p8, p1, 0x2f

    const/4 v0, 0x0

    const/16 v1, 0x2f

    if-ne v1, p8, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    :goto_0
    iput-object p7, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/account/orders/CategoryOptionDto;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    .line 44
    iput-boolean p4, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    .line 45
    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;ZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", type="

    const-string v2, "ProductExchangeCategoryDto(id="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->c:Lcom/vuitton/android/data/dto/account/orders/CategoryTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sizeGuideIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/orders/ProductExchangeCategoryDto;->f:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, p0}, Lo60;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
