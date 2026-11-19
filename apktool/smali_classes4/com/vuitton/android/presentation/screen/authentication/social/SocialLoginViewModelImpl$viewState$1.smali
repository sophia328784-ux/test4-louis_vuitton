.class final Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;-><init>(Lcom/vuitton/android/domain/usecase/config/IsFeatureAvailableUseCase;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/core/events/LVEventSender;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/LineSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/GoogleSignInManager;Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;Lcom/vuitton/android/presentation/notification/NotificationBuilder;Lcom/vuitton/android/domain/usecase/authentication/social/SocialLoginUseCase;Lcom/vuitton/android/domain/usecase/dynamicyield/ReportDYLoginEventUseCase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;",
        "Ljava/lang/Boolean;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;",
        "socialLoginUiModel",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;",
        "isLoading",
        ""
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
    c = "com.vuitton.android.presentation.screen.authentication.social.SocialLoginViewModelImpl$viewState$1"
    f = "SocialLoginViewModelImpl.kt"
    l = {}
    m = "invokeSuspend"
    v = 0x2
.end annotation


# instance fields
.field public synthetic b:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

.field public synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    invoke-direct {v0, p0, p3}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->b:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iput-boolean p2, v0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->c:Z

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->b:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-boolean v6, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->c:Z

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl$viewState$1;->d:Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->n:Z

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->o:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->p:Z

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/SocialLoginViewModelImpl;->q:Z

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZ)V

    return-object v0
.end method
