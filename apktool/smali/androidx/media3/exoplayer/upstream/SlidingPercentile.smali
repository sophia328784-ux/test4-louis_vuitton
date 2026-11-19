.class public Landroidx/media3/exoplayer/upstream/SlidingPercentile;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;
    }
.end annotation


# static fields
.field public static final h:Landroidx/media3/exoplayer/upstream/b;

.field public static final i:Landroidx/media3/exoplayer/upstream/b;


# instance fields
.field public final a:I

.field public final b:Ljava/util/ArrayList;

.field public final c:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/exoplayer/upstream/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/b;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->h:Landroidx/media3/exoplayer/upstream/b;

    new-instance v0, Landroidx/media3/exoplayer/upstream/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/exoplayer/upstream/b;-><init>(I)V

    sput-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->i:Landroidx/media3/exoplayer/upstream/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->a:I

    const/4 p1, 0x5

    new-array p1, p1, [Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->c:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    return-void
.end method


# virtual methods
.method public final a(FI)V
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->h:Landroidx/media3/exoplayer/upstream/b;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    :cond_0
    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->g:I

    iget-object v3, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->c:[Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    if-lez v0, :cond_1

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->g:I

    aget-object v0, v3, v0

    goto :goto_0

    :cond_1
    new-instance v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    iget v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->e:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->e:I

    iput v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->a:I

    iput p2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->b:I

    iput p1, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->c:F

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    :cond_2
    :goto_1
    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->a:I

    if-le p1, p2, :cond_4

    sub-int/2addr p1, p2

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->b:I

    if-gt v2, p1, :cond_3

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    sub-int/2addr p1, v2

    iput p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget p1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->g:I

    const/4 p2, 0x5

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p1, 0x1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->g:I

    aput-object v0, v3, p1

    goto :goto_1

    :cond_3
    sub-int/2addr v2, p1

    iput v2, v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->b:I

    iget p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    sub-int/2addr p2, p1

    iput p2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final b()F
    .locals 5

    iget v0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    const/4 v1, 0x0

    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->i:Landroidx/media3/exoplayer/upstream/b;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput v1, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->d:I

    :cond_0
    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile;->f:I

    int-to-float p0, p0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v0, p0

    move p0, v1

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget v4, v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->b:I

    add-int/2addr p0, v4

    int-to-float v4, p0

    cmpl-float v4, v4, v0

    if-ltz v4, :cond_1

    iget p0, v3, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->c:F

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    :cond_3
    const/4 p0, 0x1

    invoke-static {p0, v2}, Lcj;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;

    iget p0, p0, Landroidx/media3/exoplayer/upstream/SlidingPercentile$Sample;->c:F

    return p0
.end method
