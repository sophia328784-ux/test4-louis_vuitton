.class public final Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/ts/SectionPayloadReader;


# instance fields
.field public a:Landroidx/media3/common/Format;

.field public b:Landroidx/media3/common/util/TimestampAdjuster;

.field public c:Landroidx/media3/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-static {p2}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/Format;

    invoke-direct {p1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->a:Landroidx/media3/common/Format;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/common/util/ParsableByteArray;)V
    .locals 13

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-object v1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter v1

    :try_start_0
    iget-wide v2, v1, Landroidx/media3/common/util/TimestampAdjuster;->c:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    iget-wide v6, v1, Landroidx/media3/common/util/TimestampAdjuster;->b:J

    add-long/2addr v2, v6

    :goto_0
    move-wide v7, v2

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/common/util/TimestampAdjuster;->d()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit v1

    iget-object v2, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    monitor-enter v2

    :try_start_1
    iget-wide v0, v2, Landroidx/media3/common/util/TimestampAdjuster;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    cmp-long v2, v7, v4

    if-eqz v2, :cond_3

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->a:Landroidx/media3/common/Format;

    iget-wide v3, v2, Landroidx/media3/common/Format;->t:J

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v2

    iput-wide v0, v2, Landroidx/media3/common/Format$Builder;->s:J

    new-instance v0, Landroidx/media3/common/Format;

    invoke-direct {v0, v2}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->a:Landroidx/media3/common/Format;

    iget-object v1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v1, v0}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    :cond_2
    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v10

    iget-object v0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->c:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v0, v10, p1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v6, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->c:Landroidx/media3/extractor/TrackOutput;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    invoke-interface/range {v6 .. v12}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_3
    :goto_2
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public final b(Landroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    invoke-virtual {p3}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p3}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget p1, p3, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 p3, 0x5

    invoke-interface {p2, p1, p3}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->c:Landroidx/media3/extractor/TrackOutput;

    iget-object p0, p0, Landroidx/media3/extractor/ts/PassthroughSectionPayloadReader;->a:Landroidx/media3/common/Format;

    invoke-interface {p1, p0}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    return-void
.end method
