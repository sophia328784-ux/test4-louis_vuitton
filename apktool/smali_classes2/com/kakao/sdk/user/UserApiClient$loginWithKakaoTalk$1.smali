.class final Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "code",
        "",
        "codeError",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic c:Lkotlin/jvm/functions/Function2;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p2, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->c:Lkotlin/jvm/functions/Function2;

    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->d:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v0, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->c:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {v0, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/kakao/sdk/auth/AuthApiClient;->b:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/kakao/sdk/auth/AuthApiClient;->c:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/auth/AuthApiClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1$1;

    invoke-direct {v1, v0}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1$1;-><init>(Lkotlin/jvm/functions/Function2;)V

    iget-object p0, p0, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->d:Ljava/lang/String;

    invoke-virtual {p2, p1, p0, v1}, Lcom/kakao/sdk/auth/AuthApiClient;->a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
