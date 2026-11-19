.class public final Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0019\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;",
        "",
        "Lcom/vuitton/android/domain/repository/InAppDispatchRepository;",
        "inAppDispatchRepository",
        "Lcom/vuitton/android/domain/service/localization/LanguageManager;",
        "languageManager",
        "<init>",
        "(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/service/localization/LanguageManager;)V",
        "domain"
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
.field public final a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

.field public final b:Lcom/vuitton/android/domain/service/localization/LanguageManager;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/domain/repository/InAppDispatchRepository;Lcom/vuitton/android/domain/service/localization/LanguageManager;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    iput-object p2, p0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->b:Lcom/vuitton/android/domain/service/localization/LanguageManager;

    return-void
.end method


# virtual methods
.method public final a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;

    iget v1, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;

    invoke-direct {v0, p0, p2}, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;-><init>(Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    check-cast p2, Lkotlin/Result;

    iget-object p2, p2, Lkotlin/Result;->b:Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iput v3, v0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase$run$1;->e:I

    iget-object p2, p0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p2, p1, v0}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->d(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    instance-of v0, p2, Lkotlin/Result$Failure;

    if-nez v0, :cond_4

    check-cast p2, Lkotlin/Unit;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;

    invoke-virtual {p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/ResourceLocale;->h()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;

    invoke-direct {p2, p1}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/LanguageTagBcp47;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/domain/usecase/dispatch/SaveUserInAppDispatchUseCase;->b:Lcom/vuitton/android/domain/service/localization/LanguageManager;

    invoke-interface {p0, p1}, Lcom/vuitton/android/domain/service/localization/LanguageManager;->a(Ljava/util/List;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_4
    return-object p2
.end method
