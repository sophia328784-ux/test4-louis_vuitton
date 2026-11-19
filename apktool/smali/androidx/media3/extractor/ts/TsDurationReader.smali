.class final Landroidx/media3/extractor/ts/TsDurationReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Landroidx/media3/common/util/TimestampAdjuster;

.field public final c:Landroidx/media3/common/util/ParsableByteArray;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J

.field public h:J

.field public i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->a:I

    new-instance p1, Landroidx/media3/common/util/TimestampAdjuster;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Landroidx/media3/common/util/TimestampAdjuster;-><init>(J)V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->b:Landroidx/media3/common/util/TimestampAdjuster;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->g:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->h:J

    iput-wide v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->i:J

    new-instance p1, Landroidx/media3/common/util/ParsableByteArray;

    invoke-direct {p1}, Landroidx/media3/common/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/extractor/ExtractorInput;)V
    .locals 3

    sget-object v0, Landroidx/media3/common/util/Util;->b:[B

    iget-object v1, p0, Landroidx/media3/extractor/ts/TsDurationReader;->c:Landroidx/media3/common/util/ParsableByteArray;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v2, v0

    invoke-virtual {v1, v2, v0}, Landroidx/media3/common/util/ParsableByteArray;->L(I[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/extractor/ts/TsDurationReader;->d:Z

    invoke-interface {p1}, Landroidx/media3/extractor/ExtractorInput;->g()V

    return-void
.end method
