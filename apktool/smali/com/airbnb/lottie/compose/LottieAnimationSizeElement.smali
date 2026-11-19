.class public final Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0080\u0008\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;",
        "Landroidx/compose/ui/node/ModifierNodeElement;",
        "Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;",
        "",
        "width",
        "height",
        "<init>",
        "(II)V",
        "lottie-compose_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    iput p2, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/ui/Modifier$Node;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;

    iget v1, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    invoke-direct {v0, v1, p0}, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;-><init>(II)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;

    iget v1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    iget v3, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    iget p1, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final g(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    check-cast p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    iput v0, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->p:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    iput p0, p1, Lcom/airbnb/lottie/compose/LottieAnimationSizeNode;->q:I

    return-void
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", height="

    const-string v1, ")"

    iget v2, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->b:I

    iget p0, p0, Lcom/airbnb/lottie/compose/LottieAnimationSizeElement;->c:I

    const-string v3, "LottieAnimationSizeElement(width="

    invoke-static {v2, p0, v3, v0, v1}, Lfc;->f(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
