.class public final Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;
.super Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Range"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;",
        "Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;",
        "totalRange",
        "selectedRange",
        "",
        "stepValue",
        "",
        "unit",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;ILjava/lang/String;)V",
        "domain"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

.field public final b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;ILjava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    iput p3, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    iget v3, p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Range(totalRange="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->a:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->b:Lcom/vuitton/foundation/model/domain/model/productshortlist/RangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stepValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", unit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/productshortlist/ProductFilterDataType$Range;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
