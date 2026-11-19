.class public final synthetic Landroidx/media3/exoplayer/hls/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/exoplayer/hls/b;->b:I

    iput-object p1, p0, Landroidx/media3/exoplayer/hls/b;->c:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Landroidx/media3/exoplayer/hls/b;->b:I

    iget-object p0, p0, Landroidx/media3/exoplayer/hls/b;->c:Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->w:[Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper$HlsSampleQueue;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-wide v4, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->W:J

    invoke-virtual {v3, v4, v5}, Landroidx/media3/exoplayer/source/SampleQueue;->C(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->D:Z

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->G()V

    return-void

    :pswitch_0
    sget-object v0, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->t0:Ljava/util/Set;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/hls/HlsSampleStreamWrapper;->G()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
