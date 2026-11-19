.class public final Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;",
        "",
        "",
        "title",
        "description",
        "",
        "priceRaw",
        "disclaimer",
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;",
        "additionalInformation",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;)V",
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

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->b:Ljava/lang/String;

    iput p3, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget v2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    invoke-static {v2, v0, v1}, Ltr;->b(III)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->d:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", description="

    const-string v1, ", priceRaw="

    const-string v2, "ShippingMethodUiModel(title="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", additionalInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodUiModel;->e:Lcom/vuitton/android/presentation/screen/thankyou/models/ShippingMethodAdditionalInformationUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
