.class public final Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;,
        Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00102\u00020\u0001:\u0002\u0011\u0010B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nBI\u0008\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u000e\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0004\u0008\t\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;",
        "",
        "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
        "shippingAmount",
        "totalAmount",
        "totalTaxIncludedAmount",
        "",
        "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;",
        "allTaxes",
        "<init>",
        "(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

.field public final d:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->Companion:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lfj;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lfj;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x4

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v1, 0x3

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p1, 0xf

    const/16 v0, 0xf

    if-ne v0, p6, :cond_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iput-object p5, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    return-void

    :cond_0
    sget-object p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;->a:Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
            "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
            "Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/TaxInfoDto;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 31
    iput-object p2, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 32
    iput-object p3, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    .line 33
    iput-object p4, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v1}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CartPriceInfoDto(shippingAmount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->a:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->b:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", totalTaxIncludedAmount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->c:Lcom/vuitton/android/data/dto/cart/bff/CartPriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", allTaxes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/account/checkoutconfirmationdetail/CartPriceInfoDto;->d:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
