.class final Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.vuitton.android.presentation.screen.booking.form.BookingExperienceViewModelImpl$updateBookingForm$1"
    f = "BookingExperienceViewModelImpl.kt"
    l = {
        0x7a
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

.field public final synthetic d:Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->c:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->d:Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    iput p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 6

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->f:I

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->c:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->d:Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;ILkotlin/coroutines/Continuation;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->c:Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->b:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v3, p1

    check-cast v3, Lkotlin/Result;

    iget-object v3, v3, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v6

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->e:Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->b:Ljava/lang/String;

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->c:Ljava/lang/String;

    iput v5, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->b:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->d:Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;

    invoke-virtual {v4, v5, v7, v8, v0}, Lcom/vuitton/android/domain/usecase/booking/PostBookingFormUpdateUseCase;->a(Lcom/vuitton/foundation/model/domain/model/booking/BookingForm;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    move-object v3, v4

    :goto_0
    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v4, v3, Lkotlin/Result$Failure;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->e:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    if-nez v4, :cond_6

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-static {v6, v4}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v11, v9, 0x1

    if-ltz v9, :cond_4

    move-object v12, v10

    check-cast v12, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget v10, v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl$updateBookingForm$1;->f:I

    if-ne v9, v10, :cond_3

    const/16 v16, 0x0

    const/16 v17, 0xfdf

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v17}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v12

    :cond_3
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v9, v11

    goto :goto_1

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v6

    :cond_5
    iget-object v0, v7, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-static {v0, v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;Ljava/util/List;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    move-result-object v8

    invoke-virtual {v1, v4}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->zc(Ljava/util/List;)Z

    move-result v9

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_6
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->g:Lcom/vuitton/foundation/logger/Logger;

    sget-object v4, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a:Ljava/lang/String;

    const-string v5, "Failed to update booking experience"

    invoke-interface {v3, v4, v5, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v2, v7}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->m:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iget-object v7, v1, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v8, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v1, 0x7f140967

    const/4 v2, 0x2

    invoke-direct {v8, v1, v6, v2, v6}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v11, 0x0

    const/16 v12, 0x3c

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/SharedFlowImpl;->a(Ljava/lang/Object;)Z

    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
