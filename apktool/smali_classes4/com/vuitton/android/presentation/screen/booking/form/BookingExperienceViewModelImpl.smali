.class public final Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0019Bm\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0014\u001a\u00020\u0013\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModel;",
        "",
        "experienceId",
        "prebookId",
        "bookingId",
        "",
        "isAdditional",
        "Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;",
        "getBookingFormUseCase",
        "Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;",
        "postBookingFormUpdateUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V",
        "Factory",
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

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;

.field public final e:Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;

.field public final f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final g:Lcom/vuitton/foundation/logger/Logger;

.field public final h:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final i:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/StateFlow;

.field public final l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final m:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final n:Lkotlinx/coroutines/flow/SharedFlow;

.field public final o:Z

.field public final p:Z

.field public q:Ljava/util/List;

.field public r:Lkotlinx/coroutines/Job;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/foundation/logger/Logger;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .param p4    # Z
        .annotation runtime Ldagger/assisted/Assisted;
        .end annotation
    .end param
    .annotation runtime Ldagger/assisted/AssistedInject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->d:Lcom/vuitton/android/domain/usecase/booking/GetBookingFormUseCase;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->g:Lcom/vuitton/foundation/logger/Logger;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->i:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->b(Lkotlinx/coroutines/flow/MutableStateFlow;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p1, p11, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->l:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 p1, 0x0

    const/4 p5, 0x5

    const/4 p6, 0x0

    const/4 p7, 0x1

    invoke-static {p6, p7, p1, p5}, Lkotlinx/coroutines/flow/SharedFlowKt;->b(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->a(Lkotlinx/coroutines/flow/SharedFlowImpl;)Lkotlinx/coroutines/flow/SharedFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlow;

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move p1, p6

    goto :goto_1

    :cond_1
    :goto_0
    move p1, p7

    :goto_1
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->o:Z

    if-nez p2, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    move p6, p7

    :cond_3
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->p:Z

    sget-object p1, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->q:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final K8(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    :goto_0
    move-object v2, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    if-nez v2, :cond_1

    return-void

    :cond_1
    const/4 v4, 0x0

    const/16 v7, 0xf

    const/4 v3, 0x0

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    new-instance p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->a:Ljava/lang/String;

    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a:Ljava/lang/String;

    invoke-direct {p1, p2, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    return-void
.end method

.method public final M6(Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v1, p0

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    if-nez v5, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v4, v6

    :cond_3
    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    if-eqz v4, :cond_8

    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->h:Z

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    iget-boolean v3, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    xor-int/lit8 v7, v3, 0x1

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v12, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v8, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v10, 0x0

    const/16 v11, 0xfdf

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v6

    goto :goto_2

    :cond_5
    if-nez v3, :cond_6

    const/16 v17, 0x0

    const/16 v18, 0xfdf

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v13, v6

    invoke-static/range {v13 .. v18}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v6

    :cond_6
    :goto_2
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-static {v2, v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v6

    const/4 v9, 0x0

    const/16 v10, 0x3e

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v0

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V
    .locals 17

    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$BookingFormScreen;->a:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const-string v4, "booking_form"

    const-string v5, "booking_form"

    const-string v6, "booking"

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_0
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_1

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;->a:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagScreen;->b:Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const-string v7, "multiple_tag"

    const-string v8, "multiple_tag"

    const-string v9, "booking"

    invoke-direct/range {v5 .. v12}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$ScreenHit$DefaultScreenHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object/from16 v0, p0

    move-object v2, v5

    goto/16 :goto_5

    :cond_1
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;

    const/4 v5, 0x3

    const/4 v6, 0x4

    if-eqz v1, :cond_3

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;->a:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;->c:Ljava/lang/String;

    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->Companion:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext$Companion;

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;->d:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_2

    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->MODIFY:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    goto :goto_1

    :cond_2
    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->CREATION:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    :goto_1
    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->a()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;->b:Ljava/lang/String;

    invoke-direct {v10, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v10, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "booking_form"

    const-string v10, "select_value"

    const-string v11, "booking_form"

    const-string v12, "click"

    const-string v13, "booking"

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    move-object/from16 v0, p0

    move-object v2, v7

    goto/16 :goto_5

    :cond_3
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;

    if-eqz v1, :cond_5

    new-instance v7, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;->a:Ljava/lang/String;

    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;->c:Ljava/util/List;

    move-object v10, v9

    check-cast v10, Ljava/lang/Iterable;

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v11, ","

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ContentId;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->Companion:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext$Companion;

    iget-boolean v11, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;->d:Z

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v11, :cond_4

    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->MODIFY:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    goto :goto_3

    :cond_4
    sget-object v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->CREATION:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    :goto_3
    invoke-virtual {v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->a()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;->b:Ljava/lang/String;

    invoke-direct {v10, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$StepId;-><init>(Ljava/lang/String;)V

    new-array v0, v6, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v8, v0, v2

    aput-object v9, v0, v4

    aput-object v10, v0, v5

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/4 v8, 0x0

    const-string v9, "multiple_tag"

    const-string v10, "multiple_tag_confirmation"

    const-string v11, "booking_form"

    const-string v12, "click"

    const-string v13, "booking"

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_5
    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;

    if-eqz v1, :cond_7

    new-instance v5, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;

    new-instance v1, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;->a:Ljava/lang/String;

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$ExperienceId;-><init>(Ljava/util/List;)V

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;

    sget-object v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->Companion:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext$Companion;

    iget-boolean v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$ContinueEvent;->b:Z

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->MODIFY:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->CREATION:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;

    :goto_4
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingContext;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty$Context;-><init>(Ljava/lang/String;)V

    new-array v0, v4, [Lcom/vuitton/foundation/model/domain/model/analytics/AdditionalProperty;

    aput-object v1, v0, v3

    aput-object v6, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v6, 0x0

    const-string v7, "booking_form"

    const-string v8, "booking_form_confirmation"

    const-string v9, "booking_form"

    const-string v10, "click"

    const-string v11, "booking"

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit$DefaultEventHit;-><init>(Lcom/vuitton/foundation/model/domain/model/analytics/HitType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto/16 :goto_0

    :goto_5
    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-virtual {v0, v2}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final U7()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->o:Z

    return p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->k:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/SharedFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->n:Lkotlinx/coroutines/flow/SharedFlow;

    return-object p0
.end method

.method public final bb(Ljava/util/List;)V
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v2, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a:Ljava/lang/String;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_5
    move-object v6, v3

    :goto_1
    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    if-eqz v6, :cond_6

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    goto :goto_2

    :cond_6
    move-object v5, v3

    :goto_2
    instance-of v6, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    if-eqz v6, :cond_7

    move-object v3, v5

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    :cond_7
    if-nez v3, :cond_8

    :goto_3
    return-void

    :cond_8
    new-instance v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->a:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->p:Z

    invoke-direct {v5, v6, v1, v2, v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v5}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    move-object v5, p1

    check-cast v5, Ljava/lang/Iterable;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    iget-boolean v10, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->c:Z

    if-eqz v10, :cond_9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v5, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v8, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    iget-object v9, v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v8, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;

    invoke-direct {v8, v6, v1, v5, v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$MultipleTagConfirmationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)V

    invoke-virtual {p0, v8}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    const/4 v8, 0x0

    const/16 v9, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v4

    invoke-interface {v0, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->a:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v0, v10}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v6, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a:Ljava/lang/String;

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v5, p1}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    move-result-object v5

    :cond_c
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_d
    const/4 p1, 0x6

    invoke-static {v3, v4, p1}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->t9(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;)V

    return-void
.end method

.method public final ma()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->p:Z

    return p0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Loading;

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$initialize$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final t9(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v9, 0x0

    if-eqz v3, :cond_0

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object v10, v2

    goto :goto_0

    :cond_0
    move-object v10, v9

    :goto_0
    if-nez v10, :cond_1

    goto/16 :goto_e

    :cond_1
    iget-object v11, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_3
    move-object v3, v9

    :goto_1
    move-object v12, v3

    check-cast v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    if-nez v12, :cond_4

    goto/16 :goto_e

    :cond_4
    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->j:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    sget-object v2, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a:Ljava/lang/String;

    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    if-eqz v2, :cond_5

    move-object v2, v5

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->c:Ljava/lang/String;

    goto :goto_3

    :cond_5
    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    if-eqz v2, :cond_6

    move-object v2, v5

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;->b:Ljava/time/LocalDateTime;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_6
    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    if-eqz v2, :cond_8

    move-object v2, v5

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->c:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;

    if-eqz v2, :cond_7

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;->a:Ljava/lang/String;

    goto :goto_3

    :cond_7
    :goto_2
    move-object v2, v9

    goto :goto_3

    :cond_8
    instance-of v2, v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    if-eqz v2, :cond_1b

    goto :goto_2

    :goto_3
    if-eqz v2, :cond_9

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->a:Ljava/lang/String;

    iget-boolean v6, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->p:Z

    invoke-direct {v3, v4, v0, v2, v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel$SelectValueEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v3}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->Ma(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormTrackingUiModel;)V

    :cond_9
    iget-object v2, v11, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v15, 0xa

    invoke-static {v2, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v6, 0x3

    if-eqz v2, :cond_12

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v6, 0x0

    const/16 v7, 0xbff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v2

    goto/16 :goto_9

    :cond_a
    invoke-interface {v13, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    invoke-static {v4, v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;Ljava/lang/String;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SingleChoice;

    move-result-object v3

    :goto_5
    move-object/from16 v20, v3

    goto/16 :goto_8

    :cond_b
    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    if-eqz v5, :cond_c

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    invoke-static {v4, v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;Ljava/time/LocalDateTime;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    move-result-object v3

    goto :goto_5

    :cond_c
    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    if-eqz v5, :cond_d

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    invoke-static {v4, v9, v9, v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    move-result-object v3

    goto :goto_5

    :cond_d
    instance-of v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    if-eqz v5, :cond_10

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    iget-object v5, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->a:Ljava/util/List;

    check-cast v5, Ljava/lang/Iterable;

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v5, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object v9, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->c:Ljava/util/List;

    check-cast v9, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v9, v15}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    const/4 v15, 0x0

    invoke-static {v9, v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;Z)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextOption;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0xa

    goto :goto_7

    :cond_e
    invoke-static {v7, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    const/4 v9, 0x0

    const/16 v15, 0xa

    goto :goto_6

    :cond_f
    const/4 v0, 0x2

    invoke-static {v4, v6, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleText;

    move-result-object v3

    goto :goto_5

    :goto_8
    const/16 v21, 0x0

    const/16 v22, 0xbff

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v2

    invoke-static/range {v17 .. v22}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v2

    goto :goto_9

    :cond_10
    invoke-static {}, Lv40;->g()V

    return-void

    :cond_11
    :goto_9
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    const/4 v9, 0x0

    const/16 v15, 0xa

    goto/16 :goto_4

    :cond_12
    invoke-static {v14}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v11, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v11

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->zc(Ljava/util/List;)Z

    move-result v0

    const/4 v14, 0x0

    const/16 v15, 0x3c

    const/4 v13, 0x0

    move-object v3, v12

    move v12, v0

    const/16 v0, 0xa

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v2

    invoke-interface {v8, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-boolean v2, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->i:Z

    if-eqz v2, :cond_19

    invoke-static {v11}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;)Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-result-object v2

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->r:Lkotlinx/coroutines/Job;

    if-eqz v3, :cond_13

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_13
    invoke-interface {v8}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-eqz v4, :cond_14

    move-object v4, v3

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object v9, v4

    goto :goto_a

    :cond_14
    const/4 v9, 0x0

    :goto_a
    if-nez v9, :cond_15

    goto/16 :goto_e

    :cond_15
    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-static {v4, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    const/4 v14, 0x0

    const/16 v15, 0x7ff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v10

    const/4 v13, 0x0

    const/16 v14, 0x3e

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v3

    iget-object v0, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/16 v17, 0x0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-boolean v4, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    if-eqz v4, :cond_17

    goto :goto_d

    :cond_17
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    :cond_18
    const/16 v17, -0x1

    :goto_d
    const/4 v0, 0x1

    add-int/lit8 v4, v17, 0x1

    invoke-interface {v8, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->yc(Z)V

    invoke-static {v1}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v7

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;ILkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    invoke-static {v7, v4, v4, v0, v6}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object v0

    iput-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->r:Lkotlinx/coroutines/Job;

    return-void

    :cond_19
    invoke-interface/range {p2 .. p2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    if-nez v0, :cond_1a

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->yc(Z)V

    :cond_1a
    :goto_e
    return-void

    :cond_1b
    invoke-static {}, Lv40;->g()V

    return-void
.end method

.method public final u1()V
    .locals 7

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final yc(Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, -0x1

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-boolean v7, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->f:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v8

    :goto_2
    if-ne v6, v8, :cond_4

    :goto_3
    return-void

    :cond_4
    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->d:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v2, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v5, 0x1

    if-ltz v5, :cond_7

    move-object v10, v8

    check-cast v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    if-ne v5, v6, :cond_5

    const/4 v14, 0x0

    const/16 v15, 0xfdf

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v10

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v6, 0x1

    if-ne v5, v8, :cond_6

    const/4 v13, 0x0

    const/16 v15, 0x7df

    const/4 v11, 0x1

    const/4 v12, 0x0

    move/from16 v14, p1

    invoke-static/range {v10 .. v15}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v10

    :cond_6
    :goto_5
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v5, v9

    goto :goto_4

    :cond_7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v3

    :cond_8
    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v5

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final zc(Ljava/util/List;)Z
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a:Ljava/lang/String;

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-interface {v1}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;->isCompleted()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->p:Z

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->q:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    const/16 v0, 0xa

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->g(I)I

    move-result v0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_5

    move v0, v1

    :cond_5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object v2, v3, Lkotlin/Pair;->c:Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    instance-of p0, p1, Ljava/util/Collection;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_3

    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_9
    :goto_3
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_4
    const/4 p0, 0x1

    return p0
.end method
