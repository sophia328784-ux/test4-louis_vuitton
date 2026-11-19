.class public final Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;",
        "giftDraftUiModel",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;-><init>(ZLjava/lang/String;ZZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GiftMessageViewState(giftDraftUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/models/GiftMessageViewState;->a:Lcom/vuitton/foundation/model/domain/model/cart/GiftDraftUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
