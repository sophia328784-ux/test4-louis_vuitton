.class final Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$fetchUserInfo$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/kakao/sdk/user/model/User;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic b:Lkotlinx/coroutines/CancellableContinuationImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CancellableContinuationImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$fetchUserInfo$2$1;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/kakao/sdk/user/model/User;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$fetchUserInfo$2$1;->b:Lkotlinx/coroutines/CancellableContinuationImpl;

    const/4 v0, 0x0

    if-nez p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;

    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/User;->a()Lcom/kakao/sdk/user/model/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/kakao/sdk/user/model/Account;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/User;->a()Lcom/kakao/sdk/user/model/Account;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/Account;->b()Lcom/kakao/sdk/user/model/Profile;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/kakao/sdk/user/model/Profile;->a()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-direct {p2, v1, v0}, Lcom/vuitton/android/presentation/screen/authentication/accountmanager/KakaoSignInManagerImpl$KakaoUserInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {p0, p2}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    invoke-interface {p0, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
