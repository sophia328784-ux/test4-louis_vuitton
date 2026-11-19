.class Lcom/sightcall/universal/media/UploaderClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/media/UploaderClient$UploadCallback;,
        Lcom/sightcall/universal/media/UploaderClient$UploaderCallback;
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

    sput-object v0, Lcom/sightcall/universal/media/UploaderClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/media/UploaderClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method private static get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/UploaderApi;
    .locals 1

    const-class v0, Lcom/sightcall/universal/media/UploaderApi;

    invoke-static {v0, p0}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/media/UploaderApi;

    return-object p0
.end method

.method public static upload(Lcom/sightcall/universal/media/Metadata;Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V
    .locals 4

    sget-object v0, Lcom/sightcall/universal/media/UploaderClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "upload()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/sightcall/universal/api/Apis;->loggingInterceptor()Lcom/sightcall/universal/api/HttpLoggingInterceptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/api/HttpLoggingInterceptor;->getLevel()Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;->BODY:Lcom/sightcall/universal/api/HttpLoggingInterceptor$Level;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->i(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sightcall/universal/media/Metadata;->reference:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/sightcall/universal/media/UploaderClient$UploadCallback;->onMediaUploadError()V

    return-void

    :cond_1
    invoke-static {}, Lcom/sightcall/universal/Universal;->agent()Lcom/sightcall/universal/agent/UniversalAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/UniversalAgent;->get()Lcom/sightcall/universal/agent/Agent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->token()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sightcall/universal/agent/Agent;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->environment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/api/Environment;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    :goto_0
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->i:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->c(Lokhttp3/MediaType;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "metadata"

    invoke-static {p0}, Lcom/sightcall/universal/media/mapper/MetadataMappersKt;->toMedaDataFormat(Lcom/sightcall/universal/media/Metadata;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sightcall/universal/media/Media;->image()Ljava/io/File;

    move-result-object p1

    sget-object v2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "image/jpeg"

    invoke-static {v2}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    sget-object v3, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lokhttp3/RequestBody$Companion$asRequestBody$1;

    invoke-direct {v3, v2, p1}, Lokhttp3/RequestBody$Companion$asRequestBody$1;-><init>(Lokhttp3/MediaType;Ljava/io/File;)V

    sget-object p1, Lokhttp3/MultipartBody$Part;->c:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "file"

    const-string v2, "blob"

    invoke-static {p1, v2, v3}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    iget-object v2, v1, Lokhttp3/MultipartBody$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    move-result-object p1

    invoke-static {v0}, Lcom/sightcall/universal/media/UploaderClient;->get(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/media/UploaderApi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->uploadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->uploadToken()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/api/Headers$Authorization$Bearer;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$Bearer;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lcom/sightcall/universal/media/UploaderApi;->uploadPictures(Ljava/lang/String;Lcom/sightcall/universal/api/Headers$Authorization$Bearer;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/sightcall/universal/media/UploaderClient$1;

    invoke-direct {p1, p2}, Lcom/sightcall/universal/media/UploaderClient$1;-><init>(Lcom/sightcall/universal/media/UploaderClient$UploadCallback;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-void
.end method
