.class public final Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Assessment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;,
        Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00182\u00020\u0001:\u0002\u0019\u0018Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0008\u0002\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000c\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012Bw\u0008\u0010\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u000e\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\u000c\u0012\u0006\u0010\u000f\u001a\u00020\n\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0011\u0010\u0017\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;",
        "",
        "",
        "title",
        "careExpertNote",
        "confirmAddressExpDate",
        "Lcom/vuitton/android/data/dto/pdp/PriceDto;",
        "price",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;",
        "shippingAddress",
        "",
        "isShippingAddressEditable",
        "",
        "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;",
        "items",
        "showOnCareDetail",
        "disclaimer",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;

.field public static final j:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

.field public final e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

.field public final f:Z

.field public final g:Ljava/util/List;

.field public final h:Z

.field public final i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->Companion:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Llg;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Llg;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v2, 0x9

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

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

    aput-object v0, v2, v3

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const/16 v0, 0x8

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->j:[Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 2

    and-int/lit16 p11, p1, 0xa9

    const/4 v0, 0x0

    const/16 v1, 0xa9

    if-ne v1, p11, :cond_5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_0

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    :goto_1
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    and-int/lit8 p2, p1, 0x10

    if-nez p2, :cond_2

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    goto :goto_2

    :cond_2
    iput-object p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    :goto_2
    iput-boolean p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    and-int/lit8 p2, p1, 0x40

    if-nez p2, :cond_3

    sget-object p2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    goto :goto_3

    :cond_3
    iput-object p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    :goto_3
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    and-int/lit16 p1, p1, 0x100

    if-nez p1, :cond_4

    iput-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    return-void

    :cond_4
    iput-object p10, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    return-void

    :cond_5
    sget-object p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;->a:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/pdp/PriceDto;",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;",
            "Z",
            "Ljava/util/List<",
            "Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$AssessmentItem;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    .line 83
    iput-object p5, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    .line 84
    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    .line 85
    iput-object p7, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    .line 86
    iput-boolean p8, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    .line 87
    iput-object p9, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x2

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_3

    .line 76
    sget-object p7, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_4

    move-object p9, v0

    .line 77
    :cond_4
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/pdp/PriceDto;Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;ZLjava/util/List;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/pdp/PriceDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", careExpertNote="

    const-string v1, ", confirmAddressExpDate="

    const-string v2, "Assessment(title="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->d:Lcom/vuitton/android/data/dto/pdp/PriceDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->e:Lcom/vuitton/android/data/dto/careservices/bff/CareServiceAddressDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isShippingAddressEditable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showOnCareDetail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/data/dto/careservices/bff/CareServiceDetailDto$Assessment;->i:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
