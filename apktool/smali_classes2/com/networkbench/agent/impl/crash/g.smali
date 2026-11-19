.class public Lcom/networkbench/agent/impl/crash/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/networkbench/agent/impl/crash/f;
.implements Lcom/networkbench/agent/impl/harvest/NBSUploadDataInterface;


# static fields
.field public static a:Landroid/content/Context;

.field public static b:Ljava/lang/String;

.field private static final d:Lcom/networkbench/agent/impl/c/e;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Lcom/networkbench/agent/impl/crash/g;


# instance fields
.field c:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;

.field private g:Lcom/networkbench/agent/impl/crash/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/networkbench/agent/impl/c/f;->a()Lcom/networkbench/agent/impl/c/e;

    move-result-object v0

    sput-object v0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/networkbench/agent/impl/crash/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "NBSCrashStore"

    sput-object v0, Lcom/networkbench/agent/impl/crash/g;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/networkbench/agent/impl/crash/j;

    sget-object v1, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    sget-object v2, Lcom/networkbench/agent/impl/crash/g;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/networkbench/agent/impl/crash/j;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    return-void
.end method

.method public static a()Lcom/networkbench/agent/impl/crash/g;
    .locals 1

    .line 233
    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->f:Lcom/networkbench/agent/impl/crash/g;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/networkbench/agent/impl/crash/g;

    invoke-direct {v0}, Lcom/networkbench/agent/impl/crash/g;-><init>()V

    sput-object v0, Lcom/networkbench/agent/impl/crash/g;->f:Lcom/networkbench/agent/impl/crash/g;

    .line 235
    :cond_0
    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->f:Lcom/networkbench/agent/impl/crash/g;

    return-object v0
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonArray;I)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    .line 278
    invoke-virtual {p1, p2}, Lcom/networkbench/com/google/gson/JsonArray;->get(I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0

    .line 279
    :cond_0
    const-string p0, "error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonObject;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 276
    invoke-virtual {p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    return-object p0

    .line 277
    :cond_0
    const-string p0, "error getElementFromJO"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonArray;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/16 v0, 0xe

    .line 258
    invoke-direct {p0, p1, v0}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 259
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private a(Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/agent/impl/b/a;)Ljava/lang/String;
    .locals 5

    .line 260
    const-string v0, "NBSCrashReporter  seriesData :"

    .line 261
    const-string v1, ""

    if-eqz p1, :cond_3

    const/16 v2, 0x11

    .line 262
    :try_start_0
    invoke-direct {p0, p1, v2}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;I)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 264
    new-instance p1, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {p1}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1, p0}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonObject()Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object p0

    .line 266
    const-string p1, "session_id"

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p1

    .line 267
    const-string v2, "action_id"

    invoke-virtual {p0, v2}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v2

    .line 268
    const-string v3, "features"

    invoke-virtual {p0, v3}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object v3

    .line 269
    const-string v4, "view_id"

    invoke-virtual {p0, v4}, Lcom/networkbench/com/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    if-eqz p1, :cond_3

    .line 270
    new-instance v4, Lcom/networkbench/agent/impl/k/b;

    invoke-virtual {p1}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/networkbench/agent/impl/k/b;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/networkbench/agent/impl/k/b;->c:Ljava/lang/String;

    :cond_0
    if-eqz p0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/networkbench/agent/impl/k/b;->b:Ljava/lang/String;

    :cond_1
    if-eqz v3, :cond_2

    .line 273
    invoke-virtual {v3}, Lcom/networkbench/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/networkbench/agent/impl/k/b;->e:Ljava/lang/String;

    .line 274
    :cond_2
    invoke-virtual {p2, v4}, Lcom/networkbench/agent/impl/b/a;->a(Lcom/networkbench/agent/impl/k/b;)V

    .line 275
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/k/b;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/networkbench/agent/impl/c/g;->A(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-object v1
.end method

.method private a(J)V
    .locals 0

    .line 241
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 242
    sget-object p1, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "Exception occur in blockCrashHandlerForUpload while waiting to send crash"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 232
    sput-object p0, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/Runnable;Z)V
    .locals 0

    .line 236
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 237
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 p1, 0xbb8

    .line 238
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 239
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 240
    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "Exception occur while waiting to send crash"

    invoke-interface {p0, p2, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 243
    new-instance p0, Lcom/networkbench/com/google/gson/JsonParser;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonParser;-><init>()V

    invoke-virtual {p0, p1}, Lcom/networkbench/com/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonElement;

    move-result-object p0

    .line 244
    invoke-virtual {p0}, Lcom/networkbench/com/google/gson/JsonElement;->getAsJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p0

    return-object p0

    .line 245
    :cond_0
    const-string p0, "crash message error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/networkbench/com/google/gson/JsonParseException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 246
    new-instance p0, Lcom/networkbench/com/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/networkbench/com/google/gson/JsonObject;-><init>()V

    .line 247
    new-instance p2, Lcom/networkbench/com/google/gson/JsonArray;

    invoke-direct {p2}, Lcom/networkbench/com/google/gson/JsonArray;-><init>()V

    .line 248
    invoke-virtual {p2, p1}, Lcom/networkbench/com/google/gson/JsonArray;->add(Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 249
    const-string p1, "data"

    invoke-virtual {p0, p1, p2}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 250
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result p1

    const-string p2, "app"

    const-string v0, "dev"

    const-string v1, "did"

    if-eqz p1, :cond_0

    .line 251
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 253
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    .line 254
    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->o()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/networkbench/com/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getDeviceInformation()Lcom/networkbench/agent/impl/harvest/DeviceInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/DeviceInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    .line 256
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getApplicationInformation()Lcom/networkbench/agent/impl/harvest/ApplicationInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/harvest/ApplicationInformation;->asSocketJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/networkbench/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/networkbench/com/google/gson/JsonElement;)V

    return-object p0

    .line 257
    :cond_1
    const-string p0, "crash message error"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/networkbench/agent/impl/crash/g;->c:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;

    if-eqz p0, :cond_0

    .line 282
    invoke-interface {p0, p1, p2}, Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;->errorEventFeedBack(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/crash/c;Z)V
    .locals 5

    invoke-static {}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->getInstance()Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->d()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/networkbench/agent/impl/crash/anomalous/AnomalousCallBackControl;->answerAnomalousCallBack(ILjava/lang/String;Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;)V

    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/ab;->c(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "reportCrash debugLog has error"

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->f()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TingyunSDK_crash"

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->aC()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TingyunSDK_OOM"

    invoke-static {v0, v2}, Lcom/networkbench/agent/impl/NBSAppAgent;->debugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v0}, Lcom/networkbench/agent/impl/c/g;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/networkbench/agent/impl/crash/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object v0

    if-nez v0, :cond_5

    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p1, "not init the sdk, skip report"

    invoke-interface {p0, p1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/networkbench/agent/impl/crash/g;->isEnableUpload()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "report crash start"

    invoke-interface {v0, v1}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/p;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/networkbench/agent/impl/crash/e;->b(Ljava/lang/String;)V

    sget-boolean v1, Lcom/networkbench/agent/impl/plugin/f/h;->f:Z

    if-eqz v1, :cond_8

    new-instance v1, Lcom/networkbench/agent/impl/plugin/f/b;

    sget-object v2, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/networkbench/agent/impl/plugin/f/b;-><init>(Lcom/networkbench/agent/impl/crash/c;Landroid/content/Context;)V

    invoke-static {v1}, Lcom/networkbench/agent/impl/plugin/f/h;->a(Lcom/networkbench/agent/impl/plugin/f/i;)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/plugin/f/i;->d()V

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/networkbench/agent/impl/crash/g;->a(J)V

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/plugin/f/b;->b()V

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->e()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scene store value:"

    invoke-static {v2, v1, v0}, Lz81;->j(Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/c/e;)V

    iget-object v0, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/networkbench/agent/impl/crash/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/g;->b(Lcom/networkbench/agent/impl/crash/c;Z)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/networkbench/agent/impl/crash/g;->b(Lcom/networkbench/agent/impl/crash/c;Z)V

    :goto_2
    return-void
.end method

.method public a(Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/networkbench/agent/impl/crash/g;->c:Lcom/networkbench/agent/impl/instrumentation/TingyunErrorEventFeedBack;

    return-void
.end method

.method public b()V
    .locals 14

    const-string v0, "report all stored crash ,crashStore size is "

    :try_start_0
    sget-object v1, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "user close crash report "

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/b;->a()Lcom/networkbench/agent/impl/harvest/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/harvest/b/b;->h()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v0, "checkSwitchOfCrash is false stop report crash"

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->k()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/networkbench/agent/impl/crash/g;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-object v1, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Lcom/networkbench/agent/impl/crash/h;->b()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_7

    sget-object v2, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/crash/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "crash has reported, timestamp is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    :try_start_1
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/networkbench/agent/impl/crash/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v2
    :try_end_1
    .catch Lcom/networkbench/com/google/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v4

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v6

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v7, Lcom/networkbench/agent/impl/b/a;

    invoke-virtual {v6}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    sget-object v12, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v7 .. v13}, Lcom/networkbench/agent/impl/b/a;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;)V

    invoke-direct {p0, v2, v7}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/agent/impl/b/a;)Ljava/lang/String;

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->b()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/networkbench/agent/impl/crash/a;

    iget-object v7, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v4, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;

    invoke-virtual {v4}, Lcom/networkbench/agent/impl/j/d;->a()I

    move-result v9

    invoke-direct {p0, v2}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;)Ljava/lang/String;

    move-result-object v10

    invoke-direct/range {v5 .. v10}, Lcom/networkbench/agent/impl/crash/a;-><init>(Lcom/networkbench/com/google/gson/JsonObject;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/util/c/a;->b()Lcom/networkbench/agent/impl/util/c/a;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/networkbench/agent/impl/util/c/a;->a(Ljava/lang/Runnable;)V

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/crash/e;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ThreadPool submit store crash report Runnable ,crash num is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    sget-object v2, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v4, "invaild json str for crash"

    invoke-interface {v2, v4}, Lcom/networkbench/agent/impl/c/e;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/networkbench/agent/impl/util/p;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/networkbench/agent/impl/crash/h;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string v1, "Exception occur while send stored crash"

    invoke-interface {v0, v1, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public b(Lcom/networkbench/agent/impl/crash/c;Z)V
    .locals 9

    .line 353
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->asJsonArray()Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v1

    invoke-virtual {v1}, Lcom/networkbench/agent/impl/util/r;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/com/google/gson/JsonArray;Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonObject;

    move-result-object v0

    .line 354
    invoke-static {}, Lcom/networkbench/agent/impl/harvest/HarvestConnection;->isSoDisable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    :try_start_0
    new-instance v2, Lcom/networkbench/agent/impl/b/a;

    invoke-virtual {v0}, Lcom/networkbench/com/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/networkbench/agent/impl/crash/g;->g:Lcom/networkbench/agent/impl/crash/h;

    .line 356
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->i()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/networkbench/agent/impl/util/s;->a:Ljava/lang/String;

    sget-object v7, Lcom/networkbench/agent/impl/j/d;->d:Lcom/networkbench/agent/impl/j/d;

    .line 357
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->b()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/networkbench/agent/impl/b/a;-><init>(Ljava/lang/String;Lcom/networkbench/agent/impl/crash/h;Ljava/lang/String;Ljava/lang/String;Lcom/networkbench/agent/impl/j/d;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->a()Lcom/networkbench/agent/impl/k/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p1}, Lcom/networkbench/agent/impl/crash/c;->a()Lcom/networkbench/agent/impl/k/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/networkbench/agent/impl/b/a;->a(Lcom/networkbench/agent/impl/k/b;)V

    .line 360
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/networkbench/agent/impl/crash/g;->a(Ljava/lang/Runnable;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 361
    sget-object p1, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "reportCrash error"

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public isEnableUpload()Z
    .locals 0

    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/r;->aB()Z

    move-result p0

    return p0
.end method

.method public isSpan()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCrash(Ljava/lang/Thread;Ljava/lang/Throwable;J)V
    .locals 11

    const/4 p1, 0x1

    :try_start_0
    invoke-static {}, Lcom/networkbench/agent/impl/util/r;->u()Lcom/networkbench/agent/impl/util/r;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/networkbench/agent/impl/util/r;->d(J)Ljava/lang/String;

    move-result-object v10

    sget-object v0, Lcom/networkbench/agent/impl/crash/NBSErrorEventType;->crash:Lcom/networkbench/agent/impl/crash/NBSErrorEventType;

    invoke-virtual {p0, v0, v10}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/crash/NBSErrorEventType;Ljava/lang/String;)V

    invoke-static {}, Lcom/networkbench/agent/impl/NBSAgent;->getImpl()Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/networkbench/agent/impl/util/NBSAndroidAgentImpl;->p()Lcom/networkbench/agent/impl/util/af;

    move-result-object p0

    invoke-virtual {p0, v10}, Lcom/networkbench/agent/impl/util/af;->b(Ljava/lang/String;)V

    sget-object p0, Lcom/networkbench/agent/impl/crash/g;->f:Lcom/networkbench/agent/impl/crash/g;

    new-instance v3, Lcom/networkbench/agent/impl/crash/c;

    sget-object v0, Lcom/networkbench/agent/impl/crash/g;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->g(Landroid/content/Context;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v7

    const-string v0, "1"

    invoke-static {v0}, Lcom/networkbench/agent/impl/util/v;->c(Ljava/lang/String;)Lcom/networkbench/com/google/gson/JsonArray;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v9

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v3 .. v10}, Lcom/networkbench/agent/impl/crash/c;-><init>(Ljava/lang/Throwable;JLcom/networkbench/com/google/gson/JsonArray;Lcom/networkbench/com/google/gson/JsonArray;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/networkbench/agent/impl/crash/g;->a(Lcom/networkbench/agent/impl/crash/c;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Lcom/networkbench/agent/impl/harvest/b/a;->a()Lcom/networkbench/agent/impl/harvest/b/a;

    move-result-object p2

    sget-object p3, Lcom/networkbench/agent/impl/harvest/b/a;->b:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Lcom/networkbench/agent/impl/harvest/b/a;->a(Ljava/lang/String;IZ)V

    sget-object p1, Lcom/networkbench/agent/impl/crash/g;->d:Lcom/networkbench/agent/impl/c/e;

    const-string p2, "catch an Exception during reporting an user crash "

    invoke-interface {p1, p2, p0}, Lcom/networkbench/agent/impl/c/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
