.class final Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/text/vobsub/VobsubParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CueBuilder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;
    }
.end annotation


# instance fields
.field public final a:[I

.field public b:J

.field public c:J

.field public d:Z

.field public e:Z

.field public f:[I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/Rect;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->b:J

    iput-wide v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->c:J

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->j:I

    iput v0, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->k:I

    return-void
.end method

.method public static a(I[I)I
    .locals 1

    if-ltz p0, :cond_0

    array-length v0, p1

    if-ge p0, v0, :cond_0

    aget p0, p1, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    aget p0, p1, p0

    return p0
.end method

.method public static c(II)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    mul-int/lit8 p1, p1, 0x11

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final b(Landroidx/media3/common/util/ParsableBitArray;ZLandroid/graphics/Rect;[I)V
    .locals 10

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    mul-int v2, p2, v0

    new-instance v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x0

    :goto_0
    move v5, v4

    :cond_0
    move v7, v1

    move v6, v4

    :goto_1
    const/4 v8, 0x4

    if-ge v6, v7, :cond_2

    const/16 v9, 0x40

    if-gt v7, v9, :cond_2

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->b()I

    move-result v9

    if-ge v9, v8, :cond_1

    const/4 v6, -0x1

    iput v6, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->a:I

    iput v4, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->b:I

    goto :goto_3

    :cond_1
    shl-int/lit8 v6, v6, 0x4

    invoke-virtual {p1, v8}, Landroidx/media3/common/util/ParsableBitArray;->g(I)I

    move-result v8

    or-int/2addr v6, v8

    shl-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_2
    and-int/lit8 v7, v6, 0x3

    iput v7, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->a:I

    if-ge v6, v8, :cond_3

    move v6, v0

    goto :goto_2

    :cond_3
    shr-int/lit8 v6, v6, 0x2

    :goto_2
    iput v6, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->b:I

    :goto_3
    iget v6, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->b:I

    sub-int v7, v0, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-lez v6, :cond_4

    add-int v7, v2, v6

    iget-object v8, p0, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder;->a:[I

    iget v9, v3, Landroidx/media3/extractor/text/vobsub/VobsubParser$CueBuilder$Run;->a:I

    aget v8, v8, v9

    invoke-static {p4, v2, v7, v8}, Ljava/util/Arrays;->fill([IIII)V

    add-int/2addr v5, v6

    move v2, v7

    :cond_4
    if-lt v5, v0, :cond_0

    add-int/lit8 p2, p2, 0x2

    if-lt p2, p3, :cond_5

    return-void

    :cond_5
    mul-int v2, p2, v0

    invoke-virtual {p1}, Landroidx/media3/common/util/ParsableBitArray;->c()V

    goto :goto_0
.end method
