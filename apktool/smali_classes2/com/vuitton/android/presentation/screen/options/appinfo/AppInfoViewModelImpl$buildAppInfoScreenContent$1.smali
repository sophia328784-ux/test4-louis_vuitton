.class final Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;
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
    c = "com.vuitton.android.presentation.screen.options.appinfo.AppInfoViewModelImpl$buildAppInfoScreenContent$1"
    f = "AppInfoViewModelImpl.kt"
    l = {
        0x4f
    }
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    invoke-direct {p1, p0, p2}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;-><init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->c:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p1, Lkotlin/Result;

    iget-object p0, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v2

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iget-object p1, v4, Landroidx/lifecycle/AndroidViewModel;->a:Landroid/app/Application;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->c()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    sget-object p1, Lcom/google/firebase/installations/FirebaseInstallations;->m:Ljava/lang/Object;

    invoke-static {}, Lcom/google/firebase/FirebaseApp;->d()Lcom/google/firebase/FirebaseApp;

    move-result-object p1

    const-class v1, Lcom/google/firebase/installations/FirebaseInstallationsApi;

    invoke-virtual {p1, v1}, Lcom/google/firebase/FirebaseApp;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/installations/FirebaseInstallations;

    invoke-virtual {p1}, Lcom/google/firebase/installations/FirebaseInstallations;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Le7;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Le7;-><init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->c()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->e()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v1, Le7;

    invoke-direct {v1, v4, v3}, Le7;-><init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;I)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    :cond_2
    invoke-static {}, Lcom/batch/android/Batch$User;->getInstallationID()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    move-object p1, v2

    :cond_4
    if-eqz p1, :cond_5

    new-instance v1, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    const-string v5, "Batch installation ID"

    invoke-direct {v1, v5, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V

    :cond_5
    iget-object p1, v4, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->c:Lcom/vuitton/android/domain/repository/AuthTokenRepository;

    iput v3, p0, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl$buildAppInfoScreenContent$1;->b:I

    invoke-interface {p1, p0}, Lcom/vuitton/android/domain/repository/AuthTokenRepository;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    return-object v0

    :cond_6
    :goto_0
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of p1, p0, Lkotlin/Result$Failure;

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    move-object v2, p0

    :goto_1
    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_8

    new-instance p0, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;

    const-string p1, "Access Token"

    invoke-direct {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p0}, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;->yc(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModelImpl;Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
