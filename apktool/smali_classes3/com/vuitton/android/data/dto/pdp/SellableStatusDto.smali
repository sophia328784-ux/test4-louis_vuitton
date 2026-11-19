.class public final Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$$serializer;,
        Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u000f2\u00020\u0001:\u0002\u0010\u000fB)\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tB7\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u0008\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;",
        "",
        "",
        "sellable",
        "Lcom/vuitton/android/data/dto/pdp/PriceDto;",
        "price",
        "Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;",
        "reason",
        "<init>",
        "(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(IZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;

.field public static final d:[Lkotlin/Lazy;


# instance fields
.field public final a:Z

.field public final b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

.field public final c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->Companion:Lcom/vuitton/android/data/dto/pdp/SellableStatusDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lzu0;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lzu0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Lkotlin/Lazy;

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->d:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 30
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;-><init>(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p5, p1, 0x1

    if-nez p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    iput-boolean p2, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    and-int/lit8 p2, p1, 0x2

    const/4 p5, 0x0

    if-nez p2, :cond_1

    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    goto :goto_0

    :cond_1
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    :goto_0
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    iput-object p5, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    return-void

    :cond_2
    iput-object p4, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean p1, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    .line 33
    iput-object p2, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    .line 34
    iput-object p3, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 35
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;-><init>(ZLcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/pdp/PriceDto;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SellableStatusDto(sellable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->b:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/pdp/SellableStatusDto;->c:Lcom/vuitton/android/data/dto/pdp/NotSellableReasonDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
