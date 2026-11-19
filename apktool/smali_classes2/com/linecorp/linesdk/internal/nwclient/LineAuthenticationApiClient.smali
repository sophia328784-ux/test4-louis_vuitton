.class public Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;,
        Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;
    }
.end annotation


# static fields
.field public static final f:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final g:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final h:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public static final j:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

.field public final c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

.field public final d:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

.field public final e:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$VerificationResultParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$RefreshTokenResultParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->g:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/OpenIdDiscoveryDocumentParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->i:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/JWKSetParser;

    invoke-direct {v0}, Lcom/linecorp/linesdk/internal/nwclient/JsonToObjectBaseResponseParser;-><init>()V

    sput-object v0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->j:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    const-string v1, "5.11.1"

    invoke-direct {v0, p1, v1}, Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient$IssueAccessTokenResultParser;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->c:Lcom/linecorp/linesdk/internal/nwclient/core/ResponseDataParser;

    new-instance p1, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    invoke-direct {p1, p0}, Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;-><init>(Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;)V

    iput-object p1, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->d:Lcom/linecorp/linesdk/internal/nwclient/OpenIdSigningKeyResolver;

    iput-object p3, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->b:Lcom/linecorp/linesdk/internal/nwclient/core/ChannelServiceHttpClient;

    iput-object p2, p0, Lcom/linecorp/linesdk/internal/nwclient/LineAuthenticationApiClient;->e:Landroid/net/Uri;

    return-void
.end method
