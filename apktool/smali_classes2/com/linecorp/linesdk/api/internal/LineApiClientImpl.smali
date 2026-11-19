.class public Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/linesdk/api/LineApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;
    }
.end annotation


# static fields
.field public static final e:Lcom/linecorp/linesdk/LineApiResponse;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

.field public final c:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

.field public final d:Lcom/linecorp/linesdk/internal/AccessTokenCache;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v1, Lcom/linecorp/linesdk/LineApiError;

    const-string v2, "access token is null"

    invoke-direct {v1, v2}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->e:Lcom/linecorp/linesdk/LineApiResponse;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;Lcom/linecorp/linesdk/internal/AccessTokenCache;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->b:Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;

    iput-object p3, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->c:Lcom/linecorp/linesdk/internal/nwclient/TalkApiClient;

    iput-object p4, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->d:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    return-void
.end method


# virtual methods
.method public final a(Lcom/linecorp/linesdk/openchat/OpenChatParameters;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/api/internal/a;

    invoke-direct {v0, p0, p1}, Lcom/linecorp/linesdk/api/internal/a;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;Lcom/linecorp/linesdk/openchat/OpenChatParameters;)V

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->c(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public final b()Lcom/linecorp/linesdk/LineApiResponse;
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/api/internal/b;

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/api/internal/b;-><init>(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;)V

    invoke-virtual {p0, v0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->c(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;
    .locals 3

    :try_start_0
    iget-object p0, p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->d:Lcom/linecorp/linesdk/internal/AccessTokenCache;

    invoke-virtual {p0}, Lcom/linecorp/linesdk/internal/AccessTokenCache;->a()Lcom/linecorp/linesdk/internal/InternalAccessToken;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    sget-object p0, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl;->e:Lcom/linecorp/linesdk/LineApiResponse;

    return-object p0

    :cond_0
    invoke-interface {p1, p0}, Lcom/linecorp/linesdk/api/internal/LineApiClientImpl$APIWithAccessToken;->a(Lcom/linecorp/linesdk/internal/InternalAccessToken;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/linecorp/linesdk/LineApiResponseCode;->INTERNAL_ERROR:Lcom/linecorp/linesdk/LineApiResponseCode;

    new-instance v0, Lcom/linecorp/linesdk/LineApiError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get access token fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lfc;->g(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/linecorp/linesdk/LineApiError;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/linecorp/linesdk/LineApiResponse;->a(Lcom/linecorp/linesdk/LineApiResponseCode;Lcom/linecorp/linesdk/LineApiError;)Lcom/linecorp/linesdk/LineApiResponse;

    move-result-object p0

    return-object p0
.end method
