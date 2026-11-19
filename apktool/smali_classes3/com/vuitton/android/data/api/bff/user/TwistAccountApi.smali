.class public interface abstract Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005H\u00a7@\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0008\u0008\u0001\u0010\t\u001a\u00020\nH\u00a7@\u00a2\u0006\u0002\u0010\u000bJ\u0018\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\t\u001a\u00020\u000eH\u00a7@\u00a2\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\u00020\u0011H\u00a7@\u00a2\u0006\u0002\u0010\u0012J\u0018\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0015H\u00a7@\u00a2\u0006\u0002\u0010\u0016J\u0018\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0019H\u00a7@\u00a2\u0006\u0002\u0010\u001a\u00a8\u0006\u001b\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/TwistAccountApi;",
        "",
        "updateMainInformation",
        "",
        "profileUpdateDto",
        "Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;",
        "(Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updatePassword",
        "Lretrofit2/Response;",
        "body",
        "Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;",
        "(Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getAccountStatus",
        "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;",
        "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;",
        "(Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getConsents",
        "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "patchConsents",
        "consentsPatchDto",
        "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;",
        "(Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "addConsentChina",
        "dto",
        "Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;",
        "(Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "data"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract addConsentChina(Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/account/china/ChinaConsentDataDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "account/consent-china"
    .end annotation
.end method

.method public abstract getAccountStatus(Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/profile/twist/AccountStatusDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "account/status"
    .end annotation
.end method

.method public abstract getConsents(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "account/consents"
    .end annotation
.end method

.method public abstract patchConsents(Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/profile/twist/UserConsentsPatchDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PATCH;
        value = "v2/account/consents"
    .end annotation
.end method

.method public abstract updateMainInformation(Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/profile/twist/ProfileUpdateDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "profile"
    .end annotation
.end method

.method public abstract updatePassword(Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/profile/twist/ProfilePwdUpdateDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "profile/password"
    .end annotation
.end method
