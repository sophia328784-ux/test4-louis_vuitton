.class public Lcom/linkplay/network/EncryptedOkHttp;
.super Lcom/linkplay/network/EncryptedHttpsBase;
.source "SourceFile"


# static fields
.field private static mInstance:Lcom/linkplay/network/EncryptedOkHttp;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/linkplay/network/EncryptedHttpsBase;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/linkplay/network/EncryptedOkHttp;
    .locals 2

    const-class v0, Lcom/linkplay/network/EncryptedOkHttp;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/linkplay/network/EncryptedOkHttp;->mInstance:Lcom/linkplay/network/EncryptedOkHttp;

    if-nez v1, :cond_0

    new-instance v1, Lcom/linkplay/network/EncryptedOkHttp;

    invoke-direct {v1}, Lcom/linkplay/network/EncryptedOkHttp;-><init>()V

    sput-object v1, Lcom/linkplay/network/EncryptedOkHttp;->mInstance:Lcom/linkplay/network/EncryptedOkHttp;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/linkplay/network/EncryptedOkHttp;->mInstance:Lcom/linkplay/network/EncryptedOkHttp;
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


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "certificate_old"

    return-object p0
.end method

.method public getPwd()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/linkplay/network/EncryptedHttpsBase;->context:Landroid/content/Context;

    sget v0, Lcom/android/wiimu/R$string;->linkplay:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
