.class final Landroidx/media3/extractor/mp4/TrackFragment;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/media3/extractor/mp4/DefaultSampleValues;

.field public b:J

.field public c:J

.field public d:I

.field public e:I

.field public f:[J

.field public g:[I

.field public h:[I

.field public i:[J

.field public j:[Z

.field public k:Z

.field public l:[Z

.field public m:Landroidx/media3/extractor/mp4/TrackEncryptionBox;

.field public final n:Landroidx/media3/common/util/ParsableByteArray;

.field public o:Z

.field public p:J

.field public q:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->f:[J

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->g:[I

    new-array v1, v0, [I

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->h:[I

    new-array v1, v0, [J

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->i:[J

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/media3/extractor/mp4/TrackFragment;->j:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Landroidx/media3/extractor/mp4/TrackFragment;->l:[Z

    new-instance v0, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {v0}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/extractor/mp4/TrackFragment;->n:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method
