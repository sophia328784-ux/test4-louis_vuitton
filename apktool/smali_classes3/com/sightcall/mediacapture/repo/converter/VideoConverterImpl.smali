.class public final Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sightcall/mediacapture/repo/converter/VideoConverter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0018B\u0011\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J2\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u00100\u000e2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0014H\u0096@\u00a2\u0006\u0002\u0010\u0015J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0012\u001a\u00020\u0007H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u00020\u0007*\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u0018\u0010\u000b\u001a\u00020\u0007*\u00020\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\n\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverter;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "width",
        "",
        "Landroid/media/MediaMetadataRetriever;",
        "getWidth",
        "(Landroid/media/MediaMetadataRetriever;)I",
        "height",
        "getHeight",
        "process",
        "Lcom/sightcall/pratik/Result;",
        "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
        "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
        "source",
        "maxSize",
        "targetString",
        "",
        "(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "findBestVideoFormat",
        "Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;",
        "VideoFormat",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private final findBestVideoFormat(I)Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;
    .locals 0

    if-ltz p1, :cond_0

    const/16 p0, 0x1e1

    if-ge p1, p0, :cond_0

    sget-object p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Ld360p;

    return-object p0

    :cond_0
    const/16 p0, 0x1e0

    if-gt p0, p1, :cond_1

    const/16 p0, 0x2d1

    if-ge p1, p0, :cond_1

    sget-object p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Sd480p;

    return-object p0

    :cond_1
    const/16 p0, 0x2d0

    if-gt p0, p1, :cond_2

    const/16 p0, 0x501

    if-ge p1, p0, :cond_2

    sget-object p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Hd720p;

    return-object p0

    :cond_2
    const/16 p0, 0x500

    if-gt p0, p1, :cond_3

    const/16 p0, 0x781

    if-ge p1, p0, :cond_3

    sget-object p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Fhd1080p;

    return-object p0

    :cond_3
    const/16 p0, 0x780

    if-gt p0, p1, :cond_4

    const/16 p0, 0xf01

    if-ge p1, p0, :cond_4

    sget-object p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;->INSTANCE:Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat$Uhd4k;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getHeight(Landroid/media/MediaMetadataRetriever;)I
    .locals 0

    const/16 p0, 0x13

    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "can\'t extract target height"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final getWidth(Landroid/media/MediaMetadataRetriever;)I
    .locals 0

    const/16 p0, 0x12

    invoke-virtual {p1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "can\'t extract target width"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public process(Lcom/sightcall/mediacapture/repo/entities/MediaRepo;ILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "I",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/sightcall/pratik/Result<",
            "Lcom/sightcall/mediacapture/repo/entities/MediaRepo;",
            "Lcom/sightcall/mediacapture/repo/MediaCaptureError;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->findBestVideoFormat(I)Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    new-instance p1, Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;

    const-string p2, "Incorrect size for video"

    invoke-direct {p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_0
    :try_start_0
    iget-object p4, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->context:Landroid/content/Context;

    sget-object v0, Lcom/iceteck/silicompressorr/SiliCompressor;->a:Lcom/iceteck/silicompressorr/SiliCompressor;

    if-nez v0, :cond_2

    const-class v0, Lcom/iceteck/silicompressorr/SiliCompressor;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v1, Lcom/iceteck/silicompressorr/SiliCompressor;->a:Lcom/iceteck/silicompressorr/SiliCompressor;

    if-nez v1, :cond_1

    new-instance v1, Lcom/iceteck/silicompressorr/SiliCompressor$Builder;

    invoke-direct {v1, p4}, Lcom/iceteck/silicompressorr/SiliCompressor$Builder;-><init>(Landroid/content/Context;)V

    iget-object p4, v1, Lcom/iceteck/silicompressorr/SiliCompressor$Builder;->a:Landroid/content/Context;

    new-instance v1, Lcom/iceteck/silicompressorr/SiliCompressor;

    invoke-direct {v1, p4}, Lcom/iceteck/silicompressorr/SiliCompressor;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/iceteck/silicompressorr/SiliCompressor;->a:Lcom/iceteck/silicompressorr/SiliCompressor;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_2
    :goto_2
    sget-object p4, Lcom/iceteck/silicompressorr/SiliCompressor;->a:Lcom/iceteck/silicompressorr/SiliCompressor;

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->getSize()Landroid/util/Size;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->getSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl$VideoFormat;->getBitRate()I

    move-result p2

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p3, v1, v2, p2}, Lcom/iceteck/silicompressorr/SiliCompressor;->a(Landroid/net/Uri;Ljava/lang/String;III)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p3}, Landroid/media/MediaMetadataRetriever;-><init>()V

    iget-object p4, p0, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    new-instance p4, Lcom/sightcall/pratik/Result$Success;

    new-instance v0, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Landroid/util/Size;

    invoke-direct {p0, p3}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->getWidth(Landroid/media/MediaMetadataRetriever;)I

    move-result v2

    invoke-direct {p0, p3}, Lcom/sightcall/mediacapture/repo/converter/VideoConverterImpl;->getHeight(Landroid/media/MediaMetadataRetriever;)I

    move-result p0

    invoke-direct {v1, v2, p0}, Landroid/util/Size;-><init>(II)V

    invoke-direct {v0, p2, p1, v1}, Lcom/sightcall/mediacapture/repo/entities/MediaRepo;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/util/Size;)V

    invoke-direct {p4, v0}, Lcom/sightcall/pratik/Result$Success;-><init>(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p4

    :catch_0
    sget-object p0, Lcom/sightcall/pratik/logs/Logger;->INSTANCE:Lcom/sightcall/pratik/logs/Logger;

    invoke-virtual {p0}, Lcom/sightcall/pratik/logs/Logger;->getTag()Ljava/lang/String;

    new-instance p0, Lcom/sightcall/pratik/Result$Error;

    new-instance p1, Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;

    const-string p2, "Something went wrong when resizing video"

    invoke-direct {p1, p2}, Lcom/sightcall/mediacapture/repo/MediaCaptureError$ResizerLibError;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sightcall/pratik/Result$Error;-><init>(Ljava/lang/Object;)V

    return-object p0
.end method
