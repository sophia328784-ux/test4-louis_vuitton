.class public final Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BS\u0012\u000e\u0008\u0002\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;",
        "",
        "",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;",
        "returnItems",
        "",
        "shouldShowContinueButton",
        "",
        "totalReturnQuantity",
        "firstErrorPosition",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;",
        "currentBottomSheet",
        "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;",
        "orderReturnReasons",
        "<init>",
        "(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;)V",
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
.field public final a:Ljava/util/List;

.field public final b:Z

.field public final c:I

.field public final d:Ljava/lang/Integer;

.field public final e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 52
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;-><init>(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnItemUiModel;",
            ">;ZI",
            "Ljava/lang/Integer;",
            "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->a:Ljava/util/List;

    .line 47
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->b:Z

    .line 48
    iput p3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->c:I

    .line 49
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->d:Ljava/lang/Integer;

    .line 50
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

    .line 51
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->f:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    const/4 v0, 0x0

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    sget-object p6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_5
    move-object p7, p5

    move-object p8, p6

    move p5, p3

    move-object p6, p4

    move-object p3, p1

    move p4, p2

    move-object p2, p0

    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;-><init>(Ljava/util/List;ZILjava/lang/Integer;Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->d:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->d:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->f:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->f:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->d:Ljava/lang/Integer;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->f:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderReturnViewState(returnItems="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowContinueButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalReturnQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstErrorPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", currentBottomSheet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->e:Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnBottomSheet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderReturnReasons="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnViewState;->f:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
