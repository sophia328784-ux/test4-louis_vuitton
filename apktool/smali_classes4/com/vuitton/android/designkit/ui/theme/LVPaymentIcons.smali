.class public final Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;",
        "",
        "",
        "paypal",
        "visa",
        "amex",
        "mastercard",
        "<init>",
        "(IIII)V",
        "system"
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
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 37
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->a:I

    .line 34
    iput p2, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->b:I

    .line 35
    iput p3, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->c:I

    .line 36
    iput p4, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->d:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const p1, 0x7f0801f7

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const p2, 0x7f0801f8

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const p3, 0x7f0801f5

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const p4, 0x7f0801f6

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->a:I

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->b:I

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->c:I

    iget v3, p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->d:I

    iget p1, p1, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->d:I

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->b:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", visa="

    const-string v1, ", amex="

    iget v2, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->a:I

    iget v3, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->b:I

    const-string v4, "LVPaymentIcons(paypal="

    invoke-static {v2, v3, v4, v0, v1}, Lfc;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mastercard="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/vuitton/android/designkit/ui/theme/LVPaymentIcons;->d:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
