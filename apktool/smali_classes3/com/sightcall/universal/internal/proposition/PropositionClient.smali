.class Lcom/sightcall/universal/internal/proposition/PropositionClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;,
        Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;,
        Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;
    }
.end annotation


# static fields
.field private static final log:Lnet/rtccloud/sdk/util/OldLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PropositionClient"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/internal/proposition/PropositionClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lnet/rtccloud/sdk/util/OldLogger;
    .locals 1

    sget-object v0, Lcom/sightcall/universal/internal/proposition/PropositionClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    return-object v0
.end method

.method public static accept(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/model/Session;",
            "Lcom/sightcall/universal/internal/proposition/Proposition;",
            "Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;",
            ")",
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/proposition/PropositionClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "accept()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->acceptUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;

    move-result-object p0

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->patchAccept()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->patch(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object p0

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->acceptUrl:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->acceptV3(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    :goto_0
    new-instance p1, Lcom/sightcall/universal/internal/proposition/PropositionClient$1;

    invoke-direct {p1, p2}, Lcom/sightcall/universal/internal/proposition/PropositionClient$1;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionClient$AcceptCallback;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-object p0
.end method

.method public static api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;
    .locals 1

    const-class v0, Lcom/sightcall/universal/internal/proposition/PropositionApi;

    invoke-static {v0, p0}, Lcom/sightcall/universal/api/Apis;->get(Ljava/lang/Class;Lcom/sightcall/universal/api/Environment;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sightcall/universal/internal/proposition/PropositionApi;

    return-object p0
.end method

.method public static cancel(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;)Lretrofit2/Call;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/model/Session;",
            "Lcom/sightcall/universal/internal/proposition/Proposition;",
            "Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;",
            ")",
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/proposition/PropositionClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "cancel()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    iget-object v1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->acceptUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;

    move-result-object p0

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    invoke-static {}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->patchCancel()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->patch(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object p0

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->cancelUrl:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->cancelV3(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object p0

    :goto_0
    new-instance p1, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;

    invoke-direct {p1, p2}, Lcom/sightcall/universal/internal/proposition/PropositionClient$2;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionClient$CancelCallback;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-object p0
.end method

.method private static patchAccept()Lokhttp3/RequestBody;
    .locals 2

    sget-object v0, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "{\"proposition\":{\"state\":\"accepted\"}}"

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v0

    return-object v0
.end method

.method private static patchCancel()Lokhttp3/RequestBody;
    .locals 2

    sget-object v0, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "application/json"

    invoke-static {v0}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    const-string v1, "{\"proposition\":{\"state\":\"canceled\"}}"

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->c(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Lcom/sightcall/universal/model/Session;Lcom/sightcall/universal/internal/proposition/Proposition;Landroid/graphics/Bitmap;Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;)Lretrofit2/Call;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/universal/model/Session;",
            "Lcom/sightcall/universal/internal/proposition/Proposition;",
            "Landroid/graphics/Bitmap;",
            "Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;",
            ")",
            "Lretrofit2/Call<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lcom/sightcall/universal/internal/proposition/PropositionClient;->log:Lnet/rtccloud/sdk/util/OldLogger;

    const-string v1, "sign()"

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    sget-object p2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "image/png"

    invoke-static {p2}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    sget-object v5, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v6, v4

    invoke-static {v6, p2, v4}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "toByteArray in "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadUrl:Ljava/lang/String;

    const-string v1, "file"

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadToken:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v0, Lokhttp3/MultipartBody;->i:Lokhttp3/MediaType;

    invoke-virtual {p2, v0}, Lokhttp3/MultipartBody$Builder;->c(Lokhttp3/MediaType;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "name"

    invoke-virtual {p2, v2, v0}, Lokhttp3/MultipartBody$Builder;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v2, "image/jpeg"

    invoke-static {v2}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v0

    invoke-static {v3, v2, v0}, Lokhttp3/RequestBody$Companion;->a(ILokhttp3/MediaType;[B)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object v0

    sget-object v2, Lokhttp3/MultipartBody$Part;->c:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "blob"

    invoke-static {v1, v2, v0}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    iget-object v1, p2, Lokhttp3/MultipartBody$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Lokhttp3/MultipartBody$Builder;->b()Lokhttp3/MultipartBody;

    move-result-object p2

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object p0

    iget-object v0, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->signatureUploadToken:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1, p2}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->uploadSignV3(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object p0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sightcall/universal/model/Session;->environment()Lcom/sightcall/universal/api/Environment;

    move-result-object v0

    invoke-static {v0}, Lcom/sightcall/universal/internal/proposition/PropositionClient;->api(Lcom/sightcall/universal/api/Environment;)Lcom/sightcall/universal/internal/proposition/PropositionApi;

    move-result-object v0

    iget-object p0, p0, Lcom/sightcall/universal/model/Session;->config:Lcom/sightcall/universal/model/Config;

    invoke-virtual {p0}, Lcom/sightcall/universal/model/Config;->hash()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;->with(Ljava/lang/String;)Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;

    move-result-object p0

    iget-object p1, p1, Lcom/sightcall/universal/internal/proposition/Proposition;->id:Ljava/lang/String;

    sget-object v2, Lokhttp3/MultipartBody$Part;->c:Lokhttp3/MultipartBody$Part$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v1, p2}, Lokhttp3/MultipartBody$Part$Companion;->b(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lcom/sightcall/universal/internal/proposition/PropositionApi;->sign(Lcom/sightcall/universal/api/Headers$Authorization$TokenReference;Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object p0

    :goto_1
    new-instance p1, Lcom/sightcall/universal/internal/proposition/PropositionClient$3;

    invoke-direct {p1, p3}, Lcom/sightcall/universal/internal/proposition/PropositionClient$3;-><init>(Lcom/sightcall/universal/internal/proposition/PropositionClient$SignCallback;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->p(Lretrofit2/Callback;)V

    return-object p0
.end method
