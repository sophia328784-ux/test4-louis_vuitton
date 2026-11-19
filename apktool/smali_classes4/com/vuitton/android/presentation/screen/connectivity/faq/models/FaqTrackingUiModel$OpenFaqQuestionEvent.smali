.class public final Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFaqQuestionEvent"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;",
        "Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;",
        "faqType",
        "",
        "questionPosition",
        "",
        "categoryId",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iput p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    invoke-static {v3, v1, v2}, Ltr;->b(III)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenFaqQuestionEvent(faqType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", questionPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", categoryId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
