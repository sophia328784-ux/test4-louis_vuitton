.class final Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;
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
    c = "com.vuitton.android.presentation.screen.distantrepairs.form.DistantRepairFormBffViewModelImpl$sendRepairData$3"
    f = "DistantRepairFormBffViewModelImpl.kt"
    l = {
        0x299,
        0x2a3,
        0x2a4,
        0x2ac
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

.field public e:Ljava/lang/Throwable;

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    invoke-direct {p1, p2, p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->h:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->g:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v4, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v9, :cond_2

    if-eq v4, v7, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    check-cast v2, Ljava/lang/String;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->c:Ljava/lang/Object;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v12, v4

    move-object v13, v7

    goto/16 :goto_10

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->f:I

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    check-cast v4, Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->c:Ljava/lang/Object;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v25, v4

    move v4, v2

    move-object/from16 v2, v25

    goto/16 :goto_f

    :cond_3
    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    check-cast v8, Lkotlin/Result;

    iget-object v8, v8, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_d

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v4, v1, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->y:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v13, :cond_5

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    iget-object v15, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->e:Ljava/lang/String;

    iget-object v5, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->d:Ljava/lang/String;

    invoke-direct {v14, v15, v5, v13}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v18, v14

    goto :goto_0

    :cond_5
    move-object/from16 v18, v10

    :goto_0
    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v5, v13, v10, v6, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v13, v10, v8, v9}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v13

    sget-object v15, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-virtual {v5, v15, v8}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->e(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_6

    move-object v5, v10

    :cond_6
    if-eqz v14, :cond_7

    if-eqz v13, :cond_7

    if-eqz v5, :cond_7

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-direct {v14, v5, v15, v13}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v14, v10

    :goto_1
    if-nez v14, :cond_b

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    if-eqz v5, :cond_c

    new-instance v14, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->c:Ljava/lang/String;

    iget-object v15, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber$Type;

    sget-object v17, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$WhenMappings;->c:[I

    invoke-virtual {v15}, Ljava/lang/Enum;->ordinal()I

    move-result v15

    aget v15, v17, v15

    if-eq v15, v8, :cond_a

    if-eq v15, v9, :cond_9

    if-ne v15, v7, :cond_8

    sget-object v15, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->WORK:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    goto :goto_2

    :cond_8
    invoke-static {}, Lv40;->g()V

    return-object v10

    :cond_9
    sget-object v15, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->HOME:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    goto :goto_2

    :cond_a
    sget-object v15, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->MOBILE:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    :goto_2
    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->b:Ljava/lang/String;

    invoke-direct {v14, v13, v15, v5}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    :cond_b
    move-object/from16 v19, v14

    goto :goto_3

    :cond_c
    move-object/from16 v19, v10

    :goto_3
    const-string v5, ""

    if-eqz v19, :cond_13

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-eqz v13, :cond_d

    iget-object v13, v13, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->g:Ljava/lang/String;

    goto :goto_4

    :cond_d
    move-object v13, v10

    :goto_4
    if-nez v13, :cond_e

    move-object/from16 v20, v5

    goto :goto_5

    :cond_e
    move-object/from16 v20, v13

    :goto_5
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v13, v13, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->c:Ljava/lang/String;

    iget-object v14, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->g:Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->b:Ljava/util/List;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v11}, Lcom/vuitton/android/presentation/helper/PhotoEncodingHelper;->a(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v23

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    if-nez v4, :cond_f

    move-object/from16 v24, v5

    goto :goto_6

    :cond_f
    move-object/from16 v24, v4

    :goto_6
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v4, v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-nez v4, :cond_10

    const/4 v4, -0x1

    goto :goto_7

    :cond_10
    sget-object v11, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethodKt$WhenMappings;->a:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v11, v4

    :goto_7
    if-eq v4, v8, :cond_12

    if-eq v4, v9, :cond_11

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;->EMAIL:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    :goto_8
    move-object/from16 v22, v4

    goto :goto_9

    :cond_11
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;->PHONE_CALL:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    goto :goto_8

    :cond_12
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;->VIDEO_CALL:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    goto :goto_8

    :goto_9
    new-instance v17, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;

    move-object/from16 v21, v13

    invoke-direct/range {v17 .. v24}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;-><init>(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v4, v17

    goto :goto_a

    :cond_13
    move-object v4, v10

    :goto_a
    if-eqz v4, :cond_22

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->c:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v12, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v13, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;->a:Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Action$BookRepair;

    invoke-interface {v11, v12, v13}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v11

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v12, v12, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;

    if-eqz v12, :cond_14

    invoke-virtual {v12}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;->a()Ljava/lang/String;

    move-result-object v12

    goto :goto_b

    :cond_14
    move-object v12, v10

    :goto_b
    if-nez v12, :cond_15

    goto :goto_c

    :cond_15
    move-object v5, v12

    :goto_c
    const-string v12, "repairType"

    invoke-virtual {v11, v5, v12}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->g:I

    invoke-virtual {v5, v4, v0}, Lcom/vuitton/android/domain/usecase/careservices/CreateCareServiceBffUseCase;->a(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_16

    goto/16 :goto_12

    :cond_16
    move-object v4, v11

    :goto_d
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v5, v8, Lkotlin/Result$Failure;

    if-nez v5, :cond_1c

    move-object v5, v8

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->a:Ljava/lang/String;

    const-string v11, "repairId"

    invoke-interface {v4, v5, v11}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_17
    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    invoke-direct {v13, v5}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12, v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    sget-object v5, Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;->BOOKED:Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v11}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v11, v11, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->f:Ljava/lang/String;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v2, :cond_18

    goto :goto_e

    :cond_18
    move-object v11, v10

    :goto_e
    invoke-virtual {v1, v5, v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->Cc(Lcom/vuitton/android/presentation/tracking/ServiceRepairActions;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->F:Lkotlinx/coroutines/channels/BufferedChannel;

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance v11, Lkotlin/Result;

    invoke-direct {v11, v5}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->f:I

    iput v9, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->g:I

    invoke-interface {v2, v11, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_19

    goto/16 :goto_12

    :cond_19
    move-object v2, v1

    move-object v11, v4

    move v4, v6

    :goto_f
    iget-object v5, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->c:Ljava/lang/Object;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    iput v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->f:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->g:I

    sget-object v4, Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshRepairsEvent;

    invoke-virtual {v5, v4, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_1a

    goto :goto_12

    :cond_1a
    move-object v12, v8

    move-object v13, v11

    :goto_10
    iget-object v4, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->k:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RepairCreationConfirmationScreen;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v14, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->v:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1b
    invoke-interface {v14}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    sget-object v5, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;->CONFIRMED:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;

    const/4 v7, 0x7

    invoke-static {v4, v10, v5, v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->b(Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    move-result-object v4

    invoke-interface {v14, v2, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    move-object v8, v12

    move-object v4, v13

    :cond_1c
    invoke-static {v8}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_20

    new-instance v5, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;

    invoke-direct {v5, v2}, Lcom/vuitton/android/domain/monitoring/careservices/CareServicesMonitoring$Error$BookRepairError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->c:Ljava/lang/Object;

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->e:Ljava/lang/Throwable;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->f:I

    const/4 v5, 0x4

    iput v5, v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl$sendRepairData$3;->g:I

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->E:Lkotlinx/coroutines/channels/BufferedChannel;

    iget-object v11, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->f:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    new-instance v12, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v6, 0x7f140a5a

    invoke-direct {v12, v6, v10, v9, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v15, 0x0

    const/16 v16, 0x3c

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v11 .. v16}, Lcom/vuitton/android/presentation/notification/NotificationBuilder;->a(Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ZLcom/vuitton/android/presentation/notification/NotificationDuration;Lcom/vuitton/android/presentation/notification/NotificationAction;I)Lcom/vuitton/android/presentation/notification/NotificationUiModel;

    move-result-object v6

    invoke-interface {v5, v6, v0}, Lkotlinx/coroutines/channels/SendChannel;->u(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    sget-object v5, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne v0, v5, :cond_1d

    goto :goto_11

    :cond_1d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_11
    if-ne v0, v3, :cond_1e

    :goto_12
    return-object v3

    :cond_1e
    move-object v3, v1

    move-object v0, v4

    :goto_13
    iget-object v5, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_1f
    invoke-interface {v5}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v5, v4, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v4, "DistantRepairFormBffViewModelImpl"

    const-string v5, "Unable to create care service"

    invoke-interface {v3, v4, v5, v2}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v0

    :cond_20
    iget-object v0, v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModelImpl;->u:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_21
    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    :cond_22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
