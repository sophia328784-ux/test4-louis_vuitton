.class Lcom/sightcall/universal/media/GroupClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/GroupClient$GroupCallback;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UploaderClient"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/GroupClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/GroupClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method public static createGroup(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/PictureGroupV3Request;Lcom/sightcall/universal/media/GroupClient$GroupCallback;)V
    .locals 2

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->loggingInterceptor()Lcom/sightcall/universal/api/HttpLoggingInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->getLevel()Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->BODY:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/extensions/UniversalExtensionKt;->getSession()Lcom/sightcall/universal/model/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/model/Session;->config()Lcom/sightcall/universal/model/Config;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/sightcall/universal/media/GroupClient;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/UploaderApi;

    move-result-object v0

    invoke-static {v1}, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sightcall/universal/api/Headers$Authorization$PlaneTokenV3;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/sightcall/universal/media/UploaderApi;->createPictureGroup(Ljava/lang/String;Lcom/sightcall/universal/media/PictureGroupV3Request;)Lretrofit2/Call;

    move-result-object p1

    new-instance v0, Lcom/sightcall/universal/media/GroupClient$1;

    invoke-direct {v0, p2, p0}, Lcom/sightcall/universal/media/GroupClient$1;-><init>(Lcom/sightcall/universal/media/GroupClient$GroupCallback;Lcom/sightcall/universal/media/Metadata;)V

    invoke-interface {p1, v0}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method

.method private static get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/UploaderApi;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/UploaderApi;

    invoke-static {v0, p0}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/UploaderApi;

    return-object p0
.end method
