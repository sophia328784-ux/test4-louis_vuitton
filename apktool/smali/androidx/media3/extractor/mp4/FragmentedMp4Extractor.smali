.class public Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;,
        Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$Flags;
    }
.end annotation


# static fields
.field public static final P:[B

.field public static final Q:Landroidx/media3/common/Format;


# instance fields
.field public A:J

.field public B:J

.field public C:J

.field public D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

.field public E:I

.field public F:I

.field public G:I

.field public H:Z

.field public I:Z

.field public J:Landroidx/media3/extractor/ExtractorOutput;

.field public K:[Landroidx/media3/extractor/TrackOutput;

.field public L:[Landroidx/media3/extractor/TrackOutput;

.field public M:Z

.field public N:Z

.field public O:J

.field public final a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public final b:I

.field public final c:Landroidx/media3/extractor/mp4/Track;

.field public final d:Ljava/util/List;

.field public final e:Landroid/util/SparseArray;

.field public final f:Landroidx/media3/common/util/ParsableByteArray;

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public final i:[B

.field public final j:Landroidx/media3/common/util/ParsableByteArray;

.field public final k:Landroidx/media3/common/util/TimestampAdjuster;

.field public final l:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

.field public final m:Landroidx/media3/common/util/ParsableByteArray;

.field public final n:Ljava/util/ArrayDeque;

.field public final o:Ljava/util/ArrayDeque;

.field public final p:Landroidx/media3/container/ReorderingBufferQueue;

.field public final q:Landroidx/media3/extractor/TrackOutput;

.field public final r:Landroidx/media3/extractor/ChunkIndexMerger;

.field public s:Lcom/google/common/collect/ImmutableList;

.field public t:I

.field public u:I

.field public v:J

.field public w:I

.field public x:Landroidx/media3/common/util/ParsableByteArray;

.field public y:J

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->P:[B

    new-instance v0, Landroidx/media3/common/Format$Builder;

    invoke-direct {v0}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-static {v1}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v1, Landroidx/media3/common/Format;

    invoke-direct {v1, v0}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    sput-object v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->Q:Landroidx/media3/common/Format;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    .line 159
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    or-int/lit8 v2, p1, 0x20

    .line 148
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    .line 149
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    or-int/lit8 v2, p1, 0x20

    .line 152
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    .line 153
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    or-int/lit8 v2, p1, 0x20

    .line 154
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    .line 155
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    or-int/lit8 v2, p1, 0x20

    const/4 v6, 0x0

    .line 156
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    or-int/lit8 v2, p1, 0x20

    .line 157
    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 7

    .line 146
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 147
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 7

    .line 150
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 151
    invoke-direct/range {v0 .. v6}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;-><init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;ILandroidx/media3/common/util/TimestampAdjuster;Landroidx/media3/extractor/mp4/Track;Ljava/util/List;Landroidx/media3/extractor/TrackOutput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/extractor/text/SubtitleParser$Factory;",
            "I",
            "Landroidx/media3/common/util/TimestampAdjuster;",
            "Landroidx/media3/extractor/mp4/Track;",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;",
            "Landroidx/media3/extractor/TrackOutput;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    iput p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    iput-object p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k:Landroidx/media3/common/util/TimestampAdjuster;

    iput-object p4, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Landroidx/media3/extractor/mp4/Track;

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Ljava/util/List;

    iput-object p6, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:Landroidx/media3/extractor/TrackOutput;

    new-instance p1, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    invoke-direct {p1}, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p3, Landroidx/media3/container/NalUnitUtil;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p3, 0x6

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    new-array p1, p2, [B

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i:[B

    new-instance p2, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p2, p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->o:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/common/collect/ImmutableList;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:J

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:J

    sget-object p1, Landroidx/media3/extractor/ExtractorOutput;->g0:Landroidx/media3/extractor/ExtractorOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    const/4 p1, 0x0

    new-array p2, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    new-array p1, p1, [Landroidx/media3/extractor/TrackOutput;

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    new-instance p1, Landroidx/media3/container/ReorderingBufferQueue;

    new-instance p2, Lfw;

    const/4 p3, 0x4

    invoke-direct {p2, p0, p3}, Lfw;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p1, p2}, Landroidx/media3/container/ReorderingBufferQueue;-><init>(Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;)V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Landroidx/media3/container/ReorderingBufferQueue;

    new-instance p1, Landroidx/media3/extractor/ChunkIndexMerger;

    invoke-direct {p1}, Landroidx/media3/extractor/ChunkIndexMerger;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:Landroidx/media3/extractor/ChunkIndexMerger;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:J

    return-void
.end method

.method public static h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;
    .locals 8

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_4

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v5, v4, Landroidx/media3/container/Mp4Box;->a:I

    const v6, 0x70737368    # 3.013775E29f

    if-ne v5, v6, :cond_3

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-static {v4}, Landroidx/media3/extractor/mp4/PsshAtomUtil;->b([B)Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;

    move-result-object v5

    if-nez v5, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    iget-object v5, v5, Landroidx/media3/extractor/mp4/PsshAtomUtil$PsshAtom;->a:Ljava/util/UUID;

    :goto_1
    if-nez v5, :cond_2

    const-string v4, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v4}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance v6, Landroidx/media3/common/DrmInitData$SchemeData;

    const-string v7, "video/mp4"

    invoke-direct {v6, v5, v7, v4}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v3, :cond_5

    return-object v1

    :cond_5
    new-instance p0, Landroidx/media3/common/DrmInitData;

    invoke-direct {p0, v3}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static i(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result p1

    sget-object v0, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    iget-object v4, p2, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result p1

    invoke-virtual {v4, p1}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    iput-boolean v1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    iget-object p1, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v1, v4, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-virtual {p0, v0, v1, p1}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v4, v0}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iput-boolean v0, p2, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    return-void

    :cond_2
    const-string p0, "Senc sample count "

    const-string p1, " is different from fragment sample count"

    invoke-static {v2, p0, p1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget p1, p2, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public static j(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;
    .locals 22

    move-object/from16 v0, p2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v7

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v5

    :goto_0
    add-long v5, v5, p0

    move-wide v10, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v3

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v5

    goto :goto_0

    :goto_1
    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v5, 0xf4240

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v12

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    new-array v14, v1, [I

    new-array v15, v1, [J

    new-array v5, v1, [J

    new-array v6, v1, [J

    const/4 v9, 0x0

    move-wide/from16 v16, v10

    move-wide/from16 v18, v12

    move v10, v9

    :goto_2
    if-ge v10, v1, :cond_2

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    const/high16 v11, -0x80000000

    and-int/2addr v11, v9

    if-nez v11, :cond_1

    invoke-virtual {v0}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v20

    const v11, 0x7fffffff

    and-int/2addr v9, v11

    aput v9, v14, v10

    aput-wide v16, v15, v10

    aput-wide v18, v6, v10

    add-long v3, v3, v20

    move-object v9, v5

    move-object v11, v6

    const-wide/32 v5, 0xf4240

    move-object/from16 v18, v9

    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object v2, v11

    move-object/from16 v11, v18

    invoke-static/range {v3 .. v9}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v19, v2, v10

    sub-long v19, v5, v19

    aput-wide v19, v11, v10

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    aget v9, v14, v10

    move/from16 p0, v1

    int-to-long v0, v9

    add-long v16, v16, v0

    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p0

    move-object/from16 v0, p2

    move-wide/from16 v18, v5

    move-object v5, v11

    move-object v6, v2

    const/4 v2, 0x4

    goto :goto_2

    :cond_1
    const-string v0, "Unhandled indirect reference"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_2
    move-object v11, v5

    move-object v2, v6

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {v1, v14, v15, v11, v2}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 3

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->o:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Landroidx/media3/container/ReorderingBufferQueue;

    iget-object p1, p1, Landroidx/media3/container/ReorderingBufferQueue;->d:Ljava/util/PriorityQueue;

    invoke-virtual {p1}, Ljava/util/PriorityQueue;->clear()V

    iput-wide p3, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:J

    iget-object p1, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_0

    new-instance v2, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    move-object/from16 v4, p1

    invoke-direct {v2, v4, v3}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    move-object v2, v4

    :goto_0
    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    const/4 v2, 0x2

    new-array v2, v2, [Landroidx/media3/extractor/TrackOutput;

    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    const/4 v3, 0x0

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->q:Landroidx/media3/extractor/TrackOutput;

    if-eqz v4, :cond_1

    aput-object v4, v2, v3

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    and-int/lit8 v1, v1, 0x4

    const/16 v5, 0x64

    if-eqz v1, :cond_2

    add-int/lit8 v1, v4, 0x1

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v7, 0x5

    invoke-interface {v6, v5, v7}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v5

    aput-object v5, v2, v4

    const/16 v5, 0x65

    move v4, v1

    :cond_2
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {v4, v1}, Landroidx/media3/common/util/Util;->T(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/media3/extractor/TrackOutput;

    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    sget-object v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->Q:Landroidx/media3/common/Format;

    invoke-interface {v6, v7}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroidx/media3/extractor/TrackOutput;

    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    move v2, v3

    :goto_3
    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    array-length v4, v4

    if-ge v2, v4, :cond_4

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    add-int/lit8 v6, v5, 0x1

    const/4 v7, 0x3

    invoke-interface {v4, v5, v7}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/common/Format;

    invoke-interface {v4, v5}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    aput-object v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    move v5, v6

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Landroidx/media3/extractor/mp4/Track;

    if-eqz v1, :cond_9

    iget-object v2, v1, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    invoke-virtual {v2}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    iget-object v2, v2, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->o(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v2, "video/mp4"

    goto :goto_4

    :cond_5
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->k(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v2, "audio/mp4"

    goto :goto_4

    :cond_6
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->m(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "image/heic"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v2, "image/heif"

    goto :goto_4

    :cond_7
    const-string v5, "image/avif"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object v2, v5

    goto :goto_4

    :cond_8
    const-string v2, "application/mp4"

    :goto_4
    invoke-static {v2}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    iget v1, v1, Landroidx/media3/extractor/mp4/Track;->b:I

    invoke-interface {v5, v3, v1}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    new-instance v5, Landroidx/media3/extractor/mp4/TrackSampleTable;

    new-array v7, v3, [J

    new-array v8, v3, [I

    new-array v10, v3, [J

    new-array v11, v3, [I

    new-array v12, v3, [I

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Landroidx/media3/extractor/mp4/Track;

    const/4 v9, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v5 .. v16}, Landroidx/media3/extractor/mp4/TrackSampleTable;-><init>(Landroidx/media3/extractor/mp4/Track;[J[II[J[I[IZJI)V

    new-instance v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v3, v3, v3, v3}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    new-instance v7, Landroidx/media3/common/Format;

    invoke-direct {v7, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    invoke-direct {v2, v1, v5, v6, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V

    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    :cond_9
    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/media3/extractor/mp4/Sniffer;->b(Landroidx/media3/extractor/ExtractorInput;ZZ)Landroidx/media3/extractor/SniffFailure;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->x()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final e()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->s:Lcom/google/common/collect/ImmutableList;

    return-object p0
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Ljava/util/ArrayDeque;

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->p:Landroidx/media3/container/ReorderingBufferQueue;

    iget-object v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->r:Landroidx/media3/extractor/ChunkIndexMerger;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroid/util/SparseArray;

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-eqz v2, :cond_44

    iget-object v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->o:Ljava/util/ArrayDeque;

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k:Landroidx/media3/common/util/TimestampAdjuster;

    if-eq v2, v15, :cond_33

    const-wide v16, 0x7fffffffffffffffL

    if-eq v2, v13, :cond_2e

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    if-nez v2, :cond_9

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v19, v13

    const/4 v9, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v2, :cond_4

    invoke-virtual {v10, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v14, v20

    check-cast v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    const/16 v20, 0x8

    iget-boolean v12, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Z

    move/from16 v22, v15

    iget-object v15, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    if-nez v12, :cond_0

    iget v5, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iget-object v11, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget v11, v11, Landroidx/media3/extractor/mp4/TrackSampleTable;->b:I

    if-eq v5, v11, :cond_3

    :cond_0
    if-eqz v12, :cond_1

    iget v5, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    iget v11, v15, Landroidx/media3/extractor/mp4/TrackFragment;->d:I

    if-ne v5, v11, :cond_1

    goto :goto_3

    :cond_1
    if-nez v12, :cond_2

    iget-object v5, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    iget v11, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    aget-wide v11, v5, v11

    goto :goto_2

    :cond_2
    iget-object v5, v15, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    iget v11, v14, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    aget-wide v11, v5, v11

    :goto_2
    cmp-long v5, v11, v16

    if-gez v5, :cond_3

    move-wide/from16 v16, v11

    move-object v9, v14

    :cond_3
    :goto_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v15, v22

    goto :goto_1

    :cond_4
    move/from16 v22, v15

    const/16 v20, 0x8

    const/16 v21, 0x0

    if-nez v9, :cond_6

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v2, v2

    if-ltz v2, :cond_5

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    goto/16 :goto_0

    :cond_5
    const-string v0, "Offset to end of mdat was negative."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_6
    iget-boolean v2, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Z

    if-nez v2, :cond_7

    iget-object v2, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->c:[J

    iget v5, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    aget-wide v10, v2, v5

    goto :goto_4

    :cond_7
    iget-object v2, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    iget v5, v9, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    aget-wide v10, v2, v5

    :goto_4
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v12

    sub-long/2addr v10, v12

    long-to-int v2, v10

    if-gez v2, :cond_8

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    move/from16 v2, v21

    :cond_8
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iput-object v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-object v2, v9

    goto :goto_5

    :cond_9
    move/from16 v19, v13

    move/from16 v22, v15

    const/16 v20, 0x8

    const/16 v21, 0x0

    :goto_5
    iget-object v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    const-string v10, "video/hevc"

    const-string v11, "video/avc"

    const/4 v12, 0x6

    const/4 v13, 0x4

    const/4 v14, 0x3

    if-ne v9, v14, :cond_14

    iget-boolean v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Z

    if-nez v9, :cond_a

    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->d:[I

    iget v14, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    aget v9, v9, v14

    goto :goto_6

    :cond_a
    iget-object v9, v5, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    iget v14, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    aget v9, v9, v14

    :goto_6
    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v9, v9, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    iget-object v14, v9, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v14, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_b

    :goto_7
    move/from16 v4, v22

    goto :goto_8

    :cond_b
    move/from16 v4, v21

    goto :goto_8

    :cond_c
    iget-object v9, v9, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_b

    goto :goto_7

    :goto_8
    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:Z

    iget v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iget v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:I

    if-ge v4, v9, :cond_11

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    invoke-interface {v1, v3}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_9

    :cond_d
    iget-object v3, v5, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->d:I

    if-eqz v1, :cond_e

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_e
    iget v1, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iget-boolean v4, v5, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    if-eqz v4, :cond_f

    iget-object v4, v5, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    aget-boolean v1, v4, v1

    if-eqz v1, :cond_f

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->H()I

    move-result v1

    mul-int/2addr v1, v12

    invoke-virtual {v3, v1}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_f
    :goto_9
    invoke-virtual {v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_10
    const/4 v14, 0x3

    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    return v21

    :cond_11
    iget-object v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget v4, v4, Landroidx/media3/extractor/mp4/Track;->h:I

    move/from16 v9, v22

    if-ne v4, v9, :cond_12

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int/lit8 v4, v4, -0x8

    iput v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    move/from16 v4, v20

    invoke-interface {v1, v4}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_12
    iget-object v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    iget-object v4, v4, Landroidx/media3/common/Format;->o:Ljava/lang/String;

    const-string v9, "audio/ac4"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    if-eqz v4, :cond_13

    const/4 v4, 0x7

    invoke-virtual {v2, v9, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d(II)I

    move-result v9

    iput v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    invoke-static {v9, v8}, Landroidx/media3/extractor/Ac4Util;->a(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v9, v4, v8}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v8, v4

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    move/from16 v4, v21

    goto :goto_a

    :cond_13
    move/from16 v4, v21

    invoke-virtual {v2, v9, v4}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d(II)I

    move-result v8

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    :goto_a
    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    iget v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v8, v9

    iput v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    iput v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    :cond_14
    iget-object v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v8, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v9, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v14, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Z

    if-nez v14, :cond_15

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->f:[J

    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    aget-wide v4, v4, v5

    goto :goto_b

    :cond_15
    iget v4, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iget-object v5, v5, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    aget-wide v4, v5, v4

    :goto_b
    if-eqz v6, :cond_16

    invoke-virtual {v6, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->a(J)J

    move-result-wide v4

    :cond_16
    iget v14, v8, Landroidx/media3/extractor/mp4/Track;->k:I

    iget-object v8, v8, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    if-eqz v14, :cond_25

    iget-object v15, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v12, v15, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v21, 0x0

    aput-byte v21, v12, v21

    const/16 v22, 0x1

    aput-byte v21, v12, v22

    aput-byte v21, v12, v19

    rsub-int/lit8 v13, v14, 0x4

    move-object/from16 v17, v2

    :goto_c
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    move/from16 v20, v14

    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    if-ge v2, v14, :cond_26

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    if-nez v2, :cond_20

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    array-length v2, v2

    if-gtz v2, :cond_17

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:Z

    if-nez v2, :cond_18

    :cond_17
    invoke-static {v8}, Landroidx/media3/container/NalUnitUtil;->e(Landroidx/media3/common/Format;)I

    move-result v2

    add-int v14, v20, v2

    move/from16 v25, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    move/from16 v26, v2

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    sub-int v2, v26, v2

    if-gt v14, v2, :cond_18

    move/from16 v2, v25

    goto :goto_d

    :cond_18
    const/4 v2, 0x0

    :goto_d
    add-int v14, v20, v2

    invoke-interface {v1, v12, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    const/4 v14, 0x0

    invoke-virtual {v15, v14}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v21

    if-ltz v21, :cond_1f

    sub-int v14, v21, v2

    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->f:Landroidx/media3/common/util/ParsableByteArray;

    move/from16 v26, v13

    const/4 v13, 0x0

    invoke-virtual {v14, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    const/4 v13, 0x4

    invoke-interface {v9, v13, v14}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v14, v13

    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    add-int v13, v13, v26

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->L:[Landroidx/media3/extractor/TrackOutput;

    array-length v13, v13

    if-lez v13, :cond_1d

    if-lez v2, :cond_1d

    invoke-static {v8}, Landroidx/media3/container/NalUnitUtil;->c(Landroidx/media3/common/Format;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_19

    goto :goto_11

    :cond_19
    invoke-virtual {v13}, Ljava/lang/String;->hashCode()I

    move-result v14

    sparse-switch v14, :sswitch_data_0

    :goto_e
    const/4 v13, -0x1

    goto :goto_f

    :sswitch_0
    const-string v14, "video/vvc"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1a

    goto :goto_e

    :cond_1a
    move/from16 v13, v19

    goto :goto_f

    :sswitch_1
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    goto :goto_e

    :cond_1b
    const/4 v13, 0x1

    goto :goto_f

    :sswitch_2
    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_e

    :cond_1c
    const/4 v13, 0x0

    :goto_f
    packed-switch v13, :pswitch_data_0

    goto :goto_11

    :pswitch_0
    const/4 v13, 0x5

    aget-byte v13, v12, v13

    and-int/lit16 v13, v13, 0xf8

    const/16 v23, 0x3

    shr-int/lit8 v13, v13, 0x3

    const/16 v14, 0x17

    if-ne v13, v14, :cond_1d

    goto :goto_10

    :pswitch_1
    const/16 v16, 0x4

    aget-byte v13, v12, v16

    and-int/lit8 v13, v13, 0x1f

    const/4 v14, 0x6

    if-ne v13, v14, :cond_1d

    goto :goto_10

    :pswitch_2
    const/4 v14, 0x6

    const/16 v16, 0x4

    aget-byte v13, v12, v16

    and-int/lit8 v13, v13, 0x7e

    const/16 v22, 0x1

    shr-int/lit8 v13, v13, 0x1

    const/16 v14, 0x27

    if-ne v13, v14, :cond_1d

    :goto_10
    const/4 v13, 0x1

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v13, 0x0

    :goto_12
    iput-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:Z

    invoke-interface {v9, v2, v15}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v13, v2

    iput v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    if-lez v2, :cond_1e

    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:Z

    if-nez v13, :cond_1e

    invoke-static {v12, v2, v8}, Landroidx/media3/container/NalUnitUtil;->d([BILandroidx/media3/common/Format;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:Z

    :cond_1e
    move/from16 v14, v20

    :goto_13
    move/from16 v13, v26

    goto/16 :goto_c

    :cond_1f
    const-string v0, "Invalid NAL length"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_20
    move/from16 v26, v13

    iget-boolean v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->I:Z

    if-eqz v13, :cond_24

    iget-object v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    move-object/from16 v25, v10

    const/4 v10, 0x0

    invoke-interface {v1, v2, v10, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    invoke-interface {v9, v2, v13}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    move/from16 v27, v2

    iget v2, v13, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-static {v2, v14}, Landroidx/media3/container/NalUnitUtil;->m(I[B)I

    move-result v2

    invoke-virtual {v13, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v13, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    iget v2, v8, Landroidx/media3/common/Format;->q:I

    const/4 v14, -0x1

    if-ne v2, v14, :cond_21

    iget v2, v7, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    if-eqz v2, :cond_22

    invoke-virtual {v7, v10}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    goto :goto_14

    :cond_21
    iget v10, v7, Landroidx/media3/container/ReorderingBufferQueue;->e:I

    if-eq v10, v2, :cond_22

    invoke-virtual {v7, v2}, Landroidx/media3/container/ReorderingBufferQueue;->c(I)V

    :cond_22
    :goto_14
    invoke-virtual {v7, v4, v5, v13}, Landroidx/media3/container/ReorderingBufferQueue;->a(JLandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()I

    move-result v2

    const/16 v16, 0x4

    and-int/lit8 v2, v2, 0x4

    const/4 v13, 0x0

    if-eqz v2, :cond_23

    invoke-virtual {v7, v13}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    :cond_23
    move/from16 v2, v27

    goto :goto_15

    :cond_24
    move-object/from16 v25, v10

    const/4 v13, 0x0

    const/16 v16, 0x4

    invoke-interface {v9, v1, v2, v13}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    :goto_15
    iget v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v10, v2

    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    iget v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    sub-int/2addr v10, v2

    iput v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->G:I

    move/from16 v14, v20

    move-object/from16 v10, v25

    goto :goto_13

    :cond_25
    move-object/from16 v17, v2

    :goto_16
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    if-ge v2, v7, :cond_26

    sub-int/2addr v7, v2

    const/4 v13, 0x0

    invoke-interface {v9, v1, v7, v13}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v2

    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    add-int/2addr v7, v2

    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->F:I

    goto :goto_16

    :cond_26
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a()I

    move-result v1

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->H:Z

    if-nez v2, :cond_27

    const/high16 v2, 0x4000000

    or-int/2addr v1, v2

    :cond_27
    move/from16 v28, v1

    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b()Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, v1, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->c:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-object/from16 v31, v1

    goto :goto_17

    :cond_28
    const/16 v31, 0x0

    :goto_17
    iget v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->E:I

    const/16 v30, 0x0

    move/from16 v29, v1

    move-wide/from16 v26, v4

    move-object/from16 v25, v9

    invoke-interface/range {v25 .. v31}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_29
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    iget v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->c:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->a:J

    iget-boolean v2, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->b:Z

    if-eqz v2, :cond_2a

    add-long v4, v4, v26

    :cond_2a
    if-eqz v6, :cond_2b

    invoke-virtual {v6, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->a(J)J

    move-result-wide v4

    :cond_2b
    move-wide v8, v4

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v4, :cond_29

    aget-object v7, v2, v5

    iget v11, v1, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;->c:I

    iget v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    const/4 v13, 0x0

    const/4 v10, 0x1

    invoke-interface/range {v7 .. v13}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    :cond_2c
    invoke-virtual/range {v17 .. v17}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->c()Z

    move-result v1

    if-nez v1, :cond_2d

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    :cond_2d
    const/4 v14, 0x3

    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    :goto_19
    const/16 v21, 0x0

    return v21

    :cond_2e
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1a
    if-ge v3, v2, :cond_30

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v5, v5, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-boolean v6, v5, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    if-eqz v6, :cond_2f

    iget-wide v5, v5, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    cmp-long v7, v5, v16

    if-gez v7, :cond_2f

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    move-wide/from16 v16, v5

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_30
    if-nez v4, :cond_31

    const/4 v14, 0x3

    iput v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    goto/16 :goto_0

    :cond_31
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    sub-long v2, v16, v2

    long-to-int v2, v2

    if-ltz v2, :cond_32

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    iget-object v2, v4, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v3, v2, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v4, v3, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v5, v3, Landroidx/media3/common/util/ParsableByteArray;->c:I

    const/4 v13, 0x0

    invoke-interface {v1, v4, v13, v5}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {v3, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iput-boolean v13, v2, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    goto/16 :goto_0

    :cond_32
    const-string v0, "Offset to encryption data was negative."

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_33
    iget-wide v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v10, v2

    sub-long/2addr v7, v10

    long-to-int v2, v7

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v7, :cond_42

    iget-object v8, v7, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v10, 0x8

    invoke-interface {v1, v8, v10, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v2, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    invoke-direct {v2, v8, v7}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_34

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    :cond_34
    iget v5, v2, Landroidx/media3/container/Mp4Box;->a:I

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const v7, 0x73696478

    if-ne v5, v7, :cond_37

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroidx/media3/extractor/ChunkIndex;

    invoke-virtual {v9, v3}, Landroidx/media3/extractor/ChunkIndexMerger;->a(Landroidx/media3/extractor/ChunkIndex;)V

    iget-object v3, v9, Landroidx/media3/extractor/ChunkIndexMerger;->a:Ljava/util/LinkedHashMap;

    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:J

    iget-boolean v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->N:Z

    if-nez v5, :cond_36

    iget-object v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_35

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/SeekMap;

    goto :goto_1b

    :cond_35
    invoke-virtual {v9}, Landroidx/media3/extractor/ChunkIndexMerger;->b()Landroidx/media3/extractor/ChunkIndex;

    move-result-object v2

    :goto_1b
    invoke-interface {v5, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:Z

    goto :goto_1c

    :cond_36
    const/4 v7, 0x1

    :goto_1c
    and-int/lit16 v2, v4, 0x100

    if-eqz v2, :cond_43

    iget-boolean v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->N:Z

    if-nez v2, :cond_43

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    if-le v2, v7, :cond_43

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:J

    goto/16 :goto_22

    :cond_37
    const v4, 0x656d7367

    if-ne v5, v4, :cond_43

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    array-length v4, v4

    if-nez v4, :cond_38

    goto/16 :goto_22

    :cond_38
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v4

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_3a

    const/4 v9, 0x1

    if-eq v4, v9, :cond_39

    const-string v2, "Skipping unsupported emsg version: "

    invoke-static {v4, v2}, La;->u(ILjava/lang/String;)V

    goto/16 :goto_22

    :cond_39
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v13

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v9

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v11, 0xf4240

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    invoke-static/range {v9 .. v15}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v16, v11

    move-object v12, v13

    move-object v13, v14

    move-wide v14, v9

    move-wide v9, v7

    goto :goto_1e

    :cond_3a
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->v()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v27

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v23

    sget-object v29, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v25, 0xf4240

    invoke-static/range {v23 .. v29}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    iget-wide v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->C:J

    cmp-long v11, v9, v7

    if-eqz v11, :cond_3b

    add-long/2addr v9, v4

    goto :goto_1d

    :cond_3b
    move-wide v9, v7

    :goto_1d
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v23

    const-wide/16 v25, 0x3e8

    invoke-static/range {v23 .. v29}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v11

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v15

    move-wide/from16 v32, v9

    move-wide v9, v4

    move-wide/from16 v4, v32

    move-wide/from16 v16, v15

    move-wide/from16 v32, v11

    move-object v12, v13

    move-object v13, v14

    move-wide/from16 v14, v32

    :goto_1e
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v11

    new-array v11, v11, [B

    move-wide/from16 v19, v7

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v7, v11}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    move-object/from16 v18, v11

    new-instance v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;

    invoke-direct/range {v11 .. v18}, Landroidx/media3/extractor/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->l:Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;

    iget-object v8, v7, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->b:Ljava/io/DataOutputStream;

    iget-object v7, v7, Landroidx/media3/extractor/metadata/emsg/EventMessageEncoder;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    :try_start_0
    iget-object v12, v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;->a:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v12, v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;->b:Ljava/lang/String;

    if-eqz v12, :cond_3c

    goto :goto_1f

    :cond_3c
    const-string v12, ""

    :goto_1f
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-wide v12, v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;->c:J

    invoke-virtual {v8, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v12, v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;->d:J

    invoke-virtual {v8, v12, v13}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v11, v11, Landroidx/media3/extractor/metadata/emsg/EventMessage;->e:[B

    invoke-virtual {v8, v11}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {v2, v7}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v15

    iget-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    array-length v8, v7

    const/4 v11, 0x0

    :goto_20
    if-ge v11, v8, :cond_3d

    aget-object v12, v7, v11

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-interface {v12, v15, v2}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_20

    :cond_3d
    cmp-long v2, v4, v19

    if-nez v2, :cond_3e

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v7, 0x1

    invoke-direct {v2, v9, v10, v7, v15}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    add-int/2addr v2, v15

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    goto :goto_22

    :cond_3e
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3f

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    const/4 v13, 0x0

    invoke-direct {v2, v4, v5, v13, v15}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    add-int/2addr v2, v15

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    goto :goto_22

    :cond_3f
    const/4 v13, 0x0

    if-eqz v6, :cond_40

    invoke-virtual {v6}, Landroidx/media3/common/util/TimestampAdjuster;->e()Z

    move-result v2

    if-nez v2, :cond_40

    new-instance v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;

    invoke-direct {v2, v4, v5, v13, v15}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$MetadataSampleInfo;-><init>(JZI)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    add-int/2addr v2, v15

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->z:I

    goto :goto_22

    :cond_40
    if-eqz v6, :cond_41

    invoke-virtual {v6, v4, v5}, Landroidx/media3/common/util/TimestampAdjuster;->a(J)J

    move-result-wide v4

    :cond_41
    move-wide v12, v4

    iget-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->K:[Landroidx/media3/extractor/TrackOutput;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_21
    if-ge v4, v3, :cond_43

    aget-object v11, v2, v4

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v14, 0x1

    invoke-interface/range {v11 .. v17}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :catch_0
    move-exception v0

    invoke-static {v0}, Lx1;->m(Ljava/lang/Throwable;)V

    goto/16 :goto_19

    :cond_42
    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    :cond_43
    :goto_22
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k(J)V

    goto/16 :goto_0

    :cond_44
    move/from16 v19, v13

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    const-wide/16 v3, -0x1

    iget-object v6, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    if-nez v2, :cond_47

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v11, 0x8

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13, v11, v2}, Landroidx/media3/extractor/ExtractorInput;->h(ZII[B)Z

    move-result v2

    if-nez v2, :cond_46

    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_45

    move-object/from16 v11, p2

    iput-wide v1, v11, Landroidx/media3/extractor/PositionHolder;->a:J

    iput-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:J

    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v9}, Landroidx/media3/extractor/ChunkIndexMerger;->b()Landroidx/media3/extractor/ChunkIndex;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    iput-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->N:Z

    return v12

    :cond_45
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroidx/media3/container/ReorderingBufferQueue;->b(I)V

    const/16 v18, -0x1

    return v18

    :cond_46
    move-object/from16 v11, p2

    const/16 v2, 0x8

    const/4 v13, 0x0

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    invoke-virtual {v6, v13}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    goto :goto_23

    :cond_47
    move-object/from16 v11, p2

    :goto_23
    iget-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    const-wide/16 v14, 0x1

    cmp-long v2, v12, v14

    if-nez v2, :cond_48

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v7, 0x8

    invoke-interface {v1, v2, v7, v7}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    add-int/2addr v2, v7

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v12

    iput-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    goto :goto_24

    :cond_48
    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-nez v2, :cond_4a

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getLength()J

    move-result-wide v12

    cmp-long v2, v12, v3

    if-nez v2, :cond_49

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_49

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v12, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    :cond_49
    cmp-long v2, v12, v3

    if-eqz v2, :cond_4a

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v14

    sub-long/2addr v12, v14

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v14, v2

    add-long/2addr v12, v14

    iput-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    :cond_4a
    :goto_24
    iget-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v14, v2

    cmp-long v7, v12, v14

    if-gez v7, :cond_4c

    iget v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    const v12, 0x66726565

    if-ne v7, v12, :cond_4b

    const/16 v7, 0x8

    if-ne v2, v7, :cond_4b

    iput-wide v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    goto :goto_25

    :cond_4b
    const-string v0, "Atom size less than header length (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4c
    :goto_25
    iget-wide v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->O:J

    cmp-long v2, v12, v3

    if-eqz v2, :cond_4e

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    const v7, 0x73696478

    if-ne v2, v7, :cond_4d

    long-to-int v2, v3

    invoke-virtual {v8, v2}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-object v3, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v4, 0x8

    const/4 v13, 0x0

    invoke-static {v2, v13, v3, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v12, v3

    sub-long/2addr v5, v12

    long-to-int v3, v5

    invoke-interface {v1, v2, v4, v3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    new-instance v2, Landroidx/media3/container/Mp4Box$LeafBox;

    const v7, 0x73696478

    invoke-direct {v2, v7, v8}, Landroidx/media3/container/Mp4Box$LeafBox;-><init>(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget-object v2, v2, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->j()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->j(JLandroidx/media3/common/util/ParsableByteArray;)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroidx/media3/extractor/ChunkIndex;

    invoke-virtual {v9, v2}, Landroidx/media3/extractor/ChunkIndexMerger;->a(Landroidx/media3/extractor/ChunkIndex;)V

    goto :goto_26

    :cond_4d
    sub-long/2addr v3, v14

    long-to-int v2, v3

    const/4 v7, 0x1

    invoke-interface {v1, v2, v7}, Landroidx/media3/extractor/ExtractorInput;->e(IZ)Z

    :goto_26
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    goto/16 :goto_0

    :cond_4e
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v2

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v12, v4

    sub-long/2addr v2, v12

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    const v7, 0x6d646174

    const v9, 0x6d6f6f66

    if-eq v4, v9, :cond_4f

    if-ne v4, v7, :cond_50

    :cond_4f
    iget-boolean v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:Z

    if-nez v4, :cond_50

    iget-object v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    new-instance v12, Landroidx/media3/extractor/SeekMap$Unseekable;

    iget-wide v13, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:J

    invoke-direct {v12, v13, v14, v2, v3}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(JJ)V

    invoke-interface {v4, v12}, Landroidx/media3/extractor/ExtractorOutput;->j(Landroidx/media3/extractor/SeekMap;)V

    const/4 v12, 0x1

    iput-boolean v12, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->M:Z

    :cond_50
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    if-ne v4, v9, :cond_51

    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v12, 0x0

    :goto_27
    if-ge v12, v4, :cond_51

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v13, v13, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-wide v2, v13, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    iput-wide v2, v13, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    add-int/lit8 v12, v12, 0x1

    goto :goto_27

    :cond_51
    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    if-ne v4, v7, :cond_52

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->D:Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->y:J

    move/from16 v2, v19

    iput v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    goto/16 :goto_0

    :cond_52
    const v2, 0x6d6f6f76

    const v3, 0x6d657461

    if-eq v4, v2, :cond_59

    const v2, 0x7472616b

    if-eq v4, v2, :cond_59

    const v2, 0x6d646961

    if-eq v4, v2, :cond_59

    const v2, 0x6d696e66

    if-eq v4, v2, :cond_59

    const v2, 0x7374626c

    if-eq v4, v2, :cond_59

    if-eq v4, v9, :cond_59

    const v2, 0x74726166

    if-eq v4, v2, :cond_59

    const v2, 0x6d766578

    if-eq v4, v2, :cond_59

    const v2, 0x65647473

    if-eq v4, v2, :cond_59

    if-ne v4, v3, :cond_53

    goto/16 :goto_29

    :cond_53
    const v2, 0x68646c72    # 4.3148E24f

    const-wide/32 v7, 0x7fffffff

    if-eq v4, v2, :cond_56

    const v2, 0x6d646864

    if-eq v4, v2, :cond_56

    const v2, 0x6d766864

    if-eq v4, v2, :cond_56

    const v2, 0x73696478

    if-eq v4, v2, :cond_56

    const v2, 0x73747364

    if-eq v4, v2, :cond_56

    const v2, 0x73747473

    if-eq v4, v2, :cond_56

    const v2, 0x63747473

    if-eq v4, v2, :cond_56

    const v2, 0x73747363

    if-eq v4, v2, :cond_56

    const v2, 0x7374737a

    if-eq v4, v2, :cond_56

    const v2, 0x73747a32

    if-eq v4, v2, :cond_56

    const v2, 0x7374636f

    if-eq v4, v2, :cond_56

    const v2, 0x636f3634

    if-eq v4, v2, :cond_56

    const v2, 0x73747373

    if-eq v4, v2, :cond_56

    const v2, 0x74666474

    if-eq v4, v2, :cond_56

    const v2, 0x74666864

    if-eq v4, v2, :cond_56

    const v2, 0x746b6864

    if-eq v4, v2, :cond_56

    const v2, 0x74726578

    if-eq v4, v2, :cond_56

    const v2, 0x7472756e

    if-eq v4, v2, :cond_56

    const v2, 0x70737368    # 3.013775E29f

    if-eq v4, v2, :cond_56

    const v2, 0x7361697a

    if-eq v4, v2, :cond_56

    const v2, 0x7361696f

    if-eq v4, v2, :cond_56

    const v2, 0x73656e63

    if-eq v4, v2, :cond_56

    const v2, 0x75756964

    if-eq v4, v2, :cond_56

    const v2, 0x73626770

    if-eq v4, v2, :cond_56

    const v2, 0x73677064

    if-eq v4, v2, :cond_56

    const v2, 0x656c7374

    if-eq v4, v2, :cond_56

    const v2, 0x6d656864

    if-eq v4, v2, :cond_56

    const v2, 0x656d7367

    if-eq v4, v2, :cond_56

    const v2, 0x75647461

    if-eq v4, v2, :cond_56

    const v2, 0x6b657973

    if-eq v4, v2, :cond_56

    const v2, 0x696c7374

    if-ne v4, v2, :cond_54

    goto :goto_28

    :cond_54
    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_55

    const/4 v7, 0x0

    iput-object v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x1

    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    goto/16 :goto_0

    :cond_55
    const-string v0, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_56
    :goto_28
    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_58

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_57

    new-instance v2, Landroidx/media3/common/util/ParsableByteArray;

    iget-wide v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    long-to-int v3, v7

    invoke-direct {v2, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v3, v6, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget-object v5, v2, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v13, 0x0

    invoke-static {v3, v13, v5, v13, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->x:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v7, 0x1

    iput v7, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    goto/16 :goto_0

    :cond_57
    const-string v0, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_58
    const-string v0, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_59
    :goto_29
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v6

    iget-wide v9, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    add-long/2addr v6, v9

    const-wide/16 v12, 0x8

    sub-long/2addr v6, v12

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v12, v2

    cmp-long v2, v9, v12

    if-eqz v2, :cond_5a

    iget v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    if-ne v2, v3, :cond_5a

    const/16 v4, 0x8

    invoke-virtual {v8, v4}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v2, v8, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v13, 0x0

    invoke-interface {v1, v13, v4, v2}, Landroidx/media3/extractor/ExtractorInput;->b(II[B)V

    invoke-static {v8}, Landroidx/media3/extractor/mp4/BoxParser;->a(Landroidx/media3/common/util/ParsableByteArray;)V

    iget v2, v8, Landroidx/media3/common/util/ParsableByteArray;->b:I

    invoke-interface {v1, v2}, Landroidx/media3/extractor/ExtractorInput;->m(I)V

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    :cond_5a
    new-instance v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->u:I

    invoke-direct {v2, v3, v6, v7}, Landroidx/media3/container/Mp4Box$ContainerBox;-><init>(IJ)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->v:J

    iget v4, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5b

    invoke-virtual {v0, v6, v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->k(J)V

    goto/16 :goto_0

    :cond_5b
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x63185e82 -> :sswitch_2
        0x4f62373a -> :sswitch_1
        0x4f62860f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->t:I

    iput v0, p0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->w:I

    return-void
.end method

.method public final k(J)V
    .locals 55

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->n:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_60

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-wide v2, v2, Landroidx/media3/container/Mp4Box$ContainerBox;->b:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_60

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v2, v3, Landroidx/media3/container/Mp4Box;->a:I

    iget-object v4, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    iget-object v5, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    const v6, 0x6d6f6f76

    const/4 v7, 0x0

    iget v8, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->b:I

    const/16 v10, 0xc

    iget-object v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->c:Landroidx/media3/extractor/mp4/Track;

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v14, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->e:Landroid/util/SparseArray;

    if-ne v2, v6, :cond_10

    if-nez v11, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "Unexpected moov box."

    invoke-static {v2, v1}, Lcom/google/common/base/Preconditions;->p(Ljava/lang/String;Z)V

    move-object v6, v7

    invoke-static {v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v7

    const v1, 0x6d766578

    invoke-virtual {v3, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object v15, v6

    move-wide/from16 v5, v16

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v4, :cond_5

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroidx/media3/container/Mp4Box$LeafBox;

    const/16 v19, 0x0

    iget v12, v15, Landroidx/media3/container/Mp4Box;->a:I

    iget-object v15, v15, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v20, 0x1

    const v13, 0x74726578

    if-ne v12, v13, :cond_2

    invoke-virtual {v15, v10}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v12

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v10

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v15

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v23, v1

    new-instance v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v1, v13, v10, v9, v15}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    invoke-static {v12, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v2, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_2
    move-object/from16 v23, v1

    const v1, 0x6d656864

    if-ne v12, v1, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v15, v1}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v5

    goto :goto_3

    :cond_3
    invoke-virtual {v15}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v5

    :cond_4
    :goto_3
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v23

    const/16 v10, 0xc

    const/4 v15, 0x0

    goto :goto_2

    :cond_5
    const/16 v19, 0x0

    const/16 v20, 0x1

    const v1, 0x6d657461

    invoke-virtual {v3, v1}, Landroidx/media3/container/Mp4Box$ContainerBox;->b(I)Landroidx/media3/container/Mp4Box$ContainerBox;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Landroidx/media3/extractor/mp4/BoxParser;->e(Landroidx/media3/container/Mp4Box$ContainerBox;)Landroidx/media3/common/Metadata;

    move-result-object v1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    new-instance v4, Landroidx/media3/extractor/GaplessInfoHolder;

    invoke-direct {v4}, Landroidx/media3/extractor/GaplessInfoHolder;-><init>()V

    const v9, 0x75647461

    invoke-virtual {v3, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->j(Landroidx/media3/container/Mp4Box$LeafBox;)Landroidx/media3/common/Metadata;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroidx/media3/extractor/GaplessInfoHolder;->b(Landroidx/media3/common/Metadata;)V

    move-object v12, v9

    goto :goto_5

    :cond_7
    const/4 v12, 0x0

    :goto_5
    new-instance v13, Landroidx/media3/common/Metadata;

    const v9, 0x6d766864

    invoke-virtual {v3, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v9, v9, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {v9}, Landroidx/media3/extractor/mp4/BoxParser;->f(Landroidx/media3/common/util/ParsableByteArray;)Landroidx/media3/container/Mp4TimestampData;

    move-result-object v9

    move/from16 v10, v20

    new-array v11, v10, [Landroidx/media3/common/Metadata$Entry;

    aput-object v9, v11, v19

    invoke-direct {v13, v11}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    move/from16 v8, v19

    :goto_6
    new-instance v10, Luh;

    invoke-direct {v10, v0}, Luh;-><init>(Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;)V

    const/4 v11, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Landroidx/media3/extractor/mp4/BoxParser;->i(Landroidx/media3/container/Mp4Box$ContainerBox;Landroidx/media3/extractor/GaplessInfoHolder;JLandroidx/media3/common/DrmInitData;ZZLcom/google/common/base/Function;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-nez v6, :cond_d

    invoke-static {v3}, Landroidx/media3/extractor/mp4/MimeTypeResolver;->a(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    move/from16 v7, v19

    :goto_7
    if-ge v7, v5, :cond_c

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v9, v8, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v10, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    iget v11, v9, Landroidx/media3/extractor/mp4/Track;->b:I

    iget v15, v9, Landroidx/media3/extractor/mp4/Track;->a:I

    move-object/from16 v16, v6

    iget-object v6, v9, Landroidx/media3/extractor/mp4/Track;->g:Landroidx/media3/common/Format;

    move-object/from16 v17, v8

    iget-wide v8, v9, Landroidx/media3/extractor/mp4/Track;->e:J

    invoke-interface {v10, v7, v11}, Landroidx/media3/extractor/ExtractorOutput;->r(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v10

    invoke-interface {v10, v8, v9}, Landroidx/media3/extractor/TrackOutput;->e(J)V

    move/from16 v18, v7

    invoke-virtual {v6}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v7

    move-object/from16 v21, v3

    invoke-static/range {v16 .. v16}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Landroidx/media3/common/Format$Builder;->m:Ljava/lang/String;

    const/4 v3, 0x1

    if-ne v11, v3, :cond_9

    iget v3, v4, Landroidx/media3/extractor/GaplessInfoHolder;->a:I

    move/from16 v22, v5

    const/4 v5, -0x1

    move-wide/from16 v23, v8

    if-eq v3, v5, :cond_a

    iget v8, v4, Landroidx/media3/extractor/GaplessInfoHolder;->b:I

    if-eq v8, v5, :cond_a

    iput v3, v7, Landroidx/media3/common/Format$Builder;->I:I

    iput v8, v7, Landroidx/media3/common/Format$Builder;->J:I

    goto :goto_8

    :cond_9
    move/from16 v22, v5

    move-wide/from16 v23, v8

    :cond_a
    :goto_8
    iget-object v3, v6, Landroidx/media3/common/Format;->l:Landroidx/media3/common/Metadata;

    filled-new-array {v12, v13}, [Landroidx/media3/common/Metadata;

    move-result-object v5

    invoke-static {v11, v1, v7, v3, v5}, Landroidx/media3/extractor/mp4/MetadataUtil;->f(ILandroidx/media3/common/Metadata;Landroidx/media3/common/Format$Builder;Landroidx/media3/common/Metadata;[Landroidx/media3/common/Metadata;)V

    new-instance v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    move/from16 v5, v19

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_9

    :cond_b
    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_9
    new-instance v5, Landroidx/media3/common/Format;

    invoke-direct {v5, v7}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    move-object/from16 v8, v17

    invoke-direct {v3, v10, v8, v6, v5}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;-><init>(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/mp4/TrackSampleTable;Landroidx/media3/extractor/mp4/DefaultSampleValues;Landroidx/media3/common/Format;)V

    invoke-virtual {v14, v15, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:J

    move-wide/from16 v7, v23

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->B:J

    add-int/lit8 v7, v18, 0x1

    move-object/from16 v6, v16

    move-object/from16 v3, v21

    move/from16 v5, v22

    const/16 v19, 0x0

    goto/16 :goto_7

    :cond_c
    iget-object v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->J:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v21, v3

    move/from16 v22, v5

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    move/from16 v3, v22

    if-ne v1, v3, :cond_e

    const/4 v1, 0x1

    goto :goto_a

    :cond_e
    const/4 v1, 0x0

    :goto_a
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->q(Z)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v3, :cond_0

    move-object/from16 v4, v21

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v6, v5, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget v7, v6, Landroidx/media3/extractor/mp4/Track;->a:I

    invoke-virtual {v14, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget v6, v6, Landroidx/media3/extractor/mp4/Track;->a:I

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    goto :goto_c

    :cond_f
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_c
    iput-object v5, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iput-object v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    iget-object v5, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    iget-object v6, v7, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->j:Landroidx/media3/common/Format;

    invoke-interface {v5, v6}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    invoke-virtual {v7}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v21, v4

    goto :goto_b

    :cond_10
    const v6, 0x6d6f6f66

    if-ne v2, v6, :cond_5f

    if-eqz v11, :cond_11

    const/4 v10, 0x1

    goto :goto_d

    :cond_11
    const/4 v10, 0x0

    :goto_d
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_58

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget v6, v3, Landroidx/media3/container/Mp4Box;->a:I

    const v7, 0x74726166

    if-ne v6, v7, :cond_57

    const v6, 0x74666864

    invoke-virtual {v3, v6}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v6

    iget-object v7, v3, Landroidx/media3/container/Mp4Box$ContainerBox;->c:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    sget-object v11, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v11

    if-eqz v10, :cond_12

    const/4 v12, 0x0

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    :goto_f
    check-cast v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    goto :goto_10

    :cond_12
    invoke-virtual {v14, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    goto :goto_f

    :goto_10
    if-nez v11, :cond_13

    move v13, v1

    move v15, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    const/4 v11, 0x0

    goto :goto_16

    :cond_13
    iget-object v12, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    and-int/lit8 v13, v9, 0x1

    if-eqz v13, :cond_14

    move v13, v1

    move v15, v2

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v1

    iput-wide v1, v12, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    iput-wide v1, v12, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    goto :goto_11

    :cond_14
    move v13, v1

    move v15, v2

    :goto_11
    iget-object v1, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    and-int/lit8 v2, v9, 0x2

    if-eqz v2, :cond_15

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    const/16 v20, 0x1

    add-int/lit8 v2, v2, -0x1

    goto :goto_12

    :cond_15
    iget v2, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    :goto_12
    and-int/lit8 v23, v9, 0x8

    if-eqz v23, :cond_16

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v23

    move/from16 v54, v23

    move-object/from16 v23, v4

    move/from16 v4, v54

    goto :goto_13

    :cond_16
    move-object/from16 v23, v4

    iget v4, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->b:I

    :goto_13
    and-int/lit8 v24, v9, 0x10

    if-eqz v24, :cond_17

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v24

    move/from16 v54, v24

    move-object/from16 v24, v5

    move/from16 v5, v54

    goto :goto_14

    :cond_17
    move-object/from16 v24, v5

    iget v5, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->c:I

    :goto_14
    and-int/lit8 v9, v9, 0x20

    if-eqz v9, :cond_18

    invoke-virtual {v6}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v1

    goto :goto_15

    :cond_18
    iget v1, v1, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    :goto_15
    new-instance v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-direct {v6, v2, v4, v5, v1}, Landroidx/media3/extractor/mp4/DefaultSampleValues;-><init>(IIII)V

    iput-object v6, v12, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    :goto_16
    if-nez v11, :cond_1a

    move/from16 v50, v8

    const/16 v9, 0xc

    :cond_19
    const/16 v8, 0x8

    goto/16 :goto_40

    :cond_1a
    iget-object v1, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-wide v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    iget-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    invoke-virtual {v11}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->e()V

    const/4 v6, 0x1

    iput-boolean v6, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->m:Z

    const v9, 0x74666474

    invoke-virtual {v3, v9}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v9

    if-eqz v9, :cond_1c

    and-int/lit8 v12, v8, 0x2

    if-nez v12, :cond_1c

    iget-object v2, v9, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v2, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v4

    if-ne v4, v6, :cond_1b

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v4

    goto :goto_17

    :cond_1b
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    :goto_17
    iput-wide v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    iput-boolean v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    goto :goto_18

    :cond_1c
    iput-wide v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    iput-boolean v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    :goto_18
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_19
    const v9, 0x7472756e

    if-ge v4, v2, :cond_1e

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/container/Mp4Box$LeafBox;

    move/from16 v25, v4

    iget v4, v12, Landroidx/media3/container/Mp4Box;->a:I

    if-ne v4, v9, :cond_1d

    iget-object v4, v12, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0xc

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v4

    if-lez v4, :cond_1d

    add-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    :cond_1d
    add-int/lit8 v4, v25, 0x1

    goto :goto_19

    :cond_1e
    const/4 v12, 0x0

    iput v12, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->h:I

    iput v12, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->g:I

    iput v12, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    iput v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->d:I

    iput v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    array-length v4, v4

    if-ge v4, v5, :cond_1f

    new-array v4, v5, [J

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    new-array v4, v5, [I

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    :cond_1f
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    array-length v4, v4

    if-ge v4, v6, :cond_20

    mul-int/lit8 v6, v6, 0x7d

    div-int/lit8 v6, v6, 0x64

    new-array v4, v6, [I

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    new-array v4, v6, [J

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    new-array v4, v6, [Z

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    new-array v4, v6, [Z

    iput-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    :cond_20
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1a
    const-wide/16 v25, 0x0

    const/16 v27, 0x10

    if-ge v4, v2, :cond_38

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    move-object/from16 v12, v28

    check-cast v12, Landroidx/media3/container/Mp4Box$LeafBox;

    move/from16 v28, v2

    iget v2, v12, Landroidx/media3/container/Mp4Box;->a:I

    if-ne v2, v9, :cond_37

    add-int/lit8 v2, v5, 0x1

    iget-object v12, v12, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v12, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v9

    sget-object v31, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    move/from16 v31, v2

    iget-object v2, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    move/from16 v32, v4

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget-object v33, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    move/from16 v33, v5

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v34

    aput v34, v5, v33

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    move-object/from16 v35, v5

    move/from16 v34, v6

    iget-wide v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->b:J

    aput-wide v5, v35, v33

    and-int/lit8 v36, v9, 0x1

    if-eqz v36, :cond_21

    move-wide/from16 v36, v5

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    int-to-long v5, v5

    add-long v5, v36, v5

    aput-wide v5, v35, v33

    :cond_21
    and-int/lit8 v5, v9, 0x4

    if-eqz v5, :cond_22

    const/4 v5, 0x1

    goto :goto_1b

    :cond_22
    const/4 v5, 0x0

    :goto_1b
    iget v6, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    if-eqz v5, :cond_23

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    :cond_23
    move/from16 v35, v5

    and-int/lit16 v5, v9, 0x100

    if-eqz v5, :cond_24

    const/4 v5, 0x1

    goto :goto_1c

    :cond_24
    const/4 v5, 0x0

    :goto_1c
    move/from16 v36, v5

    and-int/lit16 v5, v9, 0x200

    if-eqz v5, :cond_25

    const/4 v5, 0x1

    goto :goto_1d

    :cond_25
    const/4 v5, 0x0

    :goto_1d
    move/from16 v37, v5

    and-int/lit16 v5, v9, 0x400

    if-eqz v5, :cond_26

    const/4 v5, 0x1

    goto :goto_1e

    :cond_26
    const/4 v5, 0x0

    :goto_1e
    and-int/lit16 v9, v9, 0x800

    if-eqz v9, :cond_27

    const/4 v9, 0x1

    :goto_1f
    move/from16 v38, v5

    goto :goto_20

    :cond_27
    const/4 v9, 0x0

    goto :goto_1f

    :goto_20
    iget-object v5, v2, Landroidx/media3/extractor/mp4/Track;->i:[J

    move/from16 v39, v6

    iget-object v6, v2, Landroidx/media3/extractor/mp4/Track;->j:[J

    if-eqz v5, :cond_2a

    move-object/from16 v40, v6

    array-length v6, v5

    move-object/from16 v41, v5

    const/4 v5, 0x1

    if-ne v6, v5, :cond_2a

    if-nez v40, :cond_28

    goto :goto_22

    :cond_28
    const/16 v19, 0x0

    aget-wide v42, v41, v19

    cmp-long v5, v42, v25

    if-nez v5, :cond_29

    goto :goto_21

    :cond_29
    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->d:J

    sget-object v48, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v44, 0xf4240

    move-wide/from16 v46, v5

    invoke-static/range {v42 .. v48}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    aget-wide v44, v40, v19

    const-wide/32 v46, 0xf4240

    move-wide/from16 v41, v5

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->c:J

    move-object/from16 v50, v48

    move-wide/from16 v48, v5

    invoke-static/range {v44 .. v50}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    add-long v5, v41, v5

    move-wide/from16 v41, v5

    iget-wide v5, v2, Landroidx/media3/extractor/mp4/Track;->e:J

    cmp-long v5, v41, v5

    if-ltz v5, :cond_2a

    :goto_21
    aget-wide v25, v40, v19

    :cond_2a
    :goto_22
    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    move-object/from16 v40, v5

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    move-object/from16 v41, v5

    iget v5, v2, Landroidx/media3/extractor/mp4/Track;->b:I

    move-object/from16 v42, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2b

    and-int/lit8 v5, v8, 0x1

    if-eqz v5, :cond_2b

    const/4 v5, 0x1

    goto :goto_23

    :cond_2b
    const/4 v5, 0x0

    :goto_23
    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    aget v6, v6, v33

    add-int v6, v34, v6

    move/from16 v50, v8

    move/from16 v29, v9

    iget-wide v8, v2, Landroidx/media3/extractor/mp4/Track;->c:J

    move-wide/from16 v47, v8

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    move/from16 v2, v34

    :goto_24
    if-ge v2, v6, :cond_36

    if-eqz v36, :cond_2c

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v33

    move/from16 v51, v33

    move/from16 v33, v2

    move/from16 v2, v51

    :goto_25
    move/from16 v51, v5

    goto :goto_26

    :cond_2c
    move/from16 v33, v2

    iget v2, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->b:I

    goto :goto_25

    :goto_26
    const-string v5, "Unexpected negative value: "

    if-ltz v2, :cond_35

    if-eqz v37, :cond_2d

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v34

    move/from16 v52, v6

    move/from16 v6, v34

    goto :goto_27

    :cond_2d
    move/from16 v52, v6

    iget v6, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->c:I

    :goto_27
    if-ltz v6, :cond_34

    if-eqz v38, :cond_2e

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    goto :goto_28

    :cond_2e
    if-nez v33, :cond_2f

    if-eqz v35, :cond_2f

    move/from16 v5, v39

    goto :goto_28

    :cond_2f
    iget v5, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->d:I

    :goto_28
    if-eqz v29, :cond_30

    invoke-virtual {v12}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v34

    move-object/from16 v53, v4

    move/from16 v4, v34

    :goto_29
    move/from16 v34, v5

    goto :goto_2a

    :cond_30
    move-object/from16 v53, v4

    const/4 v4, 0x0

    goto :goto_29

    :goto_2a
    int-to-long v4, v4

    add-long/2addr v4, v8

    sub-long v43, v4, v25

    const-wide/32 v45, 0xf4240

    sget-object v49, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-static/range {v43 .. v49}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    aput-wide v4, v42, v33

    move-wide/from16 v43, v4

    iget-boolean v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->q:Z

    if-nez v4, :cond_31

    iget-object v4, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-wide v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->i:J

    add-long v4, v43, v4

    aput-wide v4, v42, v33

    :cond_31
    aput v6, v40, v33

    shr-int/lit8 v4, v34, 0x10

    const/16 v20, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_33

    if-eqz v51, :cond_32

    if-nez v33, :cond_33

    :cond_32
    const/4 v4, 0x1

    goto :goto_2b

    :cond_33
    const/4 v4, 0x0

    :goto_2b
    aput-boolean v4, v41, v33

    int-to-long v4, v2

    add-long/2addr v8, v4

    add-int/lit8 v2, v33, 0x1

    move/from16 v5, v51

    move/from16 v6, v52

    move-object/from16 v4, v53

    goto/16 :goto_24

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v15, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_35
    const/4 v15, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_36
    move/from16 v52, v6

    iput-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->p:J

    move/from16 v5, v31

    goto :goto_2c

    :cond_37
    move/from16 v32, v4

    move/from16 v33, v5

    move/from16 v34, v6

    move/from16 v50, v8

    :goto_2c
    add-int/lit8 v4, v32, 0x1

    move/from16 v2, v28

    move/from16 v8, v50

    const v9, 0x7472756e

    goto/16 :goto_1a

    :cond_38
    move/from16 v50, v8

    iget-object v2, v11, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v4, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    iget-object v2, v2, Landroidx/media3/extractor/mp4/Track;->l:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez v2, :cond_39

    const/4 v2, 0x0

    goto :goto_2d

    :cond_39
    aget-object v2, v2, v4

    :goto_2d
    const v4, 0x7361697a

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_40

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget v5, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->d:I

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v6

    sget-object v8, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    const/4 v8, 0x1

    and-int/2addr v6, v8

    if-ne v6, v8, :cond_3a

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_3a
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v6

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v8

    iget v9, v1, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    if-gt v8, v9, :cond_3f

    if-nez v6, :cond_3d

    iget-object v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_2e
    if-ge v9, v8, :cond_3c

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v12

    add-int/2addr v11, v12

    if-le v12, v5, :cond_3b

    const/4 v12, 0x1

    goto :goto_2f

    :cond_3b
    const/4 v12, 0x0

    :goto_2f
    aput-boolean v12, v6, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_3c
    const/4 v12, 0x0

    goto :goto_31

    :cond_3d
    if-le v6, v5, :cond_3e

    const/4 v4, 0x1

    goto :goto_30

    :cond_3e
    const/4 v4, 0x0

    :goto_30
    mul-int v11, v6, v8

    iget-object v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    const/4 v12, 0x0

    invoke-static {v5, v12, v8, v4}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_31
    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    iget v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    invoke-static {v4, v8, v5, v12}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v11, :cond_40

    iget-object v4, v1, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v4, v11}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    const/4 v6, 0x1

    iput-boolean v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    iput-boolean v6, v1, Landroidx/media3/extractor/mp4/TrackFragment;->o:Z

    goto :goto_32

    :cond_3f
    const-string v0, "Saiz sample count "

    const-string v2, " is greater than fragment sample count"

    invoke-static {v8, v0, v2}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v15, 0x0

    invoke-static {v15, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_40
    :goto_32
    const v4, 0x7361696f

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v4

    if-eqz v4, :cond_43

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v9, 0x8

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    sget-object v6, Landroidx/media3/extractor/mp4/BoxParser;->a:[B

    and-int/lit8 v6, v5, 0x1

    const/4 v8, 0x1

    if-ne v6, v8, :cond_41

    invoke-virtual {v4, v9}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_41
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v6

    if-ne v6, v8, :cond_44

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v5

    iget-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    if-nez v5, :cond_42

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    goto :goto_33

    :cond_42
    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->G()J

    move-result-wide v4

    :goto_33
    add-long/2addr v8, v4

    iput-wide v8, v1, Landroidx/media3/extractor/mp4/TrackFragment;->c:J

    :cond_43
    const/4 v6, 0x0

    goto :goto_34

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected saio entry count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    invoke-static {v6, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_34
    const v4, 0x73656e63

    invoke-virtual {v3, v4}, Landroidx/media3/container/Mp4Box$ContainerBox;->c(I)Landroidx/media3/container/Mp4Box$LeafBox;

    move-result-object v3

    if-eqz v3, :cond_45

    iget-object v3, v3, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v12, 0x0

    invoke-static {v3, v12, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    :cond_45
    if-eqz v2, :cond_46

    iget-object v2, v2, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    move-object/from16 v32, v2

    goto :goto_35

    :cond_46
    move-object/from16 v32, v6

    :goto_35
    move-object v2, v6

    move-object v3, v2

    const/4 v4, 0x0

    :goto_36
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_49

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media3/container/Mp4Box$LeafBox;

    iget-object v8, v5, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    iget v5, v5, Landroidx/media3/container/Mp4Box;->a:I

    const v9, 0x73626770

    const v11, 0x73656967

    if-ne v5, v9, :cond_47

    const/16 v9, 0xc

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    if-ne v5, v11, :cond_48

    move-object v2, v8

    goto :goto_37

    :cond_47
    const/16 v9, 0xc

    const v12, 0x73677064

    if-ne v5, v12, :cond_48

    invoke-virtual {v8, v9}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v8}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    if-ne v5, v11, :cond_48

    move-object v3, v8

    :cond_48
    :goto_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_49
    const/16 v9, 0xc

    if-eqz v2, :cond_4a

    if-nez v3, :cond_4b

    :cond_4a
    :goto_38
    const/4 v5, 0x1

    goto/16 :goto_3d

    :cond_4b
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v5

    invoke-static {v5}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v5

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    const/4 v11, 0x1

    if-ne v5, v11, :cond_4c

    invoke-virtual {v2, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_4c
    invoke-virtual {v2}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    if-ne v2, v11, :cond_54

    invoke-virtual {v3, v4}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v2

    invoke-static {v2}, Landroidx/media3/extractor/mp4/BoxParser;->d(I)I

    move-result v2

    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    if-ne v2, v11, :cond_4e

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    cmp-long v2, v4, v25

    if-eqz v2, :cond_4d

    goto :goto_39

    :cond_4d
    const-string v0, "Variable length description in sgpd found (unsupported)"

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_4e
    const/4 v4, 0x2

    if-lt v2, v4, :cond_4f

    invoke-virtual {v3, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    :cond_4f
    :goto_39
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v4

    const-wide/16 v11, 0x1

    cmp-long v2, v4, v11

    if-nez v2, :cond_53

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v35, v4, 0x4

    and-int/lit8 v36, v2, 0xf

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    if-ne v2, v5, :cond_50

    const/16 v31, 0x1

    goto :goto_3a

    :cond_50
    const/16 v31, 0x0

    :goto_3a
    if-nez v31, :cond_51

    goto :goto_38

    :cond_51
    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v33

    move/from16 v2, v27

    new-array v4, v2, [B

    const/4 v12, 0x0

    invoke-virtual {v3, v12, v2, v4}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    if-nez v33, :cond_52

    invoke-virtual {v3}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v2

    new-array v5, v2, [B

    invoke-virtual {v3, v12, v2, v5}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    move-object/from16 v37, v5

    :goto_3b
    const/4 v5, 0x1

    goto :goto_3c

    :cond_52
    move-object/from16 v37, v6

    goto :goto_3b

    :goto_3c
    iput-boolean v5, v1, Landroidx/media3/extractor/mp4/TrackFragment;->k:Z

    new-instance v30, Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    move-object/from16 v34, v4

    invoke-direct/range {v30 .. v37}, Landroidx/media3/extractor/mp4/TrackEncryptionBox;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v2, v30

    iput-object v2, v1, Landroidx/media3/extractor/mp4/TrackFragment;->m:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    goto :goto_3d

    :cond_53
    const-string v0, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_54
    const-string v0, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v0}, Landroidx/media3/common/ParserException;->c(Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :goto_3d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3e
    if-ge v3, v2, :cond_19

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/container/Mp4Box$LeafBox;

    iget v8, v4, Landroidx/media3/container/Mp4Box;->a:I

    const v11, 0x75756964

    if-ne v8, v11, :cond_56

    iget-object v4, v4, Landroidx/media3/container/Mp4Box$LeafBox;->b:Landroidx/media3/common/util/ParsableByteArray;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    iget-object v11, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i:[B

    const/16 v5, 0x10

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v5, v11}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    sget-object v6, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->P:[B

    invoke-static {v11, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-nez v6, :cond_55

    goto :goto_3f

    :cond_55
    invoke-static {v4, v5, v1}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->i(Landroidx/media3/common/util/ParsableByteArray;ILandroidx/media3/extractor/mp4/TrackFragment;)V

    goto :goto_3f

    :cond_56
    const/16 v5, 0x10

    const/16 v8, 0x8

    const/4 v12, 0x0

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    goto :goto_3e

    :cond_57
    move v13, v1

    move v15, v2

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    move/from16 v50, v8

    const/16 v8, 0x8

    const/16 v9, 0xc

    :goto_40
    const/4 v12, 0x0

    add-int/lit8 v2, v15, 0x1

    move v1, v13

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v8, v50

    goto/16 :goto_e

    :cond_58
    move-object/from16 v24, v5

    const/4 v12, 0x0

    invoke-static/range {v24 .. v24}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->h(Ljava/util/List;)Landroidx/media3/common/DrmInitData;

    move-result-object v1

    if-eqz v1, :cond_5b

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v5, v12

    :goto_41
    if-ge v5, v2, :cond_5b

    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-object v4, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->d:Landroidx/media3/extractor/mp4/TrackSampleTable;

    iget-object v4, v4, Landroidx/media3/extractor/mp4/TrackSampleTable;->a:Landroidx/media3/extractor/mp4/Track;

    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackFragment;->a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

    sget-object v7, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget v6, v6, Landroidx/media3/extractor/mp4/DefaultSampleValues;->a:I

    iget-object v4, v4, Landroidx/media3/extractor/mp4/Track;->l:[Landroidx/media3/extractor/mp4/TrackEncryptionBox;

    if-nez v4, :cond_59

    const/4 v15, 0x0

    goto :goto_42

    :cond_59
    aget-object v15, v4, v6

    :goto_42
    if-eqz v15, :cond_5a

    iget-object v15, v15, Landroidx/media3/extractor/mp4/TrackEncryptionBox;->b:Ljava/lang/String;

    goto :goto_43

    :cond_5a
    const/4 v15, 0x0

    :goto_43
    invoke-virtual {v1, v15}, Landroidx/media3/common/DrmInitData;->a(Ljava/lang/String;)Landroidx/media3/common/DrmInitData;

    move-result-object v4

    iget-object v6, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->j:Landroidx/media3/common/Format;

    invoke-virtual {v6}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v6

    iput-object v4, v6, Landroidx/media3/common/Format$Builder;->r:Landroidx/media3/common/DrmInitData;

    new-instance v4, Landroidx/media3/common/Format;

    invoke-direct {v4, v6}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iget-object v3, v3, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->a:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v3, v4}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    :cond_5b
    iget-wide v1, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:J

    cmp-long v1, v1, v16

    if-eqz v1, :cond_0

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_44
    if-ge v12, v1, :cond_5e

    invoke-virtual {v14, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;

    iget-wide v3, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:J

    iget v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->f:I

    :goto_45
    iget-object v6, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->b:Landroidx/media3/extractor/mp4/TrackFragment;

    iget v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->e:I

    if-ge v5, v7, :cond_5d

    iget-object v7, v6, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    aget-wide v7, v7, v5

    cmp-long v7, v7, v3

    if-gtz v7, :cond_5d

    iget-object v6, v6, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_5c

    iput v5, v2, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->i:I

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    :cond_5d
    add-int/lit8 v12, v12, 0x1

    goto :goto_44

    :cond_5e
    move-wide/from16 v2, v16

    iput-wide v2, v0, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->A:J

    goto/16 :goto_0

    :cond_5f
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/container/Mp4Box$ContainerBox;

    iget-object v1, v1, Landroidx/media3/container/Mp4Box$ContainerBox;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_60
    invoke-virtual {v0}, Landroidx/media3/extractor/mp4/FragmentedMp4Extractor;->g()V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
