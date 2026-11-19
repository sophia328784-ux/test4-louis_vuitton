.class public final Lcom/kakao/sdk/auth/AuthApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kakao/sdk/auth/AuthApiClient$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u0008B\u001b\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/kakao/sdk/auth/AuthApiClient;",
        "",
        "Lcom/kakao/sdk/auth/AuthApiManager;",
        "manager",
        "Lcom/kakao/sdk/auth/TokenManagerProvider;",
        "tokenManagerProvider",
        "<init>",
        "(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;)V",
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
.field public static final b:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

.field public static final c:Lkotlin/Lazy;


# instance fields
.field public final a:Lcom/kakao/sdk/auth/AuthApiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kakao/sdk/auth/AuthApiClient$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->b:Lcom/kakao/sdk/auth/AuthApiClient$Companion;

    sget-object v0, Lcom/kakao/sdk/auth/AuthApiClient$Companion$instance$2;->c:Lcom/kakao/sdk/auth/AuthApiClient$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/kakao/sdk/auth/AuthApiClient;->c:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v0, v1, v0}, Lcom/kakao/sdk/auth/AuthApiClient;-><init>(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/kakao/sdk/auth/AuthApiClient;->a:Lcom/kakao/sdk/auth/AuthApiManager;

    return-void
.end method

.method public constructor <init>(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Lcom/kakao/sdk/auth/AuthApiManager;->f:Lcom/kakao/sdk/auth/AuthApiManager$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/kakao/sdk/auth/AuthApiManager;->g:Lkotlin/Lazy;

    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/auth/AuthApiManager;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lcom/kakao/sdk/auth/TokenManagerProvider;->b:Lcom/kakao/sdk/auth/TokenManagerProvider$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/kakao/sdk/auth/TokenManagerProvider;->c:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/kakao/sdk/auth/TokenManagerProvider;

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/kakao/sdk/auth/AuthApiClient;-><init>(Lcom/kakao/sdk/auth/AuthApiManager;Lcom/kakao/sdk/auth/TokenManagerProvider;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/kakao/sdk/auth/AuthApiClient;->a:Lcom/kakao/sdk/auth/AuthApiManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/kakao/sdk/auth/AuthApiManager;->a:Lcom/kakao/sdk/auth/AuthApi;

    iget-object v1, p0, Lcom/kakao/sdk/auth/AuthApiManager;->c:Lcom/kakao/sdk/common/model/ApplicationInfo;

    move-object v2, v1

    invoke-interface {v2}, Lcom/kakao/sdk/common/model/ApplicationInfo;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kakao/sdk/auth/AuthApiManager;->d:Lcom/kakao/sdk/common/model/ContextInfo;

    invoke-interface {v3}, Lcom/kakao/sdk/common/model/ContextInfo;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/kakao/sdk/common/model/ApplicationInfo;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcom/kakao/sdk/auth/AuthApiManager;->e:Lcom/kakao/sdk/common/model/ApprovalType;

    invoke-virtual {v2}, Lcom/kakao/sdk/common/model/ApprovalType;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "authorization_code"

    move-object v5, p2

    move-object v2, v3

    move-object v3, p1

    invoke-interface/range {v0 .. v7}, Lcom/kakao/sdk/auth/AuthApi;->issueAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p1

    new-instance p2, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;

    invoke-direct {p2, p3, p0}, Lcom/kakao/sdk/auth/AuthApiManager$issueAccessToken$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/kakao/sdk/auth/AuthApiManager;)V

    invoke-interface {p1, p2}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
