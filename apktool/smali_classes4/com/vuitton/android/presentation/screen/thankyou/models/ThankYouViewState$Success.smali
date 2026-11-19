.class public final Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;
.super Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;",
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;",
        "Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;",
        "checkoutConfirmationDetail",
        "",
        "displayName",
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;",
        "feedback",
        "Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;",
        "featureFlags",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 43
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    .line 44
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    .line 46
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const-string p2, ""

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    new-instance v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success(checkoutConfirmationDetail="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->a:Lcom/vuitton/android/presentation/screen/thankyou/models/CheckoutConfirmationDetailUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", feedback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->c:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeedbackUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouViewState$Success;->d:Lcom/vuitton/android/presentation/screen/thankyou/models/ThankYouFeatureFlags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
