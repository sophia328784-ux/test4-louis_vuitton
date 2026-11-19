.class final Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$WhenMappings;
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
    c = "com.vuitton.android.presentation.screen.account.addresseditor.AddressEditorViewModelImpl$loadDynamicAddressFormFor$1"
    f = "AddressEditorViewModelImpl.kt"
    l = {
        0xe1,
        0xe4,
        0xe4,
        0xea,
        0xe8,
        0xef,
        0xf1
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Z

.field public c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

.field public d:Ljava/lang/String;

.field public e:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

.field public f:I

.field public g:I

.field public h:I

.field public final synthetic i:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->i:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->i:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23

    move-object/from16 v10, p0

    iget-object v12, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->i:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iget-object v13, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->z:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v0, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->g:Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;

    sget-object v14, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {v0}, Lmd;->k(Ljava/lang/String;)V

    return-object v4

    :pswitch_0
    iget-object v0, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    check-cast v0, Lkotlin/Result;

    iget-object v0, v0, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_8

    :pswitch_1
    iget v0, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    iget v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iget-boolean v5, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    check-cast v6, Ljava/util/List;

    iget-object v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v7, v6

    move v6, v5

    move v5, v1

    move v1, v0

    move-object/from16 v0, p1

    goto/16 :goto_6

    :pswitch_2
    iget-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iget-object v5, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    check-cast v5, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/Result;

    iget-object v5, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_5

    :pswitch_3
    iget v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    iget v5, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iget-boolean v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iget-object v7, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->e:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iget-object v8, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    iget-object v9, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    check-cast v9, Ljava/lang/Throwable;

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move v9, v6

    move v6, v1

    move v1, v9

    move-object v9, v8

    move-object v8, v7

    move v7, v5

    move-object/from16 v5, p1

    goto/16 :goto_4

    :pswitch_4
    iget-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    check-cast v5, Lkotlin/Result;

    iget-object v5, v5, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_3

    :pswitch_5
    iget-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v5, p1

    goto :goto_2

    :pswitch_6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    goto :goto_0

    :pswitch_7
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->PUERTO_RICO:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v1}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v1

    iput v2, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-virtual {v0, v1, v3, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_0

    goto/16 :goto_7

    :cond_0
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v13, v5, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;

    iput-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    const/4 v6, 0x2

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-virtual {v5, v10}, Lcom/vuitton/android/domain/usecase/account/GetProfileUseCase;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_1

    goto/16 :goto_7

    :cond_1
    :goto_2
    check-cast v5, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;

    iput-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    const/4 v6, 0x3

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-interface {v5, v10}, Lcom/vuitton/foundation/model/domain/model/common/ResultStrategy;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_3
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v5, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    move-object v6, v5

    check-cast v6, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v7, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->C:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v7, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    :cond_3
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_5

    invoke-static {v5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v7, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->h:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iget-object v5, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->t:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v8, v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object v8, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    iput-object v7, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->e:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iput v3, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iput v3, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    const/4 v6, 0x4

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-virtual {v0, v5, v3, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_4

    goto/16 :goto_7

    :cond_4
    move v6, v3

    move-object v9, v8

    move-object v8, v7

    move v7, v6

    :goto_4
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->e:Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;

    iput-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iput v7, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    const/4 v6, 0x5

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-virtual {v8, v9, v5, v10}, Lcom/vuitton/android/domain/usecase/forms/mapping/GetAddressCivilitiesMappingUseCase;->a(Ljava/lang/String;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v14, :cond_6

    goto/16 :goto_7

    :cond_5
    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v6}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, v5, Lkotlin/Result$Failure;

    if-nez v6, :cond_7

    move-object v6, v5

    check-cast v6, Ljava/util/List;

    iput-object v6, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->u:Ljava/util/List;

    :cond_7
    invoke-static {v5}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_9

    invoke-static {v5}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/List;

    sget-object v5, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->ADDRESS_AUTO_COMPLETE:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v5}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v5

    iput-object v12, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object v4, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    iput-boolean v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iput v3, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iput v3, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    const/4 v6, 0x6

    iput v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    invoke-virtual {v0, v5, v3, v10}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->c([Lcom/vuitton/foundation/model/domain/model/sync/Feature;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_8

    goto/16 :goto_7

    :cond_8
    move v6, v1

    move v1, v3

    move v5, v1

    move-object v7, v12

    :goto_6
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v8, v7, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->a:Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;

    new-instance v15, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$1;

    const-string v20, "populateExtraPhoneFields()Lcom/vuitton/android/presentation/screen/dynamicform/model/field/phone/ExtraPhoneField;"

    const/16 v21, 0x0

    const/16 v16, 0x0

    const-class v18, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v19, "populateExtraPhoneFields"

    move-object/from16 v17, v7

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v7, v15

    new-instance v15, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$2;

    const-string v20, "prefillFieldWithApi(Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;Ljava/lang/String;)V"

    const/16 v16, 0x2

    const-class v18, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    const-string v19, "prefillFieldWithApi"

    invoke-direct/range {v15 .. v21}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v9, v17

    new-instance v11, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;

    invoke-direct {v11, v9, v4}, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1$5$3;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;Lkotlin/coroutines/Continuation;)V

    new-instance v4, Lz3;

    invoke-direct {v4, v9, v0, v2}, Lz3;-><init>(Ljava/lang/Object;ZI)V

    move-object v0, v4

    new-instance v4, Lx4;

    invoke-direct {v4, v6, v3}, Lx4;-><init>(ZI)V

    new-instance v2, Ly4;

    invoke-direct {v2, v9, v3}, Ly4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;I)V

    move-object v3, v0

    move-object v0, v8

    new-instance v8, Ly4;

    move-object/from16 p1, v0

    const/4 v0, 0x1

    invoke-direct {v8, v9, v0}, Ly4;-><init>(Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;I)V

    new-instance v9, Lp;

    const/16 v0, 0x14

    invoke-direct {v9, v0}, Lp;-><init>(I)V

    const/4 v0, 0x0

    iput-object v0, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->c:Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;

    iput-object v0, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->d:Ljava/lang/String;

    iput-boolean v6, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->b:Z

    iput v5, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->f:I

    iput v1, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->g:I

    const/4 v0, 0x7

    iput v0, v10, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl$loadDynamicAddressFormFor$1;->h:I

    move-object v6, v2

    const/4 v2, 0x0

    move-object v1, v11

    const/4 v11, 0x2

    move-object/from16 v0, p1

    move-object v5, v7

    move-object v7, v15

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;->e(Lcom/vuitton/android/presentation/screen/dynamicform/DynamicFormSupervisor;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lx4;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v14, :cond_a

    :goto_7
    return-object v14

    :cond_9
    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, v6}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_a
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-boolean v1, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->r:Z

    const-string v2, "Address form loading failed (isMainAddress="

    const-string v3, ")"

    invoke-static {v2, v3, v1}, Ltr;->i(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->A:Lkotlinx/coroutines/flow/MutableStateFlow;

    :cond_b
    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v3, v4}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v12, Lcom/vuitton/android/presentation/screen/account/addresseditor/AddressEditorViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    const-string v3, "AddressEditorViewModelImpl"

    invoke-interface {v2, v3, v1, v0}, Lcom/vuitton/foundation/logger/Logger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
    invoke-interface {v13}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v13, v0, v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_d
    move/from16 v22, v2

    move-object v2, v0

    move/from16 v0, v22

    move-object v10, v2

    move v2, v0

    move-object v0, v10

    move-object/from16 v10, p0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
