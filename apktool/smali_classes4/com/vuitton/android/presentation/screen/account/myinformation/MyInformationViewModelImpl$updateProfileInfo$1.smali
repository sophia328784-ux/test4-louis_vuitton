.class final Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;
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
    c = "com.vuitton.android.presentation.screen.account.myinformation.MyInformationViewModelImpl$updateProfileInfo$1"
    f = "MyInformationViewModelImpl.kt"
    l = {
        0x214,
        0x216,
        0x218
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public c:Ljava/lang/Object;

.field public d:I

.field public final synthetic e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->f:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    new-instance p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->f:Lkotlin/jvm/functions/Function1;

    invoke-direct {p1, v0, p0, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->x:Lkotlinx/coroutines/flow/MutableStateFlow;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->g:Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->d:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->c:Ljava/lang/Object;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v8

    :cond_1
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->b:Lcom/vuitton/android/domain/monitoring/Monitor;

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->s:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    sget-object v9, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditProfile;->a:Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Action$EditProfile;

    invoke-interface {p1, v4, v9}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object p1

    :cond_4
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v9}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput v7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->d:I

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Bc(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    goto :goto_3

    :cond_5
    move-object v10, v4

    move-object v4, p1

    move-object p1, v10

    :goto_0
    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->f:Lkotlin/jvm/functions/Function1;

    sget-object v9, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_6

    :try_start_0
    check-cast p1, Ljava/util/List;

    invoke-interface {v7, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v7, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v7, Lkotlin/Result$Failure;

    invoke-direct {v7, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v7

    :cond_6
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->n:Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object v8, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->c:Ljava/lang/Object;

    iput v6, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->d:I

    invoke-virtual {v7, p1, p0}, Lcom/vuitton/android/domain/usecase/account/profile/UpdateProfileInfoUseCase;->a(Lcom/vuitton/foundation/model/domain/model/account/UpdateProfileInfoParam;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_8

    goto :goto_3

    :cond_7
    new-instance p1, Lkotlin/Result$Failure;

    invoke-direct {p1, v7}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    invoke-interface {v4}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->b()Lkotlin/Unit;

    sget-object v6, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_a

    move-object v6, p1

    check-cast v6, Lkotlin/Unit;

    iget-object v6, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->v:Lkotlinx/coroutines/flow/SharedFlowImpl;

    sget-object v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo$EditionSuccess;->a:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationSideEffect$EditMyInfo$EditionSuccess;

    iput-object v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->b:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->c:Ljava/lang/Object;

    iput v5, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl$updateProfileInfo$1;->d:I

    invoke-virtual {v6, v7, p0}, Lkotlinx/coroutines/flow/SharedFlowImpl;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v3, :cond_9

    :goto_3
    return-object v3

    :cond_9
    move-object v3, p1

    move-object p0, v4

    :goto_4
    move-object v4, p0

    move-object p1, v3

    :cond_a
    invoke-static {p1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_12

    new-instance p1, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditProfileError;

    invoke-direct {p1, p0}, Lcom/vuitton/android/domain/monitoring/mylv/MyInformationMonitoring$Error$EditProfileError;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v4, p1}, Lcom/vuitton/android/domain/monitoring/MonitorAction;->d(Lcom/vuitton/android/domain/monitoring/MonitorActionError;)Lkotlin/Unit;

    iget-object p1, v0, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->a:Lcom/vuitton/foundation/logger/Logger;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Error while updating profile info: "

    const-string v5, "MyInformationViewModelImpl"

    invoke-static {v4, v3, p1, v5, v8}, La;->y(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/logger/Logger;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lretrofit2/HttpException;

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lretrofit2/HttpException;

    iget-object p1, p1, Lretrofit2/HttpException;->d:Lretrofit2/Response;

    if-eqz p1, :cond_b

    iget-object p1, p1, Lretrofit2/Response;->c:Lokhttp3/ResponseBody;

    goto :goto_5

    :cond_b
    move-object p1, v8

    :goto_5
    const-string v5, "localizedMessage"

    const-string v6, "message"

    const-string v7, "success"

    if-eqz p1, :cond_10

    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v9, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_9

    :catchall_1
    move-exception p1

    goto :goto_8

    :cond_c
    const-string p1, "formExceptions"

    invoke-virtual {v9, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lez v7, :cond_10

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    :cond_d
    move-object v6, v8

    :goto_6
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_e
    move-object v5, v8

    :goto_7
    const-string v7, "errorCode"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_f

    move-object p1, v3

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v6, v5}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    move-result-object p1

    invoke-virtual {v0, p1, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_9

    :goto_8
    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :cond_10
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0, v8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    goto :goto_9

    :cond_11
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, p0, v8}, Lcom/vuitton/android/presentation/screen/account/addresseditor/error/AddressErrorMessageMapper;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$ResName;

    move-result-object p0

    invoke-virtual {v0, p0, v4}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModelImpl;->Dc(Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Z)Z

    :cond_12
    :goto_9
    invoke-interface {v1}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
