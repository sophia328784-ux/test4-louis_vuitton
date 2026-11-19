.class final Landroidx/media3/extractor/ts/H264Reader$SampleReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/ts/H264Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SampleReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;
    }
.end annotation


# instance fields
.field public final a:Landroidx/media3/extractor/TrackOutput;

.field public final b:Z

.field public final c:Z

.field public final d:Landroid/util/SparseArray;

.field public final e:Landroid/util/SparseArray;

.field public final f:Landroidx/media3/container/ParsableNalUnitBitArray;

.field public g:[B

.field public h:I

.field public i:I

.field public j:J

.field public k:Z

.field public l:J

.field public m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

.field public o:Z

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z


# direct methods
.method public constructor <init>(Landroidx/media3/extractor/TrackOutput;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->a:Landroidx/media3/extractor/TrackOutput;

    iput-boolean p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->b:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->c:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->d:Landroid/util/SparseArray;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->e:Landroid/util/SparseArray;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->m:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    new-instance p1, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    const/16 p1, 0x80

    new-array p1, p1, [B

    iput-object p1, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->g:[B

    new-instance p2, Landroidx/media3/container/ParsableNalUnitBitArray;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Landroidx/media3/container/ParsableNalUnitBitArray;-><init>([BII)V

    iput-object p2, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->f:Landroidx/media3/container/ParsableNalUnitBitArray;

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->k:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->o:Z

    iget-object p0, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader;->n:Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->b:Z

    iput-boolean p3, p0, Landroidx/media3/extractor/ts/H264Reader$SampleReader$SliceHeaderData;->a:Z

    return-void
.end method
