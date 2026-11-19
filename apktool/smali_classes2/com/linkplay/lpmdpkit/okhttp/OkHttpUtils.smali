.class public Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;
.super Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/lpmdpkit/okhttp/HttpRequestUtils;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;
    .locals 2

    const-class v0, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;->mInstance:Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;

    invoke-direct {v1}, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;-><init>()V

    sput-object v1, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;->mInstance:Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;->mInstance:Lcom/linkplay/lpmdpkit/okhttp/OkHttpUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
