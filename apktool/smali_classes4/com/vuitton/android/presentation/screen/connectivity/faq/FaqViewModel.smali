.class public final Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;
.super Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel<",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B!\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;",
        "Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqView;",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;",
        "getFaqItemListUseCase",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "<init>",
        "(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V",
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


# static fields
.field public static final synthetic f:I


# instance fields
.field public final c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lcom/vuitton/android/presentation/screen/connectivity/LVViewModel;-><init>()V

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->c:Lcom/vuitton/android/domain/usecase/connectivity/GetFaqItemListUseCase;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iget-object p1, p1, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->e:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    return-void
.end method


# virtual methods
.method public final Cc(Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel;)V
    .locals 14

    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$FaqPageScreen;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v7, 0x11

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "IoT"

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;

    const-string v1, "Question_"

    if-eqz v0, :cond_1

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;

    iget v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqItemEvent;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v6, "IoT"

    const-string v7, "Open"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object v1, v2

    goto/16 :goto_2

    :cond_1
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;

    iget v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqItemEvent;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0x61

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v6, "IoT"

    const-string v7, "Close"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;

    const-string v2, "_"

    if-eqz v0, :cond_3

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->c:Ljava/lang/String;

    iget v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v2}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$OpenFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v8, "IoT"

    const-string v9, "faq_question_unfolded"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_1
    move-object v1, v4

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;->c:Ljava/lang/String;

    iget v3, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;->b:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3, v1}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v2}, Lcj;->e(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModel$CloseFaqQuestionEvent;->a:Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;

    invoke-static {p1, v0}, Lcom/vuitton/android/presentation/screen/connectivity/faq/models/FaqTrackingUiModelKt;->a(Lcom/vuitton/foundation/model/domain/model/connectivity/common/FaqType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Lo60;->t(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const/16 v12, 0x21

    const/4 v13, 0x0

    const/4 v5, 0x0

    const-string v8, "IoT"

    const-string v9, "faq_question_folded"

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v13}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :goto_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/connectivity/faq/FaqViewModel;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {p0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_4
    invoke-static {}, Lv40;->g()V

    return-void
.end method
