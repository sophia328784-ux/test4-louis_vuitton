.class final Landroidx/media3/exoplayer/source/SpannedData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field public final b:Landroid/util/SparseArray;

.field public final c:Landroidx/media3/common/util/Consumer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    new-instance v0, Lzy0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lzy0;-><init>(I)V

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/SpannedData;-><init>(Landroidx/media3/common/util/Consumer;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/util/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/util/Consumer<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    iput-object p1, p0, Landroidx/media3/exoplayer/source/SpannedData;->c:Landroidx/media3/common/util/Consumer;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    :cond_0
    :goto_0
    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    iget-object v1, p0, Landroidx/media3/exoplayer/source/SpannedData;->b:Landroid/util/SparseArray;

    if-lez v0, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-lt p1, v0, :cond_2

    iget v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    goto :goto_1

    :cond_2
    iget p0, p0, Landroidx/media3/exoplayer/source/SpannedData;->a:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
