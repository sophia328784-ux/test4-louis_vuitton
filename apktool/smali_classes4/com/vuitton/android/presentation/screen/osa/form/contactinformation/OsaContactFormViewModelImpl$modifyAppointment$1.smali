.class final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;
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
    c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$modifyAppointment$1"
    f = "OsaContactFormViewModelImpl.kt"
    l = {
        0x1eb,
        0x1f5,
        0x1f8,
        0x1fa,
        0x1fd
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->i:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->j:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->i:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->j:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->i:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_d

    :cond_0
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v10

    :cond_1
    iget v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iget v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_b

    :cond_2
    iget v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->g:I

    iget v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iget v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    check-cast v12, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;

    iget-object v12, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v3, v2

    move v2, v6

    move v6, v9

    move-object v9, v12

    goto/16 :goto_9

    :cond_3
    iget v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iget v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    check-cast v9, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;

    iget-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v11, p1

    check-cast v11, Lkotlin/Result;

    iget-object v11, v11, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_8

    :cond_4
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$LoadingBottomSheet;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    invoke-virtual {v2, v11, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_6

    goto/16 :goto_c

    :cond_6
    :goto_0
    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->D:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v6, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->G:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v6

    new-instance v11, Lkotlin/Pair;

    invoke-direct {v11, v2, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, v11, Lkotlin/Pair;->b:Ljava/lang/Object;

    if-eqz v2, :cond_15

    iget-object v6, v11, Lkotlin/Pair;->c:Ljava/lang/Object;

    if-eqz v6, :cond_15

    check-cast v6, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    check-cast v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v11, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    invoke-interface {v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v11

    invoke-interface {v11}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v12, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->E:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v12}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, ""

    if-nez v12, :cond_7

    move-object v15, v13

    goto :goto_1

    :cond_7
    move-object v15, v12

    :goto_1
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;->b:Ljava/lang/String;

    invoke-static {v6}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->a(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    move-result-object v17

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->j:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-eqz v6, :cond_8

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->a:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move-object v6, v10

    :goto_2
    if-nez v6, :cond_9

    move-object/from16 v18, v13

    goto :goto_3

    :cond_9
    move-object/from16 v18, v6

    :goto_3
    sget-object v6, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    const/4 v12, 0x6

    invoke-static {v11, v6, v10, v8, v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v6

    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_TYPE1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v11, v13, v10, v8, v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-static {}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->a()Lkotlin/enums/EnumEntries;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v19, v16

    check-cast v19, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    invoke-virtual/range {v19 .. v19}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v3, 0x5

    goto :goto_4

    :cond_b
    move-object/from16 v16, v10

    :goto_5
    check-cast v16, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;

    move-object/from16 v3, v16

    goto :goto_6

    :cond_c
    move-object v3, v10

    :goto_6
    sget-object v13, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;->PHONE_NUMBER_COUNTRY1:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-static {v11, v13, v10, v8, v12}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->g(Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v11

    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    if-eqz v11, :cond_d

    new-instance v12, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-direct {v12, v6, v3, v11}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumberType;Ljava/lang/String;)V

    move-object/from16 v19, v12

    goto :goto_7

    :cond_d
    move-object/from16 v19, v10

    :goto_7
    new-instance v14, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;

    move-object/from16 v16, v2

    invoke-direct/range {v14 .. v19}, Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;)V

    iget-object v2, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->p:Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    iput v8, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iput v7, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    invoke-virtual {v2, v14, v0}, Lcom/vuitton/android/domain/usecase/appointment/ModifyAppointmentUseCase;->a(Lcom/vuitton/foundation/model/domain/model/appointment/UpdateAppointmentRequest;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v1, :cond_e

    goto/16 :goto_c

    :cond_e
    move v2, v8

    move v6, v2

    :goto_8
    sget-object v3, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v3, v11, Lkotlin/Result$Failure;

    if-nez v3, :cond_13

    move-object v3, v11

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    iget-object v12, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->H:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;

    move-result-object v3

    instance-of v13, v3, Lkotlin/Result$Failure;

    if-eqz v13, :cond_f

    move-object v3, v10

    :cond_f
    invoke-interface {v12, v3}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    iget-object v3, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->d:Lcom/vuitton/android/core/events/LVEventSender;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->g:I

    iput v5, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    sget-object v12, Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;->a:Lcom/vuitton/android/core/events/AppEvent$RefreshAppointmentsEvent;

    invoke-virtual {v3, v12, v0}, Lcom/vuitton/android/core/events/LVEventSender;->a(Lcom/vuitton/android/core/events/AppEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_10

    goto :goto_c

    :cond_10
    move v3, v8

    :goto_9
    invoke-virtual {v9}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v12

    if-eqz v12, :cond_11

    goto :goto_a

    :cond_11
    invoke-static {v9}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v12

    new-instance v13, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1;

    invoke-direct {v13, v10, v9}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$refreshProfileAfterAppointmentSaved$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;)V

    invoke-static {v12, v10, v10, v13, v5}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_a
    iget-object v5, v9, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->A:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;->a:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/components/OsaContactFormBottomSheetScreen$AppointmentConfirmBottomSheet;

    iput-object v9, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iput v3, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->g:I

    iput v4, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    invoke-virtual {v5, v12, v0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_12

    goto :goto_c

    :cond_12
    move v4, v6

    move-object v6, v9

    move-object v5, v11

    :goto_b
    move-object v11, v5

    move-object v9, v6

    move v6, v4

    :cond_13
    invoke-static {v11}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_14

    new-instance v3, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;

    const v4, 0x7f140a5a

    invoke-direct {v3, v4, v10, v7, v10}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResId;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->b:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-object v11, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->c:Ljava/lang/Object;

    iput-object v10, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->d:Ljava/lang/Object;

    iput v6, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->e:I

    iput v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->f:I

    iput v8, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->g:I

    const/4 v2, 0x5

    iput v2, v0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$modifyAppointment$1;->h:I

    invoke-static {v9, v3, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_14

    :goto_c
    return-object v1

    :cond_14
    :goto_d
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    :cond_15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
