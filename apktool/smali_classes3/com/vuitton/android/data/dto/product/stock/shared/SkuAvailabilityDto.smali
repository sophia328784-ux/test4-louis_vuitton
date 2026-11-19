.class public final Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;,
        Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0002\u0018\u0017Bq\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012B\u007f\u0008\u0010\u0012\u0006\u0010\u0013\u001a\u00020\n\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "backOrder",
        "isPreOrder",
        "inStock",
        "Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;",
        "disclaimerDto",
        "",
        "minValue",
        "maxValue",
        "minLeadTime",
        "maxLeadTime",
        "Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;",
        "leadTimeFormat",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;

.field public static final k:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Boolean;

.field public final c:Ljava/lang/Boolean;

.field public final d:Ljava/lang/Boolean;

.field public final e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

.field public final f:Ljava/lang/Integer;

.field public final g:Ljava/lang/Integer;

.field public final h:Ljava/lang/Integer;

.field public final i:Ljava/lang/Integer;

.field public final j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->Companion:Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Lnw0;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lnw0;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0xa

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v1, v2, v3

    const/4 v3, 0x4

    aput-object v1, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    const/4 v3, 0x6

    aput-object v1, v2, v3

    const/4 v3, 0x7

    aput-object v1, v2, v3

    const/16 v3, 0x8

    aput-object v1, v2, v3

    const/16 v1, 0x9

    aput-object v0, v2, v1

    sput-object v2, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->k:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit16 p12, p1, 0x3e1

    const/4 p13, 0x0

    const/16 v0, 0x3e1

    if-ne v0, p12, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    :goto_2
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_3

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    goto :goto_3

    :cond_3
    iput-object p6, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    :goto_3
    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    iput-object p9, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    iput-object p10, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    iput-object p11, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p13
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x2

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p12, p11, 0x4

    if-eqz p12, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p12, p11, 0x8

    if-eqz p12, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p11, p11, 0x10

    if-eqz p11, :cond_3

    move-object p5, v0

    :cond_3
    const/4 p11, 0x0

    .line 81
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    .line 73
    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    .line 74
    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    .line 75
    iput-object p5, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    .line 76
    iput-object p6, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    .line 77
    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    .line 78
    iput-object p8, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    .line 79
    iput-object p9, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    .line 80
    iput-object p10, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 3

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    if-nez p0, :cond_8

    goto :goto_8

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SkuAvailabilityDto(sku="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->b:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPreOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", inStock="

    const-string v2, ", disclaimerDto="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->c:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->d:Ljava/lang/Boolean;

    invoke-static {v0, v3, v1, v4, v2}, Ld21;->B(Ljava/lang/StringBuilder;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->e:Lcom/vuitton/android/data/dto/pdp/ProductDisclaimerDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minLeadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->h:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxLeadTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", leadTimeFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/product/stock/shared/SkuAvailabilityDto;->j:Lcom/vuitton/android/data/dto/product/stock/shared/AvailabilityTimeFormatDto;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
