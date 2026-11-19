.class public Llv/nfc/reader/TagNfcExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "SdkNfcReader"


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private final gson:Lcom/google/gson/Gson;

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tagId:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    iput-object v0, p0, Llv/nfc/reader/TagNfcExecutor;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static synthetic a(Llv/nfc/reader/TagNfcExecutor;Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llv/nfc/reader/TagNfcExecutor;->lambda$scanTag$0(Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V

    return-void
.end method

.method public static synthetic b(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V
    .locals 0

    invoke-static {p0, p1}, Llv/nfc/reader/TagNfcExecutor;->lambda$sendSuccessResult$1(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V

    return-void
.end method

.method private closeNfcSafely(Landroid/nfc/tech/NfcV;)V
    .locals 0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/nfc/tech/NfcV;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/nfc/tech/NfcV;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private getClient()Lokhttp3/OkHttpClient;
    .locals 1

    new-instance p0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {p0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BASIC:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->d:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lokhttp3/OkHttpClient$Builder;-><init>(Lokhttp3/OkHttpClient;)V

    new-instance p0, Lokhttp3/OkHttpClient;

    invoke-direct {p0, v0}, Lokhttp3/OkHttpClient;-><init>(Lokhttp3/OkHttpClient$Builder;)V

    return-object p0
.end method

.method private synthetic lambda$scanTag$0(Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V
    .locals 8

    :try_start_0
    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagInput;->getNfc()Landroid/nfc/tech/NfcV;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/tech/NfcV;->getTag()Landroid/nfc/Tag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/Tag;->getId()[B

    move-result-object v1

    iput-object v1, p0, Llv/nfc/reader/TagNfcExecutor;->tagId:[B

    invoke-virtual {v0}, Landroid/nfc/tech/NfcV;->connect()V

    new-instance v1, Llv/nfc/reader/utils/LVChallengeGenerator;

    invoke-direct {v1}, Llv/nfc/reader/utils/LVChallengeGenerator;-><init>()V

    invoke-virtual {v1}, Llv/nfc/reader/utils/LVChallengeGenerator;->generateChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagInput;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1}, Llv/nfc/reader/TagNfcExecutor;->nfcStep1(Landroid/nfc/tech/NfcV;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Llv/nfc/reader/TagNfcExecutor;->tagCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llv/nfc/reader/data/models/TagCheckResponse;

    move-result-object v1

    invoke-virtual {v1}, Llv/nfc/reader/data/models/TagCheckResponse;->getData()Llv/nfc/reader/data/models/TagCheckResponse$Data;

    move-result-object v2

    invoke-virtual {v2}, Llv/nfc/reader/data/models/TagCheckResponse$Data;->getApdu()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Llv/nfc/reader/TagNfcExecutor;->nfcStep2(Landroid/nfc/tech/NfcV;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0}, Llv/nfc/reader/TagNfcExecutor;->readUID(Landroid/nfc/tech/NfcV;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Llv/nfc/reader/data/models/TagCheckResponse;->getData()Llv/nfc/reader/data/models/TagCheckResponse$Data;

    move-result-object v1

    invoke-virtual {v1}, Llv/nfc/reader/data/models/TagCheckResponse$Data;->getConnectionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagInput;->getCxidAllowList()Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, p0

    :try_start_1
    invoke-direct/range {v2 .. v7}, Llv/nfc/reader/TagNfcExecutor;->tagInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Llv/nfc/reader/data/models/LVTagResult;

    move-result-object p0

    invoke-static {p2, p0}, Llv/nfc/reader/TagNfcExecutor;->sendSuccessResult(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V

    invoke-virtual {v0}, Landroid/nfc/tech/NfcV;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    :goto_0
    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p0

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagInput;->getNfc()Landroid/nfc/tech/NfcV;

    move-result-object p1

    invoke-direct {v2, p1}, Llv/nfc/reader/TagNfcExecutor;->closeNfcSafely(Landroid/nfc/tech/NfcV;)V

    invoke-interface {p2, p0}, Llv/nfc/reader/TagNfcExecutorCallback;->error(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic lambda$sendSuccessResult$1(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V
    .locals 0

    invoke-interface {p0, p1}, Llv/nfc/reader/TagNfcExecutorCallback;->success(Llv/nfc/reader/data/models/LVTagResult;)V

    return-void
.end method

.method private nfcStep1(Landroid/nfc/tech/NfcV;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llv/nfc/reader/data/exceptions/LVTagException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Llv/nfc/reader/utils/LVByteManipulation;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x14

    new-array v0, v0, [B

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Llv/nfc/reader/TagNfcExecutor;->tagId:[B

    const/16 v2, 0x8

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p0, v1, [B

    fill-array-data p0, :array_1

    const/16 v2, 0xb

    invoke-static {p0, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0xe

    const/4 v1, 0x6

    invoke-static {p2, v3, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object p0

    new-array p1, v1, [B

    const/4 p2, 0x2

    invoke-static {p0, p2, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Llv/nfc/reader/utils/LVByteManipulation;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Llv/nfc/reader/data/exceptions/LVTagException;

    sget-object p2, Llv/nfc/reader/data/exceptions/LVReadTagError;->lostTag:Llv/nfc/reader/data/exceptions/LVReadTagError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Llv/nfc/reader/data/exceptions/LVTagException;-><init>(Llv/nfc/reader/data/exceptions/LVReadTagError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x20t
        -0x28t
        0x16t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        -0x80t
        0x0t
    .end array-data
.end method

.method private nfcStep2(Landroid/nfc/tech/NfcV;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llv/nfc/reader/data/exceptions/LVTagException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Llv/nfc/reader/utils/LVByteManipulation;->hexToBytes(Ljava/lang/String;)[B

    move-result-object p2

    const/16 v0, 0x16

    new-array v0, v0, [B

    const/4 v1, 0x3

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Llv/nfc/reader/TagNfcExecutor;->tagId:[B

    const/16 v2, 0x8

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p0, 0xb

    aput-byte v1, v0, p0

    const/16 p0, 0xc

    const/16 v1, -0x70

    aput-byte v1, v0, p0

    const/16 p0, 0xd

    aput-byte v3, v0, p0

    const/16 p0, 0xe

    invoke-static {p2, v3, v0, p0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object p0

    invoke-static {p0}, Llv/nfc/reader/utils/LVByteManipulation;->bytesToBase64([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Llv/nfc/reader/data/exceptions/LVTagException;

    sget-object p2, Llv/nfc/reader/data/exceptions/LVReadTagError;->lostTag:Llv/nfc/reader/data/exceptions/LVReadTagError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Llv/nfc/reader/data/exceptions/LVTagException;-><init>(Llv/nfc/reader/data/exceptions/LVReadTagError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :array_0
    .array-data 1
        0x20t
        -0x28t
        0x16t
    .end array-data
.end method

.method private readUID(Landroid/nfc/tech/NfcV;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llv/nfc/reader/data/exceptions/LVTagException;
        }
    .end annotation

    const/16 v0, 0xa

    :try_start_0
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object p0, p0, Llv/nfc/reader/TagNfcExecutor;->tagId:[B

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {p0, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1, v0}, Landroid/nfc/tech/NfcV;->transceive([B)[B

    move-result-object p0

    new-array p1, v3, [B

    invoke-static {p0, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1}, Llv/nfc/reader/utils/LVByteManipulation;->reverseArray([B)[B

    move-result-object p0

    invoke-static {p0}, Llv/nfc/reader/utils/LVByteManipulation;->bytesToHex([B)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Llv/nfc/reader/data/exceptions/LVTagException;

    sget-object v0, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Llv/nfc/reader/data/exceptions/LVTagException;-><init>(Llv/nfc/reader/data/exceptions/LVReadTagError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x20t
        0x2bt
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private static sendSuccessResult(Llv/nfc/reader/TagNfcExecutorCallback;Llv/nfc/reader/data/models/LVTagResult;)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Laa0;

    const/16 v2, 0x1d

    invoke-direct {v1, p0, p1, v2}, Laa0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private tagCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Llv/nfc/reader/data/models/TagCheckResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llv/nfc/reader/data/exceptions/LVNetworkException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string v0, "tag/check"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)V

    const-string v0, "challenge"

    invoke-virtual {p1, v0, p2}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "apduRequest"

    invoke-virtual {p1, p2, p3}, Lokhttp3/HttpUrl$Builder;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object p1

    iget-object p2, p0, Llv/nfc/reader/TagNfcExecutor;->headers:Ljava/util/Map;

    invoke-static {p1, p2}, Llv/nfc/reader/utils/LVConstants;->createRequest(Lokhttp3/HttpUrl;Ljava/util/Map;)Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Llv/nfc/reader/TagNfcExecutor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    iget-boolean p2, p1, Lokhttp3/Response;->r:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget p3, p1, Lokhttp3/Response;->e:I

    if-eqz p2, :cond_2

    :try_start_1
    iget-object p1, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Llv/nfc/reader/TagNfcExecutor;->gson:Lcom/google/gson/Gson;

    const-class p2, Llv/nfc/reader/data/models/TagCheckResponse;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llv/nfc/reader/data/models/TagCheckResponse;

    return-object p0

    :cond_0
    new-instance p0, Llv/nfc/reader/data/exceptions/LVNetworkException;

    sget-object p1, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {p1}, Llv/nfc/reader/data/exceptions/LVReadTagError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Empty Body"

    invoke-direct {p0, p1, p3, p2}, Llv/nfc/reader/data/exceptions/LVNetworkException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Llv/nfc/reader/data/exceptions/LVNetworkException;

    sget-object p1, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {p1}, Llv/nfc/reader/data/exceptions/LVReadTagError;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No Body"

    invoke-direct {p0, p1, p3, p2}, Llv/nfc/reader/data/exceptions/LVNetworkException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Llv/nfc/reader/data/exceptions/LVNetworkException;

    sget-object p2, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {p2}, Llv/nfc/reader/data/exceptions/LVReadTagError;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lokhttp3/Response;->d:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p1}, Llv/nfc/reader/data/exceptions/LVNetworkException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Llv/nfc/reader/data/exceptions/LVNetworkException;

    sget-object p2, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    invoke-virtual {p2}, Llv/nfc/reader/data/exceptions/LVReadTagError;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p3, p0}, Llv/nfc/reader/data/exceptions/LVNetworkException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    throw p1
.end method

.method private tagInformation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Llv/nfc/reader/data/models/LVTagResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Llv/nfc/reader/data/models/LVTagResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llv/nfc/reader/data/exceptions/LVTagException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lokhttp3/HttpUrl;->j:Lokhttp3/HttpUrl$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lokhttp3/HttpUrl$Companion;->d(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->g()Lokhttp3/HttpUrl$Builder;

    move-result-object p1

    const-string v0, "tag/information"

    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl$Builder;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    move-result-object p1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "APDU"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "connectionId"

    invoke-virtual {v0, p2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "uid"

    invoke-virtual {v0, p2, p4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Llv/nfc/reader/TagNfcExecutor;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p2, p5}, Lcom/google/gson/Gson;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p2

    const-string p3, "cxidAllowList"

    invoke-virtual {v0, p3, p2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/json; charset=utf-8"

    sget-object p4, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p4, 0x0

    :try_start_1
    invoke-static {p3}, Lokhttp3/MediaType$Companion;->a(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object p3, p4

    :goto_0
    :try_start_2
    sget-object p5, Lokhttp3/RequestBody;->a:Lokhttp3/RequestBody$Companion;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p3}, Lokhttp3/RequestBody$Companion;->b(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody$Companion$toRequestBody$3;

    move-result-object p2

    iget-object p3, p0, Llv/nfc/reader/TagNfcExecutor;->headers:Ljava/util/Map;

    invoke-static {p1, p3, p2}, Llv/nfc/reader/utils/LVConstants;->createPostRequest(Lokhttp3/HttpUrl;Ljava/util/Map;Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    iget-object p2, p0, Llv/nfc/reader/TagNfcExecutor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/internal/connection/RealCall;

    move-result-object p1

    invoke-static {p1}, Lcom/dynatrace/android/callback/OkCallback;->b(Lokhttp3/Call;)Lokhttp3/Response;

    move-result-object p1

    iget-boolean p2, p1, Lokhttp3/Response;->r:Z

    if-eqz p2, :cond_0

    iget-object p0, p0, Llv/nfc/reader/TagNfcExecutor;->gson:Lcom/google/gson/Gson;

    iget-object p1, p1, Lokhttp3/Response;->h:Lokhttp3/ResponseBody;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-class p2, Llv/nfc/reader/data/models/LVTagResult;

    invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Llv/nfc/reader/data/models/LVTagResult;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :cond_0
    return-object p4

    :catch_1
    move-exception p0

    new-instance p1, Llv/nfc/reader/data/exceptions/LVTagException;

    sget-object p2, Llv/nfc/reader/data/exceptions/LVReadTagError;->technicalError:Llv/nfc/reader/data/exceptions/LVReadTagError;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ":"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {p1, p2, p3, p0}, Llv/nfc/reader/data/exceptions/LVTagException;-><init>(Llv/nfc/reader/data/exceptions/LVReadTagError;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public scanTag(Llv/nfc/reader/data/models/LVTagInput;Llv/nfc/reader/TagNfcExecutorCallback;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-virtual {p1}, Llv/nfc/reader/data/models/LVTagInput;->getHeaders()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Llv/nfc/reader/TagNfcExecutor;->headers:Ljava/util/Map;

    invoke-direct {p0}, Llv/nfc/reader/TagNfcExecutor;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Llv/nfc/reader/TagNfcExecutor;->client:Lokhttp3/OkHttpClient;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lb5;

    const/16 v2, 0x13

    invoke-direct {v1, p0, p1, p2, v2}, Lb5;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
