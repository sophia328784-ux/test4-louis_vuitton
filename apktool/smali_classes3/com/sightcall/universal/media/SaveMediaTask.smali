.class public Lcom/sightcall/universal/media/SaveMediaTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sightcall/universal/media/Media;",
        ">;"
    }
.end annotation


# static fields
.field private static final logger:Lnet/rtccloud/sdk/util/OldLogger;


# instance fields
.field protected final bitmap:Landroid/graphics/Bitmap;

.field private final context:Landroid/content/Context;

.field protected final metadata:Lcom/sightcall/universal/media/Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SaveMediaTask"

    invoke-static {v0}, Lnet/rtccloud/sdk/util/OldLogger;->get(Ljava/lang/String;)Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    sput-object v0, Lcom/sightcall/universal/media/SaveMediaTask;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/media/SaveMediaTask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/sightcall/universal/media/SaveMediaTask;->bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    return-void
.end method

.method private writeBitmap()Ljava/io/File;
    .locals 5

    iget-object v0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-static {v0, v1}, Lcom/sightcall/universal/media/MediaStorage;->newImageFile(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/media/SaveMediaTask;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "writeBitmap(%s)"

    invoke-virtual {v1, v3, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    new-instance v3, Lokio/RealBufferedSink;

    invoke-direct {v3, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lcom/sightcall/universal/media/SaveMediaTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    new-instance v4, Lokio/RealBufferedSink$outputStream$1;

    invoke-direct {v4, v3}, Lokio/RealBufferedSink$outputStream$1;-><init>(Lokio/RealBufferedSink;)V

    invoke-static {v2, p0, v4}, Lcom/sightcall/universal/media/MediaStorage;->compress(Landroid/graphics/Bitmap;Lcom/sightcall/universal/media/Metadata;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :goto_2
    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private writeMetadata()Ljava/io/File;
    .locals 4

    iget-object v0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-static {v0, v1}, Lcom/sightcall/universal/media/MediaStorage;->newMetadataFile(Landroid/content/Context;Lcom/sightcall/universal/media/Metadata;)Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/sightcall/universal/media/SaveMediaTask;->logger:Lnet/rtccloud/sdk/util/OldLogger;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "writeMetadata(%s)"

    invoke-virtual {v1, v3, v2}, Lnet/rtccloud/sdk/util/OldLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Lokio/Okio;->d(Ljava/io/File;)Lokio/Sink;

    move-result-object v2

    new-instance v3, Lokio/RealBufferedSink;

    invoke-direct {v3, v2}, Lokio/RealBufferedSink;-><init>(Lokio/Sink;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-virtual {p0}, Lcom/sightcall/universal/media/Metadata;->toJson()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lokio/RealBufferedSink;->r0(Ljava/lang/String;)Lokio/BufferedSink;

    invoke-virtual {v3}, Lokio/RealBufferedSink;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :goto_0
    move-object v3, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_0

    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sightcall/universal/Universal;->logger()Lnet/rtccloud/sdk/util/OldLogger;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/rtccloud/sdk/util/OldLogger;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    return-object v1

    :goto_2
    invoke-static {v1}, Lnet/rtccloud/sdk/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Lcom/sightcall/universal/media/Media;
    .locals 1

    invoke-direct {p0}, Lcom/sightcall/universal/media/SaveMediaTask;->writeBitmap()Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sightcall/universal/media/SaveMediaTask;->writeMetadata()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lcom/sightcall/universal/media/Media;

    invoke-direct {v0, p1, p0}, Lcom/sightcall/universal/media/Media;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/SaveMediaTask;->doInBackground([Ljava/lang/Void;)Lcom/sightcall/universal/media/Media;

    move-result-object p0

    return-object p0
.end method

.method public onPostExecute(Lcom/sightcall/universal/media/Media;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/rtccloud/sdk/Rtcc;->instance()Lnet/rtccloud/sdk/Rtcc;

    move-result-object v0

    invoke-virtual {v0}, Lnet/rtccloud/sdk/Rtcc;->bus()Lnet/rtccloud/sdk/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/sightcall/universal/media/MediaSavedEvent;

    iget-object p0, p0, Lcom/sightcall/universal/media/SaveMediaTask;->metadata:Lcom/sightcall/universal/media/Metadata;

    invoke-direct {v1, p1, p0}, Lcom/sightcall/universal/media/MediaSavedEvent;-><init>(Lcom/sightcall/universal/media/Media;Lcom/sightcall/universal/media/Metadata;)V

    invoke-virtual {v0, v1}, Lnet/rtccloud/sdk/event/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lcom/sightcall/universal/media/Media;

    invoke-virtual {p0, p1}, Lcom/sightcall/universal/media/SaveMediaTask;->onPostExecute(Lcom/sightcall/universal/media/Media;)V

    return-void
.end method
