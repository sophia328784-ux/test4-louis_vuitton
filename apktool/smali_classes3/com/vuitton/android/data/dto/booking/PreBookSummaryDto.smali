.class public final Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$$serializer;,
        Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00122\u00020\u0001:\u0002\u0013\u0012B7\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cBO\u0008\u0010\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u000e\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u000b\u0010\u0011\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;",
        "",
        "",
        "Lcom/vuitton/android/data/dto/booking/PreBookDto;",
        "prebookList",
        "Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;",
        "additionalList",
        "Lcom/vuitton/android/data/dto/pdp/PriceDto;",
        "priceInfo",
        "",
        "freeLabel",
        "<init>",
        "(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;

.field public static final e:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

.field public final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->Companion:Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lul0;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Lul0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Lul0;

    const/16 v4, 0x1b

    invoke-direct {v3, v4}, Lul0;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v3, 0x4

    new-array v3, v3, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object v0, v3, v2

    const/4 v0, 0x2

    aput-object v1, v3, v0

    const/4 v0, 0x3

    aput-object v1, v3, v0

    sput-object v3, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->e:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit8 p6, p1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-ne v1, p6, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    return-void

    :cond_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    return-void

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$$serializer;->a:Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/booking/PreBookDto;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/booking/BookingAdditionalDto;",
            ">;",
            "Lcom/vuitton/android/data/dto/pdp/PriceDto;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    .line 37
    iput-object p2, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    .line 38
    iput-object p3, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    .line 39
    iput-object p4, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 40
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;-><init>(Ljava/util/List;Ljava/util/List;Lcom/vuitton/android/data/dto/pdp/PriceDto;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/pdp/PriceDto;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v2, p0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", additionalList="

    const-string v1, ", priceInfo="

    const-string v2, "PreBookSummaryDto(prebookList="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->b:Ljava/util/List;

    invoke-static {v2, v0, v1, v3, v4}, Lo60;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->c:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", freeLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/booking/PreBookSummaryDto;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
