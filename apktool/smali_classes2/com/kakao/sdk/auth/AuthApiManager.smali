.class public final Lcom/kakao/sdk/auth/AuthApiManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/AuthApiManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eB9\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "",
        "Lcom/kakao/sdk/auth/AuthApi;",
        "authApi",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "tokenManagerProvider",
        "Lcom/kakao/sdk/common/model/ApplicationInfo;",
        "applicationInfo",
        "Lcom/kakao/sdk/common/model/ContextInfo;",
        "contextInfo",
        "Lcom/kakao/sdk/common/model/ApprovalType;",
        "approvalType",
        "<init>",
        "(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V",
        "Companion",
        "auth_release"
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
.field public static final f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

.field public static final g:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/kakao/sdk/auth/AuthApi;

.field public final b:Lcom/kakao/sdk/auth/TokenManagerProvider;

.field public final c:Lcom/kakao/sdk/common/model/ApplicationInfo;

.field public final d:Lcom/kakao/sdk/common/model/ContextInfo;

.field public final e:Lcom/kakao/sdk/common/model/ApprovalType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    sget-object v0, Lcom/kakao/sdk/auth/AuthApiManager$Companion$instance$2;->c:Lcom/kakao/sdk/auth/AuthApiManager$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiManager;->g:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 90
    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/kakao/sdk/auth/AuthApiManager;-><init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->a:Lcom/kakao/sdk/auth/AuthApi;

    .line 86
    iput-object p2, p0, Lcom/kakao/sdk/auth/AuthApiManager;->b:Lcom/kakao/sdk/auth/TokenManagerProvider;

    .line 87
    iput-object p3, p0, Lcom/kakao/sdk/auth/AuthApiManager;->c:Lcom/kakao/sdk/common/model/ApplicationInfo;

    .line 88
    iput-object p4, p0, Lcom/kakao/sdk/auth/AuthApiManager;->d:Lcom/kakao/sdk/common/model/ContextInfo;

    .line 89
    iput-object p5, p0, Lcom/kakao/sdk/auth/AuthApiManager;->e:Lcom/kakao/sdk/common/model/ApprovalType;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    sget-object p1, Lcom/kakao/sdk/network/ApiFactory;->a:Lkotlin/Lazy;

    sget-object p1, Lcom/kakao/sdk/auth/network/ApiFactoryKt;->b:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lretrofit2/Retrofit;

    const-class p7, Lcom/kakao/sdk/auth/AuthApi;

    invoke-virtual {p1, p7}, Lretrofit2/Retrofit;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lcom/kakao/sdk/auth/AuthApi;

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    sget-object p2, Lcom/kakao/sdk/auth/TokenManagerProvider;->b:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/kakao/sdk/auth/TokenManagerProvider;->c:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/auth/TokenManagerProvider;

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p3

    :cond_2
    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_3

    invoke-static {}, Lcom/kakao/sdk/common/KakaoSdk;->a()Lcom/kakao/sdk/common/model/ApplicationContextInfo;

    move-result-object p4

    :cond_3
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_4

    sget-object p5, Lcom/kakao/sdk/common/KakaoSdk;->d:Lcom/kakao/sdk/common/model/ApprovalType;

    if-eqz p5, :cond_5

    :cond_4
    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move-object p3, p1

    goto :goto_0

    :cond_5
    const-string p0, "approvalType"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :goto_0
    invoke-direct/range {p2 .. p7}, Lcom/kakao/sdk/auth/AuthApiManager;-><init>(Lcom/kakao/sdk/auth/AuthApi;Lcom/kakao/sdk/auth/TokenManagerProvider;Lcom/kakao/sdk/common/model/ApplicationInfo;Lcom/kakao/sdk/common/model/ContextInfo;Lcom/kakao/sdk/common/model/ApprovalType;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;
    .locals 7

    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->c:Lcom/kakao/sdk/common/model/ApplicationInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ApplicationInfo;->d()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->d:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v0}, Lcom/kakao/sdk/common/model/ContextInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/kakao/sdk/auth/model/OAuthToken;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->e:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v0}, Lcom/kakao/sdk/common/model/ApprovalType;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "refresh_token"

    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->a:Lcom/kakao/sdk/auth/AuthApi;

    invoke-interface/range {v1 .. v6}, Lcom/kakao/sdk/auth/AuthApi;->refreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-interface {v0}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    iget-object v1, v0, Lretrofit2/Response;->b:Ljava/lang/Object;

    check-cast v1, Lcom/kakao/sdk/auth/model/AccessTokenResponse;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/kakao/sdk/auth/model/OAuthToken;->Companion:Lcom/kakao/sdk/auth/model/OAuthToken$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/kakao/sdk/auth/model/OAuthToken$Companion;->a(Lcom/kakao/sdk/auth/model/AccessTokenResponse;Lcom/kakao/sdk/auth/model/OAuthToken;)Lcom/kakao/sdk/auth/model/OAuthToken;

    move-result-object p1

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->b:Lcom/kakao/sdk/auth/TokenManagerProvider;

    iget-object p0, p0, Lcom/kakao/sdk/auth/TokenManagerProvider;->a:Lcom/kakao/sdk/auth/TokenManageable;

    invoke-interface {p0, p1}, Lcom/kakao/sdk/auth/TokenManageable;->b(Lcom/kakao/sdk/auth/model/OAuthToken;)V

    return-object p1

    :cond_0
    new-instance p0, Lretrofit2/HttpException;

    invoke-direct {p0, v0}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    sget-object p1, Lcom/kakao/sdk/auth/AuthApiManager;->f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/kakao/sdk/auth/AuthApiManager$Companion;->a(Lretrofit2/HttpException;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
