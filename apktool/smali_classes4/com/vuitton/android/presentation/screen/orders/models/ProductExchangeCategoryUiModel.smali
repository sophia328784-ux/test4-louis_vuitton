.class public final Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;",
        "",
        "",
        "id",
        "title",
        "Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;",
        "type",
        "",
        "isAvailable",
        "sizeGuideIdentifier",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;",
        "options",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V",
        "presentation"
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;ZLjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/orders/models/CategoryOptionUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->d:Z

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->f:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->d:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", type="

    const-string v2, "ProductExchangeCategoryUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->c:Lcom/vuitton/android/presentation/screen/orders/models/CategoryTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sizeGuideIdentifier="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", options="

    const-string v2, ")"

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/ProductExchangeCategoryUiModel;->f:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, p0}, Lo60;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
