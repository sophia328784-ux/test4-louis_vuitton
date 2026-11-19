.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormViewModelImpl$cancelCareService$1"
    f = "DistantRepairFormViewModelImpl.kt"
    l = {
        0x265,
        0x269
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Ljava/lang/Object;

.field public c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

.field public d:Ljava/lang/Throwable;

.field public e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

.field public final synthetic g:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

.field public final synthetic h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->g:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->h:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->g:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 34

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->d:Ljava/lang/Throwable;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v2, p1

    check-cast v2, Lkotlin/Result;

    iget-object v2, v2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v7, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairDetailsCancelAppointmentEvent;

    invoke-static {v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15}, Ljava/lang/String;-><init>()V

    new-instance v16, Ljava/lang/String;

    invoke-direct/range {v16 .. v16}, Ljava/lang/String;-><init>()V

    new-instance v17, Ljava/lang/String;

    invoke-direct/range {v17 .. v17}, Ljava/lang/String;-><init>()V

    new-instance v18, Ljava/lang/String;

    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->g:Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;

    iget-object v7, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->d:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    sget-object v10, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;->AppForm:Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceOrigin;

    if-ne v7, v10, :cond_3

    :goto_0
    move-object/from16 v27, v5

    goto :goto_1

    :cond_3
    iget-object v2, v2, Lcom/vuitton/foundation/model/domain/model/careservices/CreateCareServiceParam;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/vuitton/foundation/util/StringKtExtKt;->e(Ljava/lang/String;)Lkotlinx/datetime/Instant;

    move-result-object v5

    goto :goto_0

    :goto_1
    new-instance v28, Ljava/lang/String;

    invoke-direct/range {v28 .. v28}, Ljava/lang/String;-><init>()V

    new-instance v29, Ljava/lang/String;

    invoke-direct/range {v29 .. v29}, Ljava/lang/String;-><init>()V

    new-instance v30, Ljava/lang/String;

    invoke-direct/range {v30 .. v30}, Ljava/lang/String;-><init>()V

    const v32, 0x43fc06

    const/16 v33, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v8 .. v33}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;-><init>(Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/datetime/Instant;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v2, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->m:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->e:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->h:Ljava/lang/String;

    invoke-virtual {v2, v4, v8, v0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v2}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_6

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->b:Ljava/lang/Object;

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->d:Ljava/lang/Throwable;

    iput v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl$cancelCareService$1;->e:I

    invoke-static {v6, v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->zc(Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    :goto_3
    return-object v1

    :cond_5
    move-object v1, v4

    :goto_4
    iget-object v0, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "DistantRepairFormViewModelImpl"

    const-string v3, "Unable to cancel care service"

    invoke-interface {v0, v2, v3, v1}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
