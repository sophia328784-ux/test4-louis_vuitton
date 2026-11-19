.class public interface abstract Lcom/vuitton/android/data/api/bff/user/AuthApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008f\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00a7@\u00a2\u0006\u0002\u0010\u0005J\u001e\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0008H\u00a7@\u00a2\u0006\u0002\u0010\tJ\"\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000fH\u00a7@\u00a2\u0006\u0002\u0010\u0010J*\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u00132\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\rH\u00a7@\u00a2\u0006\u0002\u0010\u0015J.\u0010\u0016\u001a\u00020\u000b2\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u000f2\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\rH\u00a7@\u00a2\u0006\u0002\u0010\u0018J\"\u0010\u0019\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\u001b\u001a\u00020\r2\u0008\u0008\u0001\u0010\u001c\u001a\u00020\rH\u00a7@\u00a2\u0006\u0002\u0010\u001dJ\u0018\u0010\u001e\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u001f\u001a\u00020 H\u00a7@\u00a2\u0006\u0002\u0010!J\u0018\u0010\"\u001a\u00020\u00042\u0008\u0008\u0001\u0010#\u001a\u00020$H\u00a7@\u00a2\u0006\u0002\u0010%J\u001e\u0010&\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010\'\u001a\u00020(H\u00a7@\u00a2\u0006\u0002\u0010)J\u001e\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010+\u001a\u00020,H\u00a7@\u00a2\u0006\u0002\u0010-J\u001e\u0010.\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u00032\u0008\u0008\u0001\u0010/\u001a\u00020\rH\u00a7@\u00a2\u0006\u0002\u00100J\u0018\u00101\u001a\u00020\u001a2\u0008\u0008\u0001\u0010\n\u001a\u000202H\u00a7@\u00a2\u0006\u0002\u00103J\u001e\u00104\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u00105\u001a\u000206H\u00a7@\u00a2\u0006\u0002\u00107J\u001e\u00108\u001a\u0008\u0012\u0004\u0012\u0002090\u00032\u0008\u0008\u0001\u0010#\u001a\u00020:H\u00a7@\u00a2\u0006\u0002\u0010;J\u001e\u0010<\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\u0008\u0008\u0001\u0010#\u001a\u00020=H\u00a7@\u00a2\u0006\u0002\u0010>J>\u0010?\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0001\u0010@\u001a\u00020\r2\u0008\u0008\u0001\u0010A\u001a\u00020\r2\u0008\u0008\u0001\u0010#\u001a\u00020BH\u00a7@\u00a2\u0006\u0002\u0010CJ>\u0010D\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0001\u0010\u0014\u001a\u0004\u0018\u00010\r2\u0008\u0008\u0001\u0010@\u001a\u00020\r2\u0008\u0008\u0001\u0010A\u001a\u00020\r2\u0008\u0008\u0001\u0010#\u001a\u00020EH\u00a7@\u00a2\u0006\u0002\u0010F\u00a8\u0006G\u00c0\u0006\u0003"
    }
    d2 = {
        "Lcom/vuitton/android/data/api/bff/user/AuthApi;",
        "",
        "authenticateGuest",
        "Lretrofit2/Response;",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
        "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshTokenGuest",
        "refreshTokenGuestDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "login",
        "Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;",
        "codeChallenge",
        "",
        "state",
        "Ljava/util/UUID;",
        "(Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "nativeLogin",
        "nativeLoginDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;",
        "guestSlasToken",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "register",
        "cid",
        "(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "logout",
        "",
        "accessTokenSFID",
        "accessTokenSLAS",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "twistCodeExchange",
        "clientCodeDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "atgCodeExchange",
        "body",
        "Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "refreshToken",
        "refreshTokenDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "cookieExchange",
        "cookieExchangeRequestDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "createATGCookies",
        "accessTokenHeader",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forgetPasswordInitiate",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "forgetPasswordValidate",
        "forgetPasswordValidationDto",
        "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerInitiate",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateResponseDto;",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "registerValidate",
        "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;",
        "(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "socialRegister",
        "provider",
        "locale",
        "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "socialLogin",
        "Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
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
.method public abstract atgCodeExchange(Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/AtgCodeExchangeDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/code-exchange"
    .end annotation
.end method

.method public abstract authenticateGuest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/guest"
    .end annotation
.end method

.method public abstract cookieExchange(Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/CookieExchangeRequestDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/cookie-exchange"
    .end annotation
.end method

.method public abstract createATGCookies(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "sfid_access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lkotlin/Unit;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/atg/cookies"
    .end annotation
.end method

.method public abstract forgetPasswordInitiate(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordInitiateDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/forgot-password/initiate"
    .end annotation
.end method

.method public abstract forgetPasswordValidate(Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ForgetPasswordValidationDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/forgot-password/validate"
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;Ljava/util/UUID;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "code_challenge"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit2/http/Query;
            value = "state"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "authentication/login"
    .end annotation
.end method

.method public abstract logout(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "sfid_access_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "slas_access_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/logout"
    .end annotation
.end method

.method public abstract nativeLogin(Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "guest_slas_token"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/NativeLoginDto;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/login/native"
    .end annotation
.end method

.method public abstract refreshToken(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "authentication/refresh"
    .end annotation
.end method

.method public abstract refreshTokenGuest(Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/RefreshTokenGuestDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "authentication/guest"
    .end annotation
.end method

.method public abstract register(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "code_challenge"
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation runtime Lretrofit2/http/Query;
            value = "state"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "cid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/authentication/oauth/AuthUrlsDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "authentication/registration"
    .end annotation
.end method

.method public abstract registerInitiate(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterInitiateResponseDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/registration/initiate"
    .end annotation
.end method

.method public abstract registerValidate(Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/RegisterValidateBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/registration/validate"
    .end annotation
.end method

.method public abstract socialLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "guest_slas_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "provider"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "locale"
        .end annotation
    .end param
    .param p4    # Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/authentication/social/SocialLoginBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/social/login"
    .end annotation
.end method

.method public abstract socialRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "guest_slas_token"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "provider"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "locale"
        .end annotation
    .end param
    .param p4    # Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/data/dto/authentication/social/SocialRegisterBodyDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lretrofit2/Response<",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/social/registration"
    .end annotation
.end method

.method public abstract twistCodeExchange(Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .param p1    # Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ClientCodeDto;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/vuitton/android/data/dto/authentication/oauth/ApiTokenDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "authentication/code-exchange"
    .end annotation
.end method
