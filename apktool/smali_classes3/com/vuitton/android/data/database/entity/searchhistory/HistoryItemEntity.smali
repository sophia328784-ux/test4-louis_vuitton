.class public final Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$$serializer;,
        Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0013BG\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\t\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\rBW\u0008\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u000c\u0010\u0012\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "sku",
        "",
        "label",
        "image",
        "Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;",
        "background",
        "dateTime",
        "Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;",
        "price",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
        "",
        "seen0",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "serializationConstructorMarker",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public static final Companion:Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;

.field public static final g:[Lkotlin/Lazy;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->Companion:Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$Companion;

    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    new-instance v2, Ltx;

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ltx;-><init>(I)V

    invoke-static {v0, v2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Lkotlin/Lazy;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v3, 0x3

    aput-object v0, v2, v3

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v0, 0x5

    aput-object v1, v2, v0

    sput-object v2, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->g:[Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlinx/serialization/internal/SerializationConstructorMarker;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p1, 0x12

    const/4 p9, 0x0

    const/16 v0, 0x12

    if-ne v0, p8, :cond_4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-nez p8, :cond_0

    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    :goto_0
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x4

    if-nez p2, :cond_1

    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p4, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    :goto_1
    and-int/lit8 p2, p1, 0x8

    if-nez p2, :cond_2

    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    goto :goto_2

    :cond_2
    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    :goto_2
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_3

    iput-object p9, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    return-void

    :cond_3
    iput-object p7, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    return-void

    :cond_4
    sget-object p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$$serializer;->a:Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$$serializer;

    invoke-virtual {p0}, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity$$serializer;->a()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lkotlinx/serialization/internal/PluginExceptionsKt;->b(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    throw p9
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_1

    move-object p3, v0

    :cond_1
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_2

    move-object p4, v0

    :cond_2
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_3

    move-object p6, v0

    :cond_3
    const/4 p7, 0x0

    .line 69
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;Ljava/lang/String;Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 61
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    .line 67
    iput-object p5, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;

    iget-object v1, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    if-nez v3, :cond_3

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    iget-object p1, p1, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    :goto_0
    const-string v1, ", label="

    const-string v2, ", image="

    const-string v3, "HistoryItemEntity(sku="

    iget-object v4, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->b:Ljava/lang/String;

    invoke-static {v3, v0, v1, v4, v2}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->d:Lcom/vuitton/android/data/database/entity/searchhistory/ProductBackgroundEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", dateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/data/database/entity/searchhistory/HistoryItemEntity;->f:Lcom/vuitton/android/data/database/entity/searchhistory/ProductShortPriceEntity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
