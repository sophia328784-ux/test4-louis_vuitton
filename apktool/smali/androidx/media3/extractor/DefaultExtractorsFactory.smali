.class public final Landroidx/media3/extractor/DefaultExtractorsFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ExtractorsFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;
    }
.end annotation


# static fields
.field public static final h:[I

.field public static final i:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

.field public static final j:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;


# instance fields
.field public b:Lcom/google/common/collect/ImmutableList;

.field public c:Z

.field public d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->h:[I

    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Los;

    const/16 v2, 0x16

    invoke-direct {v1, v2}, Los;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->i:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v0, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-instance v1, Los;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Los;-><init>(I)V

    invoke-direct {v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;-><init>(Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader$ConstructorSupplier;)V

    sput-object v0, Landroidx/media3/extractor/DefaultExtractorsFactory;->j:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    return-void

    :array_0
    .array-data 4
        0x5
        0x4
        0xc
        0x8
        0x3
        0xa
        0x9
        0xb
        0x6
        0x2
        0x0
        0x1
        0x7
        0x10
        0xf
        0xe
        0x11
        0x12
        0x13
        0x14
        0x15
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;

    invoke-direct {v0}, Landroidx/media3/extractor/text/DefaultSubtitleParserFactory;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    const/4 v0, 0x3

    iput v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final c(ILjava/util/ArrayList;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    new-instance p0, Landroidx/media3/extractor/avif/AvifExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/avif/AvifExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_2
    new-instance p1, Landroidx/media3/extractor/heif/HeifExtractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->g:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/heif/HeifExtractor;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_3
    new-instance p0, Landroidx/media3/extractor/bmp/BmpExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/bmp/BmpExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_4
    new-instance p0, Landroidx/media3/extractor/webp/WebpExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/webp/WebpExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_5
    new-instance p0, Landroidx/media3/extractor/png/PngExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/png/PngExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_6
    new-instance p1, Landroidx/media3/extractor/avi/AviExtractor;

    iget-boolean v0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    xor-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p1, v0, p0}, Landroidx/media3/extractor/avi/AviExtractor;-><init>(ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_7
    sget-object p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->j:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :pswitch_8
    new-instance p1, Landroidx/media3/extractor/jpeg/JpegExtractor;

    iget p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->f:I

    invoke-direct {p1, p0}, Landroidx/media3/extractor/jpeg/JpegExtractor;-><init>(I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_9
    new-instance p0, Landroidx/media3/extractor/wav/WavExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/wav/WavExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_a
    iget-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->b:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_1

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->b:Lcom/google/common/collect/ImmutableList;

    :cond_1
    new-instance v2, Landroidx/media3/extractor/ts/TsExtractor;

    iget-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    xor-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance v6, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v7, 0x0

    invoke-direct {v6, v7, v8}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    new-instance v7, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;

    iget-object p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->b:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v7, v1, p0}, Landroidx/media3/extractor/ts/DefaultTsPayloadReaderFactory;-><init>(ILjava/util/List;)V

    const v8, 0x1b8a0

    const/4 v3, 0x1

    invoke-direct/range {v2 .. v8}, Landroidx/media3/extractor/ts/TsExtractor;-><init>(IILandroidx/media3/extractor/text/SubtitleParser$Factory;Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ts/TsPayloadReader$Factory;I)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_b
    new-instance p0, Landroidx/media3/extractor/ts/PsExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/PsExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_c
    new-instance p0, Landroidx/media3/extractor/ogg/OggExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ogg/OggExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_d
    new-instance p1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    const/16 v4, 0x40

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    or-int/lit16 v4, v4, 0x80

    :cond_3
    iget-boolean v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    const/16 v5, 0x20

    if-eqz v3, :cond_4

    move v3, v1

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    or-int/2addr v3, v4

    invoke-direct {p1, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Landroidx/media3/extractor/mp4/Mp4Extractor;

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget v3, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->e:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v5, v1

    :goto_3
    and-int/2addr v0, v3

    if-eqz v0, :cond_6

    or-int/lit16 v5, v5, 0x80

    :cond_6
    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    if-eqz p0, :cond_7

    goto :goto_4

    :cond_7
    const/16 v1, 0x10

    :goto_4
    or-int p0, v5, v1

    invoke-direct {p1, v2, p0}, Landroidx/media3/extractor/mp4/Mp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_e
    new-instance p0, Landroidx/media3/extractor/mp3/Mp3Extractor;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/mp3/Mp3Extractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_f
    new-instance p1, Landroidx/media3/extractor/mkv/MatroskaExtractor;

    iget-object v2, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->d:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iget-boolean p0, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z

    if-eqz p0, :cond_8

    move v0, v1

    :cond_8
    invoke-direct {p1, v2, v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_10
    new-instance p0, Landroidx/media3/extractor/flv/FlvExtractor;

    invoke-direct {p0}, Landroidx/media3/extractor/flv/FlvExtractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Landroidx/media3/extractor/DefaultExtractorsFactory;->i:Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;

    invoke-virtual {p1, p0}, Landroidx/media3/extractor/DefaultExtractorsFactory$ExtensionLoader;->a([Ljava/lang/Object;)Landroidx/media3/extractor/Extractor;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_9
    new-instance p0, Landroidx/media3/extractor/flac/FlacExtractor;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/flac/FlacExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_12
    new-instance p0, Landroidx/media3/extractor/amr/AmrExtractor;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/amr/AmrExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_13
    new-instance p0, Landroidx/media3/extractor/ts/AdtsExtractor;

    invoke-direct {p0, v1}, Landroidx/media3/extractor/ts/AdtsExtractor;-><init>(I)V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_14
    new-instance p0, Landroidx/media3/extractor/ts/Ac4Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac4Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_15
    new-instance p0, Landroidx/media3/extractor/ts/Ac3Extractor;

    invoke-direct {p0}, Landroidx/media3/extractor/ts/Ac3Extractor;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final e(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroidx/media3/extractor/DefaultExtractorsFactory;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized f(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/media3/extractor/DefaultExtractorsFactory;->h:[I

    const/16 v2, 0x15

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "Content-Type"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    invoke-static {p2}, Landroidx/media3/common/FileTypes;->a(Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    if-eq p2, v4, :cond_2

    invoke-virtual {p0, p2, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->c(ILjava/util/ArrayList;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    invoke-static {p1}, Landroidx/media3/common/FileTypes;->b(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v4, :cond_3

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p1, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->c(ILjava/util/ArrayList;)V

    :cond_3
    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_5

    aget v5, v1, v4

    if-eq v5, p2, :cond_4

    if-eq v5, p1, :cond_4

    invoke-virtual {p0, v5, v0}, Landroidx/media3/extractor/DefaultExtractorsFactory;->c(ILjava/util/ArrayList;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    new-array p1, v3, [Landroidx/media3/extractor/Extractor;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroidx/media3/extractor/Extractor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized j()[Landroidx/media3/extractor/Extractor;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroidx/media3/extractor/DefaultExtractorsFactory;->f(Landroid/net/Uri;Ljava/util/Map;)[Landroidx/media3/extractor/Extractor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
