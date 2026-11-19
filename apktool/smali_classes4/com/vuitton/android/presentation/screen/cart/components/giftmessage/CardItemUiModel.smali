.class public final Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;",
        "",
        "Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;",
        "name",
        "description",
        "Lcom/vuitton/android/presentation/imageloading/compose/ImageData;",
        "image",
        "<init>",
        "(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/Object;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_3

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->c:Ljava/lang/Object;

    if-nez p0, :cond_5

    if-nez p1, :cond_4

    move p0, v0

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v2

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_1
    if-nez p0, :cond_7

    :goto_2
    return v2

    :cond_7
    :goto_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->c:Ljava/lang/Object;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ")"

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->c:Ljava/lang/Object;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v2, "ImageData(raw="

    invoke-static {v2, v1, v0}, Lo60;->n(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CardItemUiModel(name="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->a:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", description="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", image="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v0, v2}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
