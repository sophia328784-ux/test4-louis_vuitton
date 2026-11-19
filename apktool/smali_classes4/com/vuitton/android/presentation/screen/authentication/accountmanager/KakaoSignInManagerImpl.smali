.class public final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0004B\t\u0008\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;",
        "Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManager;",
        "<init>",
        "()V",
        "KakaoUserInfo",
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


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/jvm/internal/SuspendLambda;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->a:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->a:Lkotlinx/coroutines/MainCoroutineDispatcher;

    invoke-virtual {v0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->r()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$getKakaoCredentials$2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl;Landroid/content/Context;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0, v1, p4}, Lkotlinx/coroutines/BuildersKt;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
