.class final Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1$WhenMappings;
    }
.end annotation

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
    c = "com.vuitton.android.presentation.screen.distantrepairs.assessment.DistantRepairAssessmentViewModelImpl$confirmAddress$1"
    f = "DistantRepairAssessmentViewModelImpl.kt"
    l = {
        0x225,
        0x22d,
        0x234
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

.field public c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Throwable;

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->h:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-eq v3, v7, :cond_1

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->f:Ljava/lang/Throwable;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->g:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->f:Ljava/lang/Throwable;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->d:Ljava/lang/Object;

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->g:I

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->d:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v13, v3

    move-object v3, p1

    move p1, v0

    move-object v0, v5

    move-object v5, v13

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object p1, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->k:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-virtual {v0, p1, v10, v3, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Cc(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    move-result-object p1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    if-eqz p1, :cond_f

    iget-object v9, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->a:Ljava/lang/String;

    iget-object v10, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    sget-object v11, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1$WhenMappings;->a:[I

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    aget v11, v11, v12

    if-eq v11, v5, :cond_5

    if-eq v11, v7, :cond_4

    goto :goto_0

    :cond_4
    sget-object v10, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_INITIATED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    goto :goto_0

    :cond_5
    sget-object v10, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->SHIPPING_IN_PREPARATION:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    :goto_0
    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetailKt;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object p1

    const v11, 0x7ffffe

    invoke-static {p1, v10, v8, v8, v11}, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;->a(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;Ljava/lang/String;I)Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;

    move-result-object p1

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->L8(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->i:Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->d:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->g:I

    iput v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->h:I

    invoke-virtual {v10, v9, p1, p0}, Lcom/vuitton/android/domain/usecase/careservices/UpdateCareServiceUseCase;->a(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceUpdate;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v5, v3

    move-object v3, p1

    move p1, v6

    :goto_1
    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, v3, Lkotlin/Result$Failure;

    if-nez v9, :cond_c

    move-object v9, v3

    check-cast v9, Lkotlin/Unit;

    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    if-eqz v9, :cond_7

    iget-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    const-string v11, ""

    invoke-static {v9, v11, v6}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;Ljava/lang/String;Z)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    move-result-object v6

    invoke-interface {v10, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_7
    iget-object v6, v0, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v9, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->R:I

    invoke-virtual {v0, v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Ec(Landroid/content/Context;)V

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->L:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v10, Lkotlin/Result;

    invoke-direct {v10, v9}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->d:Ljava/lang/Object;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->f:Ljava/lang/Throwable;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->g:I

    iput v7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->h:I

    invoke-interface {v6, v10, p0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v6, v0

    move v0, p1

    :goto_2
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;

    if-eqz p1, :cond_9

    iget-object v5, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    goto :goto_3

    :cond_9
    move-object v5, v8

    :goto_3
    sget-object v7, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->PAYMENT_INITIATED:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-eq v5, v7, :cond_b

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/CareServiceDetail;->c:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    goto :goto_4

    :cond_a
    move-object p1, v8

    :goto_4
    sget-object v5, Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;->AWAITING_PAYMENT:Lcom/vuitton/foundation/model/domain/model/repair/RepairStatus;

    if-eq p1, v5, :cond_b

    iget-object p1, v6, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p1, v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_b
    move p1, v0

    move-object v0, v6

    :cond_c
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_e

    iput-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->d:Ljava/lang/Object;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->e:Ljava/lang/Object;

    iput-object v5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->f:Ljava/lang/Throwable;

    iput p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->g:I

    iput v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl$confirmAddress$1;->h:I

    sget p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->R:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v2, :cond_d

    :goto_5
    return-object v2

    :cond_d
    move-object p0, v0

    move-object v0, v5

    :goto_6
    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    const-string v2, "DistantRepairAssessmentViewModelImpl"

    const-string v3, "Unable to confirm address"

    invoke-interface {p1, v2, v3, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModelImpl;->r:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_e
    sget-object p0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_f
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
