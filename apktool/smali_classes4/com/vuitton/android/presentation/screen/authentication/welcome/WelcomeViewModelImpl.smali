.class public final Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B)\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModel;",
        "Landroidx/lifecycle/SavedStateHandle;",
        "savedStateHandle",
        "Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;",
        "getLiveVideoUseCase",
        "Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;",
        "isFeatureAvailableUseCase",
        "Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;",
        "environmentProvider",
        "<init>",
        "(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V",
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
.field public final a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

.field public final b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

.field public final c:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final d:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final e:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final f:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final g:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Lkotlinx/coroutines/flow/Flow;

.field public final l:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/SavedStateHandle;Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;)V
    .locals 20
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0}, Landroidx/lifecycle/ViewModel;-><init>()V

    move-object/from16 v3, p2

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->a:Lcom/vuitton/android/domain/usecase/video/GetLiveVideoUseCase;

    move-object/from16 v3, p4

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->b:Lcom/vuitton/android/domain/provider/environment/EnvironmentProvider;

    const-string v3, "CONNECTED_OBJECT_LINK"

    invoke-virtual {v1, v3}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    const-string v4, "MANAGED_SETTINGS_LINK"

    invoke-virtual {v1, v4}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const-string v5, "LOGIN_CONTEXT"

    invoke-virtual {v1, v5}, Landroidx/lifecycle/SavedStateHandle;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    if-nez v1, :cond_0

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    :cond_0
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->c:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance v5, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v13, 0x7f

    const/4 v14, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v14}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v5}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v5

    iput-object v5, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->d:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v6

    iput-object v6, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->e:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 v7, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v7

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v3

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->f:Lkotlinx/coroutines/flow/MutableStateFlow;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_2
    move v4, v7

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v4

    iput-object v4, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->g:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_LOGIN:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->h:Z

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->i:Z

    sget-object v8, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->NATIVE_REGISTER_KISA:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v8}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;->b([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->j:Z

    const/4 v2, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v8, v2, v9}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object v2

    invoke-static {v2}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->k:Lkotlinx/coroutines/flow/Flow;

    const/4 v2, 0x5

    new-array v2, v2, [Lkotlinx/coroutines/flow/Flow;

    aput-object v1, v2, v8

    aput-object v3, v2, v7

    const/4 v1, 0x2

    aput-object v4, v2, v1

    const/4 v1, 0x3

    aput-object v5, v2, v1

    const/4 v3, 0x4

    aput-object v6, v2, v3

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance v10, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    const/16 v18, 0x7f

    const/16 v19, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v3, v2, v4, v10}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl$getLoginVideoUrl$1;

    invoke-direct {v3, v0, v9}, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl$getLoginVideoUrl$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v9, v9, v3, v1}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public final L0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->h:Z

    return p0
.end method

.method public final R()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->j:Z

    return p0
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->l:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final j0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/WelcomeViewModelImpl;->i:Z

    return p0
.end method
