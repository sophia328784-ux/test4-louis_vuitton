.class public final Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;,
        Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u001a2\u00020\u0001:\u0002\u001b\u001aBe\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\r\u001a\u00020\u000c\u0012\u0010\u0008\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0013\u0010\u0014B\u007f\u0008\u0010\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0006\u0010\u0012\u001a\u00020\t\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0013\u0010\u0019\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "vtoId",
        "Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;",
        "type",
        "stackingType",
        "",
        "isDualEnabled",
        "name",
        "Lcom/vuitton/android/data/dto/product/vto/ColorDto;",
        "color",
        "",
        "Lcom/vuitton/android/data/dto/product/vto/LookDto;",
        "looks",
        "hasTutorial",
        "isLimitedEdition",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

.field public static final k:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

.field public final d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

.field public final e:Z

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

.field public final h:Ljava/util/List;

.field public final i:Z

.field public final j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->Companion:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ll31;

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ll31;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v2

    new-instance v3, Ll31;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Ll31;-><init>(I)V

    invoke-static {v0, v3}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v3

    new-instance v4, Ll31;

    const/16 v5, 0x19

    invoke-direct {v4, v5}, Ll31;-><init>(I)V

    invoke-static {v0, v4}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/16 v4, 0xa

    new-array v4, v4, [Lkotlin/Lazy;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const/4 v2, 0x3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    aput-object v1, v4, v2

    const/4 v2, 0x5

    aput-object v1, v4, v2

    const/4 v2, 0x6

    aput-object v1, v4, v2

    const/4 v2, 0x7

    aput-object v0, v4, v2

    const/16 v0, 0x8

    aput-object v1, v4, v0

    const/16 v0, 0x9

    aput-object v1, v4, v0

    sput-object v4, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->k:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit16 p12, p1, 0x377

    const/4 p13, 0x0

    const/16 v0, 0x377

    if-ne v0, p12, :cond_2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_0

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    :goto_0
    iput-boolean p6, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_1

    iput-object p13, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    goto :goto_1

    :cond_1
    iput-object p9, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    :goto_1
    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    iput-boolean p11, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    return-void

    :cond_2
    sget-object p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;->a:Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p13
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p12, p11, 0x8

    const/4 v0, 0x0

    if-eqz p12, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit16 p11, p11, 0x80

    if-eqz p11, :cond_1

    move-object p8, v0

    :cond_1
    const/4 p11, 0x0

    .line 67
    invoke-direct/range {p0 .. p11}, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;ZLjava/lang/String;Lcom/vuitton/android/data/dto/product/vto/ColorDto;Ljava/util/List;ZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    .line 60
    iput-object p4, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    .line 61
    iput-boolean p5, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    .line 62
    iput-object p6, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    .line 63
    iput-object p7, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    .line 64
    iput-object p8, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    .line 65
    iput-boolean p9, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    .line 66
    iput-boolean p10, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;

    iget-object v1, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    iget-boolean p1, p1, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    if-eq p0, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    invoke-static {v2, v1, v3}, Lo60;->b(IIZ)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    invoke-virtual {v3}, Lcom/vuitton/android/data/dto/product/vto/ColorDto;->hashCode()I

    move-result v3

    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-object v2, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-boolean v0, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    invoke-static {v3, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    const-string v0, ", vtoId="

    const-string v1, ", type="

    const-string v2, "TryOnProductDto(sku="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->c:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stackingType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->d:Lcom/vuitton/android/data/dto/product/vto/BeautyProductTypeDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDualEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    const-string v2, ", color="

    iget-object v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->f:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->e:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->g:Lcom/vuitton/android/data/dto/product/vto/ColorDto;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", looks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasTutorial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLimitedEdition="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->i:Z

    iget-boolean p0, p0, Lcom/vuitton/android/data/dto/product/vto/TryOnProductDto;->j:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
