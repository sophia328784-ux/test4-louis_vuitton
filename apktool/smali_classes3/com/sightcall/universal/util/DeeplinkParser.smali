.class public abstract Lcom/sightcall/universal/util/DeeplinkParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;,
        Lcom/sightcall/universal/util/DeeplinkParser$UnsupportedUriException;
    }
.end annotation


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "DEEPLINK_PARSER"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static config(Landroid/net/Uri;Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;
    .locals 1

    new-instance v0, Lcom/sightcall/universal/model/Config;

    invoke-direct {v0}, Lcom/sightcall/universal/model/Config;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sightcall/universal/model/Config;->environment(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/model/Config;->uri(Landroid/net/Uri;)Lcom/sightcall/universal/model/Config;

    move-result-object p1

    invoke-static {p0}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getDisplayName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/model/Config;->reference(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p1

    invoke-static {p0}, Lcom/sightcall/pratik/extensions/UriExtensionsKt;->getCallId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sightcall/universal/model/Config;->calleeId(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p1

    const-string v0, "callNotStartedUrl"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sightcall/universal/model/Config;->callNotStartedUrl(Ljava/lang/String;)Lcom/sightcall/universal/model/Config;

    move-result-object p0

    return-object p0
.end method

.method private static expectedPathSegments(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v0, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Expected [%d] segments but got [%d] instead. Segments=%s"

    invoke-virtual {v0, p1, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static parse(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "parse(%s)"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_0

    sget-object p0, Lcom/sightcall/universal/util/EmptyLink;->Instance:Lcom/sightcall/universal/util/EmptyLink$Instance;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parseWithHttpScheme(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parseWithCustomScheme(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    return-object p0
.end method

.method private static parseWithCustomScheme(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "rtcc"

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sightcall/universal/util/DeeplinkParser;->parseWithHttpScheme(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "//"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/Environment;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/DeeplinkParser;->config(Landroid/net/Uri;Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    sget-object v1, Lcom/sightcall/httpclient/di/HttpClientModule;->Companion:Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sightcall/httpclient/di/HttpClientModule$Companion;->initBaseUrl(Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "register"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "token"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->Companion:Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;->create(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object v0, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Expected [token] as query parameter!"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :cond_3
    sget-object p0, Lcom/sightcall/universal/util/CallStepLink;->Companion:Lcom/sightcall/universal/util/CallStepLink$Companion;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/CallStepLink$Companion;->create(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    sget-object p0, Lcom/sightcall/universal/util/EmptyLink;->Instance:Lcom/sightcall/universal/util/EmptyLink$Instance;

    return-object p0
.end method

.method private static parseWithHttpScheme(Landroid/net/Uri;)Lcom/sightcall/universal/util/Deeplink;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/sightcall/universal/api/Environment;->with(Landroid/net/Uri;)Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sightcall/universal/util/DeeplinkParser;->config(Landroid/net/Uri;Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/model/Config;

    move-result-object v0

    sget-object v1, Lcom/sightcall/httpclient/di/HttpClientModule;->Companion:Lcom/sightcall/httpclient/di/HttpClientModule$Companion;

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Config;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sightcall/universal/api/Environment;->baseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sightcall/httpclient/di/HttpClientModule$Companion;->initBaseUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object p0, Lcom/sightcall/universal/util/EmptyLink;->Instance:Lcom/sightcall/universal/util/EmptyLink$Instance;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "app_webrtc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "noapp_webrtc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v9, 0x7

    goto :goto_0

    :sswitch_2
    const-string v4, "noapp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v9, 0x6

    goto :goto_0

    :sswitch_3
    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_4
    const-string v4, "call"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    move v9, v5

    goto :goto_0

    :sswitch_5
    const-string v4, "sso"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    move v9, v6

    goto :goto_0

    :sswitch_6
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_0

    :cond_7
    move v9, v7

    goto :goto_0

    :sswitch_7
    const-string v4, "register"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    move v9, v8

    goto :goto_0

    :sswitch_8
    const-string v4, "mobile"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_0

    :cond_9
    move v9, v2

    :goto_0
    packed-switch v9, :pswitch_data_0

    sget-object v0, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "Unsupported action [%s]"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$UnsupportedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$UnsupportedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :pswitch_0
    invoke-static {v1, v7}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object p0, Lcom/sightcall/universal/util/DebugLink;->Companion:Lcom/sightcall/universal/util/DebugLink$Companion;

    invoke-virtual {p0, v2}, Lcom/sightcall/universal/util/DebugLink$Companion;->create(Z)Lcom/sightcall/universal/util/DebugLink;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v1, Lcom/sightcall/universal/util/DeeplinkParser;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v2, "Unsupported debug value [%s]"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :cond_b
    sget-object p0, Lcom/sightcall/universal/util/DebugLink;->Companion:Lcom/sightcall/universal/util/DebugLink$Companion;

    invoke-virtual {p0, v8}, Lcom/sightcall/universal/util/DebugLink$Companion;->create(Z)Lcom/sightcall/universal/util/DebugLink;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :pswitch_1
    invoke-static {v1, v7}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->Companion:Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;

    invoke-virtual {v1, p0, v0, v2}, Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;->create(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :cond_d
    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :pswitch_2
    invoke-static {v1, v7}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v2

    if-nez v2, :cond_11

    invoke-static {v1, v6}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v2

    const-string v3, "n"

    if-eqz v2, :cond_e

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_e
    invoke-static {v1, v6}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v2

    const-string v4, "w"

    if-eqz v2, :cond_f

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    :cond_f
    invoke-static {v1, v5}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_1

    :cond_10
    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :cond_11
    :goto_1
    sget-object p0, Lcom/sightcall/universal/util/CallStepLink;->Companion:Lcom/sightcall/universal/util/CallStepLink$Companion;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/CallStepLink$Companion;->create(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-static {v1, v7}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v1, Lcom/sightcall/universal/util/AgentRegistrationStepLink;->Companion:Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;

    invoke-virtual {v1, p0, v0, v8}, Lcom/sightcall/universal/util/AgentRegistrationStepLink$Companion;->create(Ljava/lang/String;Lcom/sightcall/universal/model/Config;Z)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :cond_12
    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :pswitch_4
    invoke-static {v1, v7}, Lcom/sightcall/universal/util/DeeplinkParser;->expectedPathSegments(Ljava/util/List;I)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object p0, Lcom/sightcall/universal/util/CallStepLink;->Companion:Lcom/sightcall/universal/util/CallStepLink$Companion;

    invoke-virtual {p0, v0}, Lcom/sightcall/universal/util/CallStepLink$Companion;->create(Lcom/sightcall/universal/model/Config;)Lcom/sightcall/universal/util/StepLink;

    move-result-object p0

    return-object p0

    :cond_13
    new-instance v0, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;

    invoke-direct {v0, p0}, Lcom/sightcall/universal/util/DeeplinkParser$MalformedUriException;-><init>(Landroid/net/Uri;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x3fb56f5e -> :sswitch_8
        -0x2923d15d -> :sswitch_7
        0x62 -> :sswitch_6
        0x1be0f -> :sswitch_5
        0x2e7a5e -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x64208c0 -> :sswitch_2
        0x3004daec -> :sswitch_1
        0x52864a6b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method
