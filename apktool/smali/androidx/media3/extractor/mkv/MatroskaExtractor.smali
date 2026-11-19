.class public Landroidx/media3/extractor/mkv/MatroskaExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$MatroskaSeekMap;,
        Landroidx/media3/extractor/mkv/MatroskaExtractor$Flags;
    }
.end annotation


# static fields
.field public static final k0:[B

.field public static final l0:[B

.field public static final m0:[B

.field public static final n0:[B

.field public static final o0:Ljava/util/UUID;

.field public static final p0:Ljava/util/Map;


# instance fields
.field public A:I

.field public B:J

.field public final C:Landroid/util/SparseArray;

.field public D:Z

.field public E:J

.field public F:I

.field public G:J

.field public H:J

.field public I:I

.field public J:Z

.field public K:J

.field public L:J

.field public M:J

.field public N:Z

.field public O:I

.field public P:J

.field public Q:J

.field public R:I

.field public S:I

.field public T:[I

.field public U:I

.field public V:I

.field public W:I

.field public X:I

.field public Y:Z

.field public Z:J

.field public final a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

.field public a0:I

.field public final b:Landroidx/media3/extractor/mkv/VarintReader;

.field public b0:I

.field public final c:Landroid/util/SparseArray;

.field public c0:I

.field public final d:Z

.field public d0:Z

.field public final e:Z

.field public e0:Z

.field public final f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

.field public f0:Z

.field public final g:Landroidx/media3/common/util/ParsableByteArray;

.field public g0:I

.field public final h:Landroidx/media3/common/util/ParsableByteArray;

.field public h0:B

.field public final i:Landroidx/media3/common/util/ParsableByteArray;

.field public i0:Z

.field public final j:Landroidx/media3/common/util/ParsableByteArray;

.field public j0:Landroidx/media3/extractor/ExtractorOutput;

.field public final k:Landroidx/media3/common/util/ParsableByteArray;

.field public final l:Landroidx/media3/common/util/ParsableByteArray;

.field public final m:Landroidx/media3/common/util/ParsableByteArray;

.field public final n:Landroidx/media3/common/util/ParsableByteArray;

.field public final o:Landroidx/media3/common/util/ParsableByteArray;

.field public final p:Landroidx/media3/common/util/ParsableByteArray;

.field public q:Ljava/nio/ByteBuffer;

.field public r:J

.field public s:J

.field public t:J

.field public u:J

.field public v:J

.field public w:Z

.field public x:Z

.field public y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k0:[B

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l0:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n0:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o0:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "htc_video_rotA-090"

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const-string v4, "htc_video_rotA-000"

    invoke-static {v3, v0, v4, v2, v1}, Lcj;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "htc_video_rotA-270"

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const-string v4, "htc_video_rotA-180"

    invoke-static {v3, v0, v4, v2, v1}, Lcj;->u(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p0:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, v1, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/DefaultEbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    or-int/lit8 p1, p1, 0x2

    sget-object v1, Landroidx/media3/extractor/text/SubtitleParser$Factory;->a:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/DefaultEbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/mkv/DefaultEbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->s:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->u:J

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->v:J

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    const/4 v4, -0x1

    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    iput v4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->I:I

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:J

    iput-wide v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:J

    iput-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    new-instance v0, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;

    invoke-direct {v0, p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor$InnerEbmlProcessor;-><init>(Landroidx/media3/extractor/mkv/MatroskaExtractor;)V

    iput-object v0, p1, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->d:Landroidx/media3/extractor/mkv/EbmlProcessor;

    iput-object p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:Landroid/util/SparseArray;

    and-int/lit8 p1, p2, 0x1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d:Z

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_1

    move p3, v0

    :cond_1
    iput-boolean p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e:Z

    new-instance p1, Landroidx/media3/extractor/mkv/VarintReader;

    invoke-direct {p1}, Landroidx/media3/extractor/mkv/VarintReader;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p3

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    sget-object p3, Landroidx/media3/container/NalUnitUtil;->a:[B

    invoke-direct {p1, p3}, Landroidx/media3/common/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o:Landroidx/media3/common/util/ParsableByteArray;

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    new-array p1, v0, [I

    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->T:[I

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->x:Z

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;)V
    .locals 2

    .line 180
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/DefaultEbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/text/SubtitleParser$Factory;I)V
    .locals 1

    .line 181
    new-instance v0, Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-direct {v0}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;-><init>()V

    invoke-direct {p0, v0, p2, p1}, Landroidx/media3/extractor/mkv/MatroskaExtractor;-><init>(Landroidx/media3/extractor/mkv/DefaultEbmlReader;ILandroidx/media3/extractor/text/SubtitleParser$Factory;)V

    return-void
.end method

.method public static j(JJLjava/lang/String;)[B
    .locals 7

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->g(Z)V

    const-wide v0, 0xd693a400L

    div-long v2, p0, v0

    long-to-int v2, v2

    int-to-long v3, v2

    mul-long/2addr v3, v0

    sub-long/2addr p0, v3

    const-wide/32 v0, 0x3938700

    div-long v3, p0, v0

    long-to-int v3, v3

    int-to-long v4, v3

    mul-long/2addr v4, v0

    sub-long/2addr p0, v4

    const-wide/32 v0, 0xf4240

    div-long v4, p0, v0

    long-to-int v4, v4

    int-to-long v5, v4

    mul-long/2addr v5, v0

    sub-long/2addr p0, v5

    div-long/2addr p0, p2

    long-to-int p0, p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p2, p3, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p4, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JJ)V
    .locals 1

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->M:J

    const/4 p3, 0x0

    iput p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->O:I

    iget-object p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    iput p3, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->e:I

    iget-object v0, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->b:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p4, p4, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->c:Landroidx/media3/extractor/mkv/VarintReader;

    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->b:I

    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    iget-object p4, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b:Landroidx/media3/extractor/mkv/VarintReader;

    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->b:I

    iput p3, p4, Landroidx/media3/extractor/mkv/VarintReader;->c:I

    invoke-virtual {p0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m()V

    iput-boolean p3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:Z

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->E:J

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->F:I

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->G:J

    iput-wide p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->H:J

    iget-boolean p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->C:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    :cond_0
    move p1, p3

    :goto_0
    iget-object p2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p4

    if-ge p1, p4, :cond_2

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object p2, p2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz p2, :cond_1

    iput-boolean p3, p2, Landroidx/media3/extractor/TrueHdSampleRechunker;->b:Z

    iput p3, p2, Landroidx/media3/extractor/TrueHdSampleRechunker;->c:I

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Landroidx/media3/extractor/ExtractorOutput;)V
    .locals 2

    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;

    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f:Landroidx/media3/extractor/text/SubtitleParser$Factory;

    invoke-direct {v0, p1, v1}, Landroidx/media3/extractor/text/SubtitleTranscodingExtractorOutput;-><init>(Landroidx/media3/extractor/ExtractorOutput;Landroidx/media3/extractor/text/SubtitleParser$Factory;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public final d(Landroidx/media3/extractor/ExtractorInput;)Z
    .locals 14

    new-instance p0, Landroidx/media3/extractor/mkv/Sniffer;

    invoke-direct {p0}, Landroidx/media3/extractor/mkv/Sniffer;-><init>()V

    check-cast p1, Landroidx/media3/extractor/DefaultExtractorInput;

    iget-wide v0, p1, Landroidx/media3/extractor/DefaultExtractorInput;->c:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x400

    if-eqz v2, :cond_1

    cmp-long v5, v0, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v3, v0

    :cond_1
    :goto_0
    long-to-int v3, v3

    iget-object v4, p0, Landroidx/media3/extractor/mkv/Sniffer;->a:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v6, v7, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->C()J

    move-result-wide v8

    iput v7, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    :goto_1
    const-wide/32 v10, 0x1a45dfa3

    cmp-long v5, v8, v10

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    iget v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    add-int/2addr v5, v7

    iput v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    if-ne v5, v3, :cond_2

    goto :goto_3

    :cond_2
    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {p1, v6, v6, v7, v5}, Landroidx/media3/extractor/DefaultExtractorInput;->i(ZII[B)Z

    const/16 v5, 0x8

    shl-long v7, v8, v5

    const-wide/16 v9, -0x100

    and-long/2addr v7, v9

    iget-object v5, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    int-to-long v9, v5

    or-long v8, v7, v9

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v3

    iget v5, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    int-to-long v8, v5

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v5, v3, v10

    if-eqz v5, :cond_8

    if-eqz v2, :cond_4

    add-long v12, v8, v3

    cmp-long v0, v12, v0

    if-ltz v0, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget v0, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    int-to-long v0, v0

    add-long v12, v8, v3

    cmp-long v0, v0, v12

    if-gez v0, :cond_7

    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1}, Landroidx/media3/extractor/mkv/Sniffer;->a(Landroidx/media3/extractor/DefaultExtractorInput;)J

    move-result-wide v0

    const-wide/16 v12, 0x0

    cmp-long v2, v0, v12

    if-ltz v2, :cond_8

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v0, v12

    if-lez v5, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_4

    long-to-int v0, v0

    invoke-virtual {p1, v0, v6}, Landroidx/media3/extractor/DefaultExtractorInput;->n(IZ)Z

    iget v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media3/extractor/mkv/Sniffer;->b:I

    goto :goto_2

    :cond_7
    if-nez v0, :cond_8

    return v7

    :cond_8
    :goto_3
    return v6
.end method

.method public final f(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/PositionHolder;)I
    .locals 8

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:Z

    const/4 v1, 0x1

    move v2, v1

    :cond_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:Z

    if-nez v3, :cond_2

    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a:Landroidx/media3/extractor/mkv/DefaultEbmlReader;

    invoke-virtual {v2, p1}, Landroidx/media3/extractor/mkv/DefaultEbmlReader;->a(Landroidx/media3/extractor/ExtractorInput;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->getPosition()J

    move-result-wide v3

    iget-boolean v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:Z

    if-eqz v5, :cond_1

    iput-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:J

    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->K:J

    iput-wide v2, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->J:Z

    return v1

    :cond_1
    iget-boolean v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->z:Z

    if-eqz v3, :cond_0

    iget-wide v3, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_0

    iput-wide v3, p2, Landroidx/media3/extractor/PositionHolder;->a:J

    iput-wide v5, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->L:J

    return v1

    :cond_2
    if-nez v2, :cond_5

    :goto_0
    iget-object p1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v0, p2, :cond_4

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz p2, :cond_3

    iget-object v1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object p1, p1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-virtual {p2, v1, p1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->a(Landroidx/media3/extractor/TrackOutput;Landroidx/media3/extractor/TrackOutput$CryptoData;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, -0x1

    return p0

    :cond_5
    return v0
.end method

.method public final g(I)V
    .locals 1

    iget-boolean p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->D:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final h(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->y:Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Element "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final i(Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object v8, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Landroidx/media3/extractor/TrueHdSampleRechunker;->b(Landroidx/media3/extractor/TrackOutput;JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    goto/16 :goto_7

    :cond_0
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x2

    const-string v5, "S_TEXT/WEBVTT"

    const-string v6, "S_TEXT/SSA"

    const-string v7, "S_TEXT/ASS"

    const/4 v8, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v10, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->Q:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v2}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_5

    :cond_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v13, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, -0x1

    sparse-switch v14, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v15, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v15, v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v15, v9

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v15, v8

    :goto_1
    const-wide/16 v2, 0x3e8

    packed-switch v15, :pswitch_data_0

    invoke-static {}, Lct0;->c()V

    return-void

    :pswitch_0
    const-string v5, "%02d:%02d:%02d,%03d"

    invoke-static {v10, v11, v2, v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x13

    goto :goto_2

    :pswitch_1
    const-string v5, "%02d:%02d:%02d.%03d"

    invoke-static {v10, v11, v2, v3, v5}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_2

    :pswitch_2
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v5, 0x2710

    invoke-static {v10, v11, v5, v6, v2}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x15

    :goto_2
    array-length v5, v2

    invoke-static {v2, v8, v13, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, v12, Landroidx/media3/common/util/ParsableByteArray;->b:I

    :goto_3
    iget v3, v12, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-ge v2, v3, :cond_a

    iget-object v3, v12, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v3, v3, v2

    if-nez v3, :cond_9

    invoke-virtual {v12, v2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iget-object v2, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget v3, v12, Landroidx/media3/common/util/ParsableByteArray;->c:I

    invoke-interface {v2, v3, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v2, v12, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int v2, p5, v2

    :goto_5
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_c

    iget v3, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->S:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    if-le v3, v9, :cond_b

    invoke-virtual {v5, v8}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    goto :goto_6

    :cond_b
    iget v3, v5, Landroidx/media3/common/util/ParsableByteArray;->c:I

    iget-object v6, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    invoke-interface {v6, v5, v3, v4}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    add-int/2addr v2, v3

    :cond_c
    :goto_6
    move v14, v2

    iget-object v10, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object v1, v1, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->k:Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Landroidx/media3/extractor/TrackOutput;->g(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    :goto_7
    iput-boolean v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->N:Z

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c0618eb -> :sswitch_3
        0x2c065c6b -> :sswitch_2
        0x3e4ca2d8 -> :sswitch_1
        0x54c61e47 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 4

    iget-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->x:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;

    iget-boolean v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    if-eqz v2, :cond_1

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j0:Landroidx/media3/extractor/ExtractorOutput;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorOutput;->n()V

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->x:Z

    return-void
.end method

.method public final l(Landroidx/media3/extractor/ExtractorInput;I)V
    .locals 3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    iget v0, p0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-lt v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v1, v0

    if-ge v1, p2, :cond_1

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->c(I)V

    :cond_1
    iget-object v0, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    iget v1, p0, Landroidx/media3/common/util/ParsableByteArray;->c:I

    sub-int v2, p2, v1

    invoke-interface {p1, v0, v1, v2}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, p2}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d0:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:Z

    iput v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    iput-byte v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:B

    iput-boolean v0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:Z

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    return-void
.end method

.method public final n(J)J
    .locals 7

    iget-wide v2, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->t:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    sget-object p0, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    sget-object v6, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroidx/media3/common/util/Util;->Z(JJJLjava/math/RoundingMode;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-string p0, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p1, 0x0

    invoke-static {p1, p0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object p0

    throw p0
.end method

.method public final o(Landroidx/media3/extractor/ExtractorInput;Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;IZ)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k0:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m()V

    return v1

    :cond_0
    const-string v4, "S_TEXT/ASS"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_24

    const-string v4, "S_TEXT/SSA"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_f

    :cond_1
    const-string v4, "S_TEXT/WEBVTT"

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n0:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m()V

    return v1

    :cond_2
    iget-boolean v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_7

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v4, v3}, Landroidx/media3/common/util/ParsableByteArray;-><init>(I)V

    iget-object v8, v4, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v6, v7, v3, v8}, Landroidx/media3/extractor/ExtractorInput;->i(ZII[B)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->i()I

    move-result v8

    invoke-static {v8}, Landroidx/media3/extractor/DtsUtil;->b(I)I

    move-result v8

    if-ne v8, v6, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v8

    const/16 v9, 0xa

    if-ge v8, v9, :cond_4

    goto :goto_0

    :cond_4
    new-array v8, v9, [B

    invoke-virtual {v4, v7, v9, v8}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    invoke-virtual {v4, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-static {v8}, Landroidx/media3/extractor/DtsUtil;->a([B)I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v9

    add-int/lit8 v10, v8, 0x4

    if-ge v9, v10, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4, v8}, Landroidx/media3/common/util/ParsableByteArray;->O(I)V

    invoke-virtual {v4}, Landroidx/media3/common/util/ParsableByteArray;->m()I

    move-result v4

    invoke-static {v4}, Landroidx/media3/extractor/DtsUtil;->b(I)I

    move-result v4

    if-ne v4, v5, :cond_6

    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-virtual {v4}, Landroidx/media3/common/Format;->a()Landroidx/media3/common/Format$Builder;

    move-result-object v4

    const-string v8, "audio/vnd.dts.hd"

    invoke-static {v8}, Landroidx/media3/common/MimeTypes;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Landroidx/media3/common/Format$Builder;->n:Ljava/lang/String;

    new-instance v8, Landroidx/media3/common/Format;

    invoke-direct {v8, v4}, Landroidx/media3/common/Format;-><init>(Landroidx/media3/common/Format$Builder;)V

    iput-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    :cond_6
    :goto_0
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->b0:Landroidx/media3/common/Format;

    invoke-interface {v4, v8}, Landroidx/media3/extractor/TrackOutput;->b(Landroidx/media3/common/Format;)V

    iput-boolean v7, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->W:Z

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->k()V

    :cond_7
    iget-object v4, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->a0:Landroidx/media3/extractor/TrackOutput;

    iget-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d0:Z

    iget-object v9, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->l:Landroidx/media3/common/util/ParsableByteArray;

    const/4 v10, 0x4

    if-nez v8, :cond_19

    iget-boolean v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->i:Z

    iget-object v11, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i:Landroidx/media3/common/util/ParsableByteArray;

    if-eqz v8, :cond_14

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v8, v12

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    iget-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    const/16 v12, 0x80

    if-nez v8, :cond_9

    iget-object v8, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v8, v7, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v8, v6

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iget-object v8, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aget-byte v8, v8, v7

    and-int/lit16 v13, v8, 0x80

    if-eq v13, v12, :cond_8

    iput-byte v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:B

    iput-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->e0:Z

    goto :goto_1

    :cond_8
    const-string v0, "Extension bit is set in signal byte"

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroidx/media3/common/ParserException;->a(Ljava/lang/RuntimeException;Ljava/lang/String;)Landroidx/media3/common/ParserException;

    move-result-object v0

    throw v0

    :cond_9
    :goto_1
    iget-byte v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h0:B

    and-int/lit8 v13, v8, 0x1

    if-ne v13, v6, :cond_13

    and-int/2addr v8, v5

    if-ne v8, v5, :cond_a

    move v8, v6

    goto :goto_2

    :cond_a
    move v8, v7

    :goto_2
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v13, v14

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    iget-boolean v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:Z

    if-nez v13, :cond_c

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->n:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v14, v13, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    const/16 v15, 0x8

    invoke-interface {v1, v14, v7, v15}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v14, v15

    iput v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iput-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->i0:Z

    iget-object v14, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    if-eqz v8, :cond_b

    goto :goto_3

    :cond_b
    move v12, v7

    :goto_3
    or-int/2addr v12, v15

    int-to-byte v12, v12

    aput-byte v12, v14, v7

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-interface {v4, v11, v6, v6}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    invoke-virtual {v13, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-interface {v4, v13, v15, v6}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v12, v15

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    :cond_c
    if-eqz v8, :cond_13

    iget-boolean v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:Z

    if-nez v8, :cond_d

    iget-object v8, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v8, v7, v6}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v8, v6

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    invoke-virtual {v11, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->A()I

    move-result v8

    iput v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    iput-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->f0:Z

    :cond_d
    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    mul-int/2addr v8, v10

    invoke-virtual {v11, v8}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v12, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    invoke-interface {v1, v12, v7, v8}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v12, v8

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    div-int/2addr v8, v5

    add-int/2addr v8, v6

    int-to-short v8, v8

    mul-int/lit8 v12, v8, 0x6

    add-int/2addr v12, v5

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    if-ge v13, v12, :cond_f

    :cond_e
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iput-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    :cond_f
    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v8, v7

    move v13, v8

    :goto_4
    iget v14, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g0:I

    if-ge v8, v14, :cond_11

    invoke-virtual {v11}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v14

    rem-int/lit8 v15, v8, 0x2

    move/from16 v16, v5

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    if-nez v15, :cond_10

    sub-int v13, v14, v13

    int-to-short v13, v13

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_10
    sub-int v13, v14, v13

    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v8, v8, 0x1

    move v13, v14

    move/from16 v5, v16

    goto :goto_4

    :cond_11
    move/from16 v16, v5

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    sub-int v5, v3, v5

    sub-int/2addr v5, v13

    rem-int/lit8 v14, v14, 0x2

    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    if-ne v14, v6, :cond_12

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    :cond_12
    int-to-short v5, v5

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_6
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->q:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->o:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v8, v12, v5}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    invoke-interface {v4, v8, v12, v6}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v5, v12

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    goto :goto_7

    :cond_13
    move/from16 v16, v5

    goto :goto_7

    :cond_14
    move/from16 v16, v5

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->j:[B

    if-eqz v5, :cond_15

    array-length v8, v5

    invoke-virtual {v9, v8, v5}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    :cond_15
    :goto_7
    const-string v5, "A_OPUS"

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    move/from16 v5, p4

    goto :goto_8

    :cond_16
    iget v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->g:I

    if-lez v5, :cond_17

    move v5, v6

    goto :goto_8

    :cond_17
    move v5, v7

    :goto_8
    if-eqz v5, :cond_18

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    const/high16 v8, 0x10000000

    or-int/2addr v5, v8

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->W:I

    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget v5, v9, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/2addr v5, v3

    iget v8, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    sub-int/2addr v5, v8

    invoke-virtual {v11, v10}, Landroidx/media3/common/util/ParsableByteArray;->K(I)V

    iget-object v8, v11, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    shr-int/lit8 v12, v5, 0x18

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v7

    shr-int/lit8 v12, v5, 0x10

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v6

    shr-int/lit8 v12, v5, 0x8

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v8, v16

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v12, 0x3

    aput-byte v5, v8, v12

    move/from16 v5, v16

    invoke-interface {v4, v11, v10, v5}, Landroidx/media3/extractor/TrackOutput;->a(Landroidx/media3/common/util/ParsableByteArray;II)V

    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v5, v10

    iput v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    :cond_18
    iput-boolean v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->d0:Z

    :cond_19
    iget v5, v9, Landroidx/media3/common/util/ParsableByteArray;->c:I

    add-int/2addr v3, v5

    const-string v5, "V_MPEG4/ISO/AVC"

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1e

    const-string v5, "V_MPEGH/ISO/HEVC"

    iget-object v8, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    if-eqz v5, :cond_1c

    iget v5, v9, Landroidx/media3/common/util/ParsableByteArray;->c:I

    if-nez v5, :cond_1b

    goto :goto_9

    :cond_1b
    move v6, v7

    :goto_9
    invoke-static {v6}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget-object v5, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->V:Landroidx/media3/extractor/TrueHdSampleRechunker;

    invoke-virtual {v5, v1}, Landroidx/media3/extractor/TrueHdSampleRechunker;->c(Landroidx/media3/extractor/ExtractorInput;)V

    :cond_1c
    :goto_a
    iget v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    if-ge v5, v3, :cond_22

    sub-int v5, v3, v5

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v6

    if-lez v6, :cond_1d

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {v4, v5, v9}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_b

    :cond_1d
    invoke-interface {v4, v1, v5, v7}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v5

    :goto_b
    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iget v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v6, v5

    iput v6, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    goto :goto_a

    :cond_1e
    :goto_c
    iget-object v5, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->h:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v8, v5, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    aput-byte v7, v8, v7

    aput-byte v7, v8, v6

    const/16 v16, 0x2

    aput-byte v7, v8, v16

    iget v6, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c0:I

    rsub-int/lit8 v11, v6, 0x4

    :goto_d
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    if-ge v12, v3, :cond_22

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    if-nez v12, :cond_20

    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v11, v12

    sub-int v14, v6, v12

    invoke-interface {v1, v8, v13, v14}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    if-lez v12, :cond_1f

    invoke-virtual {v9, v11, v12, v8}, Landroidx/media3/common/util/ParsableByteArray;->k(II[B)V

    :cond_1f
    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v12, v6

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    invoke-virtual {v5, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {v5}, Landroidx/media3/common/util/ParsableByteArray;->E()I

    move-result v12

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    iget-object v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->g:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v12, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-interface {v4, v10, v12}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v12, v10

    iput v12, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    goto :goto_d

    :cond_20
    invoke-virtual {v9}, Landroidx/media3/common/util/ParsableByteArray;->a()I

    move-result v13

    if-lez v13, :cond_21

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v4, v12, v9}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    goto :goto_e

    :cond_21
    invoke-interface {v4, v1, v12, v7}, Landroidx/media3/extractor/TrackOutput;->c(Landroidx/media3/common/DataReader;IZ)I

    move-result v12

    :goto_e
    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->a0:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    iget v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    sub-int/2addr v13, v12

    iput v13, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->c0:I

    goto :goto_d

    :cond_22
    const-string v1, "A_VORBIS"

    iget-object v2, v2, Landroidx/media3/extractor/mkv/MatroskaExtractor$Track;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->j:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1, v7}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-interface {v4, v10, v1}, Landroidx/media3/extractor/TrackOutput;->f(ILandroidx/media3/common/util/ParsableByteArray;)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    add-int/2addr v1, v10

    iput v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    :cond_23
    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m()V

    return v1

    :cond_24
    :goto_f
    sget-object v2, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m0:[B

    invoke-virtual {v0, v1, v2, v3}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->p(Landroidx/media3/extractor/ExtractorInput;[BI)V

    iget v1, v0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->b0:I

    invoke-virtual {v0}, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m()V

    return v1
.end method

.method public final p(Landroidx/media3/extractor/ExtractorInput;[BI)V
    .locals 4

    array-length v0, p2

    add-int/2addr v0, p3

    iget-object p0, p0, Landroidx/media3/extractor/mkv/MatroskaExtractor;->m:Landroidx/media3/common/util/ParsableByteArray;

    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ge v2, v0, :cond_0

    add-int v1, v0, p3

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v1

    invoke-virtual {p0, v2, v1}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    goto :goto_0

    :cond_0
    array-length v2, p2

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v1, p0, Landroidx/media3/common/util/ParsableByteArray;->a:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroidx/media3/extractor/ExtractorInput;->readFully([BII)V

    invoke-virtual {p0, v3}, Landroidx/media3/common/util/ParsableByteArray;->N(I)V

    invoke-virtual {p0, v0}, Landroidx/media3/common/util/ParsableByteArray;->M(I)V

    return-void
.end method

.method public final release()V
    .locals 0

    return-void
.end method
