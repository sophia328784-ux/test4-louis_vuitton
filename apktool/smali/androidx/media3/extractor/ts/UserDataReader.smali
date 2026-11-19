.class final Landroidx/media3/extractor/ts/UserDataReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/lang/String;

.field public final c:[Landroidx/media3/extractor/TrackOutput;

.field public final d:Landroidx/media3/container/ReorderingBufferQueue;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->a:Ljava/util/List;

    iput-object p2, p0, Landroidx/media3/extractor/ts/UserDataReader;->b:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->c:[Landroidx/media3/extractor/TrackOutput;

    new-instance p1, Landroidx/media3/container/ReorderingBufferQueue;

    new-instance p2, Landroidx/media3/extractor/ts/a;

    invoke-direct {p2, p0}, Landroidx/media3/extractor/ts/a;-><init>(Landroidx/media3/extractor/ts/UserDataReader;)V

    invoke-direct {p1, p2}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/UserDataReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    const/4 p0, 0x3

    invoke-virtual {p1, p0}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    return-void
.end method


# virtual methods
.method public final a(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 4

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v0

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v0

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    invoke-virtual {p3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    const/16 v3, 0x1b2

    if-ne v0, v3, :cond_1

    const v0, 0x47413934

    if-ne v1, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    iget-object p0, p0, Landroidx/media3/extractor/ts/UserDataReader;->d:Landroidx/media3/container/ReorderingBufferQueue;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/ts/UserDataReader;->c:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->a()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget v3, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->d:I

    const/4 v4, 0x3

    invoke-interface {p1, v3, v4}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v3

    iget-object v4, p0, Landroidx/media3/extractor/ts/UserDataReader;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/common/Format;

    iget-object v5, v4, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v6, "application/cea-608"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/cea-708"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move v6, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v6, 0x1

    :goto_2
    const-string v7, "Invalid closed caption MIME type provided: %s"

    invoke-static {v5, v7, v6}, Lcom/google/common/base/Preconditions;->e(Ljava/lang/Object;Ljava/lang/String;Z)V

    new-instance v6, Landroidx/media3/common/Format$Builder;

    invoke-direct {v6}, Landroidx/media3/common/Format$Builder;-><init>()V

    invoke-virtual {p2}, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->b()V

    iget-object v7, p2, Landroidx/media3/extractor/ts/TsPayloadReader$TrackIdGenerator;->e:Ljava/lang/String;

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->a:Ljava/lang/String;

    iget-object v7, p0, Landroidx/media3/extractor/ts/UserDataReader;->b:Ljava/lang/String;

    invoke-static {v7}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    invoke-static {v5}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->e:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->e:I

    iget-object v5, v4, Landroidx/media3/common/Format;->d:Ljava/lang/String;

    iput-object v5, v6, Landroidx/media3/common/Format$Builder;->d:Ljava/lang/String;

    iget v5, v4, Landroidx/media3/common/Format;->L:I

    iput v5, v6, Landroidx/media3/common/Format$Builder;->K:I

    iget-object v4, v4, Landroidx/media3/common/Format;->r:Ljava/util/List;

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->q:Ljava/util/List;

    invoke-static {v6, v3}, Ld21;->w(Landroidx/media3/common/Format$Builder;Landroidx/media3/extractor/TrackOutput;)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
