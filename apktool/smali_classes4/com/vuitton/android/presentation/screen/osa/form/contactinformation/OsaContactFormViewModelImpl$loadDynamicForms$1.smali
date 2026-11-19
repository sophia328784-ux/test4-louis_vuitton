.class final Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.osa.form.contactinformation.OsaContactFormViewModelImpl$loadDynamicForms$1"
    f = "OsaContactFormViewModelImpl.kt"
    l = {
        0x120,
        0x11e,
        0x124,
        0x128,
        0x132,
        0x141
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public c:Ljava/lang/Object;

.field public d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public e:Ljava/lang/Object;

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public final synthetic j:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

.field public final synthetic k:Z

.field public final synthetic l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;ZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->j:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->k:Z

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->k:Z

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->j:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;-><init>(Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;ZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 26

    move-object/from16 v10, p0

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->j:Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->v:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->w:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    const/4 v15, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v5

    :pswitch_0
    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    check-cast v0, Ljava/util/List;

    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_6

    :pswitch_1
    iget v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iget v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    check-cast v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v4, p1

    check-cast v4, Lkotlin/Result;

    iget-object v4, v4, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object v15, v5

    goto/16 :goto_4

    :pswitch_2
    iget v4, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iget v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    iget-boolean v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->f:Z

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/List;

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v7, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    check-cast v7, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    check-cast v8, Lkotlin/Result;

    iget-object v8, v8, Lkotlin/Result;->b:Ljava/lang/Object;

    move-object/from16 v25, v6

    move v6, v0

    move-object v0, v8

    move-object/from16 v8, v25

    move-object/from16 v25, v7

    move v7, v4

    move-object/from16 v4, v25

    goto/16 :goto_3

    :pswitch_3
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Lkotlin/Result;

    iget-object v1, v1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_2

    :pswitch_4
    iget-object v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v7, p1

    goto :goto_1

    :pswitch_5
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    :goto_0
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v1, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v6, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->t:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    iget-object v7, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->q:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    iput-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    const/4 v9, 0x1

    iput v9, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    invoke-virtual {v7, v8, v4, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v14, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_1
    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    iput v3, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    invoke-virtual {v6, v1, v7, v10}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;->a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_2
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v1, Lkotlin/Result$Failure;

    if-nez v6, :cond_2

    move-object v6, v1

    check-cast v6, Ljava/util/List;

    iput-object v6, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->z:Ljava/util/List;

    :cond_2
    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_7

    invoke-static {v1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v1, Ljava/util/List;

    iget-object v1, v12, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->s:Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v12, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->l:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    iget-boolean v7, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->k:Z

    iput-boolean v7, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->f:Z

    iput v4, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    iput v4, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iput v2, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    invoke-virtual {v1, v0, v10}, Lcom/vuitton/android/domain/usecase/forms/GetGuestAppointmentFormUseCase;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_3

    goto/16 :goto_5

    :cond_3
    move-object v8, v6

    move v1, v7

    move v6, v4

    move v7, v6

    move-object v4, v12

    :goto_3
    invoke-virtual {v4}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Bc()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v1, v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->j:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    move-object v8, v1

    new-instance v1, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$1;

    invoke-direct {v1, v0, v5}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance v9, Lfj0;

    invoke-direct {v9, v3}, Lfj0;-><init>(I)V

    move-object v3, v9

    new-instance v9, Lfj0;

    invoke-direct {v9, v2}, Lfj0;-><init>(I)V

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    iput-object v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    iput v6, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    iput v7, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iput v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    move-object v2, v3

    const/4 v3, 0x0

    move-object v11, v4

    const/4 v4, 0x0

    move-object/from16 v16, v5

    const/4 v5, 0x0

    move/from16 v17, v6

    const/4 v6, 0x0

    move/from16 v18, v7

    const/4 v7, 0x0

    move-object/from16 v19, v0

    move-object v0, v8

    const/4 v8, 0x0

    move-object/from16 v20, v11

    const/16 v11, 0xfc

    move-object/from16 v15, v16

    move/from16 v23, v17

    move/from16 v24, v18

    move-object/from16 v21, v19

    move-object/from16 v22, v20

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v14, :cond_4

    goto/16 :goto_5

    :cond_4
    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move/from16 v1, v23

    move/from16 v0, v24

    :goto_4
    invoke-static {v4}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v4, Lkotlin/Unit;

    iget-object v3, v3, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->i:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v4, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$4$1;

    invoke-direct {v4, v2, v15}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$4$1;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    new-instance v2, Lfj0;

    const/4 v5, 0x4

    invoke-direct {v2, v5}, Lfj0;-><init>(I)V

    new-instance v9, Lfj0;

    const/4 v5, 0x5

    invoke-direct {v9, v5}, Lfj0;-><init>(I)V

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    iput v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    iput v0, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iput v5, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    move-object v0, v3

    const/4 v3, 0x0

    move-object v1, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0xfc

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_8

    goto :goto_5

    :cond_5
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v5}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_6
    move-object/from16 v21, v0

    move-object v11, v4

    move-object v15, v5

    move/from16 v23, v6

    move/from16 v24, v7

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->h:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v2, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$5;

    move-object/from16 v3, v21

    invoke-direct {v2, v3, v15}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1$3$5;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    move-object v3, v2

    new-instance v2, Lfj0;

    const/4 v4, 0x6

    invoke-direct {v2, v4}, Lfj0;-><init>(I)V

    new-instance v6, Lag;

    invoke-direct {v6, v1, v8, v11, v4}, Lag;-><init>(ZLjava/lang/Object;Ljava/lang/Object;I)V

    new-instance v8, Ltb0;

    const/16 v1, 0x13

    invoke-direct {v8, v11, v1}, Ltb0;-><init>(Ljava/lang/Object;I)V

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->b:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->c:Ljava/lang/Object;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iput-object v15, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->e:Ljava/lang/Object;

    move/from16 v1, v23

    iput v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->g:I

    move/from16 v1, v24

    iput v1, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->h:I

    iput v4, v10, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl$loadDynamicForms$1;->i:I

    move-object v1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v11, 0x15c

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_8

    :goto_5
    return-object v14

    :cond_7
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v6}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_8
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;->b:Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Empty;

    invoke-virtual {v12, v0}, Lcom/vuitton/android/presentation/screen/osa/form/contactinformation/OsaContactFormViewModelImpl;->Cc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;)V

    :cond_9
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_a
    move/from16 v25, v15

    move-object v15, v5

    move/from16 v5, v25

    move-object v10, v15

    move v15, v5

    move-object v5, v10

    move-object/from16 v10, p0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
