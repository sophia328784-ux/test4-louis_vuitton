.class public final Lcom/kakao/sdk/user/UserApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/user/UserApiClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\tB%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/kakao/sdk/user/UserApiClient;",
        "",
        "Lcom/kakao/sdk/user/UserApi;",
        "userApi",
        "userApiNoLog",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "tokenManagerProvider",
        "<init>",
        "(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V",
        "Companion",
        "user_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final c:Lcom/kakao/sdk/user/UserApiClient$Companion;

.field public static final d:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/kakao/sdk/user/UserApi;

.field public final b:Lcom/kakao/sdk/user/UserApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/user/UserApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/user/UserApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/user/UserApiClient;->c:Lcom/kakao/sdk/user/UserApiClient$Companion;

    sget-object v0, Lcom/kakao/sdk/user/UserApiClient$Companion$instance$2;->c:Lcom/kakao/sdk/user/UserApiClient$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/user/UserApiClient;->d:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 72
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/kakao/sdk/user/UserApiClient;-><init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/kakao/sdk/user/UserApiClient;->a:Lcom/kakao/sdk/user/UserApi;

    .line 71
    iput-object p2, p0, Lcom/kakao/sdk/user/UserApiClient;->b:Lcom/kakao/sdk/user/UserApi;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const-class v0, Lcom/kakao/sdk/user/UserApi;

    if-eqz p5, :cond_0

    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->a:Lkotlin/Lazy;

    sget-object p1, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->a:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Retrofit;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/kakao/sdk/user/UserApi;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    sget-object p2, Lcom/kakao/sdk/network/ApiFactory;->a:Lkotlin/Lazy;

    sget-object p2, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->c:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lretrofit2/Retrofit;

    invoke-virtual {p2, v0}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Lcom/kakao/sdk/user/UserApi;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lcom/kakao/sdk/auth/TokenManagerProvider;->b:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p3, Lcom/kakao/sdk/auth/TokenManagerProvider;->c:Lkotlin/Lazy;

    invoke-interface {p3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/kakao/sdk/auth/TokenManagerProvider;

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/kakao/sdk/user/UserApiClient;-><init>(Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/user/UserApi;Lcom/kakao/sdk/auth/TokenManagerProvider;)V

    return-void
.end method

.method public static a(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->a()Ljava/lang/String;

    move-result-object v5

    sget-object p0, Lcom/kakao/sdk/auth/AuthCodeClient;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/kakao/sdk/auth/AuthCodeClient;

    new-instance v6, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoAccount$1;

    invoke-direct {v6, v5, p3}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoAccount$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    const/16 v7, 0xe14

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-static/range {v0 .. v7}, Lcom/kakao/sdk/auth/AuthCodeClient;->a(Lcom/kakao/sdk/auth/AuthCodeClient;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;I)V

    return-void
.end method

.method public static b(Lcom/kakao/sdk/user/UserApiClient;Landroid/content/Context;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/kakao/sdk/auth/AuthCodeClient;->e:Lcom/kakao/sdk/auth/AuthCodeClient$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/kakao/sdk/auth/AuthCodeClient$Companion;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kakao/sdk/auth/AuthCodeClient;->f:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kakao/sdk/auth/AuthCodeClient;

    new-instance v2, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;

    invoke-direct {v2, v0, p3}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    iget-object p3, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->b:Lcom/kakao/sdk/common/model/ApplicationInfo;

    iget-object v3, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->a:Lcom/kakao/sdk/common/util/IntentResolveClient;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.kakao.talk.intent.action.CAPRI_LOGGED_IN_ACTIVITY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p1, v4}, Lcom/kakao/sdk/common/util/IntentResolveClient;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    :try_start_0
    invoke-interface {p3}, Lcom/kakao/sdk/common/model/ApplicationInfo;->d()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3}, Lcom/kakao/sdk/common/model/ApplicationInfo;->a()Ljava/lang/String;

    move-result-object v7

    iget-object p3, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->c:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {p3}, Lcom/kakao/sdk/common/model/ContextInfo;->c()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iget-object p3, v1, Lcom/kakao/sdk/auth/AuthCodeClient;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {p3}, Lcom/kakao/sdk/common/model/ApprovalType;->a()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    const-string v3, "approval_type"

    invoke-virtual {v9, v3, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_0
    const-string p3, "code_challenge"

    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    const/16 v0, 0xb

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, p3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "code_challenge_method"

    const-string p3, "S256"

    invoke-virtual {v9, p0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p0, "nonce"

    invoke-virtual {v9, p0, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1, v2}, Lcom/kakao/sdk/auth/AuthCodeClient;->b(Lkotlin/jvm/functions/Function2;)Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;

    move-result-object v10

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lcom/kakao/sdk/auth/IntentFactory;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/kakao/sdk/auth/SingleResultReceiver$Companion$create$1;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    sget-object p1, Lcom/kakao/sdk/common/util/SdkLog;->d:Lcom/kakao/sdk/common/util/SdkLog$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/kakao/sdk/common/util/SdkLog$Companion;->a(Ljava/io/Serializable;)V

    invoke-virtual {v2, v4, p0}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    new-instance p0, Lcom/kakao/sdk/common/model/ClientError;

    sget-object p1, Lcom/kakao/sdk/common/model/ClientErrorCause;->NotSupported:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string p2, "KakaoTalk not installed"

    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {v2, v4, p0}, Lcom/kakao/sdk/user/UserApiClient$loginWithKakaoTalk$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
