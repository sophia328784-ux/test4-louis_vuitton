.class public final synthetic Landroidx/media3/exoplayer/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/common/Player$PositionInfo;

.field public final synthetic d:Landroidx/media3/common/Player$PositionInfo;


# direct methods
.method public synthetic constructor <init>(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/k;->b:I

    iput-object p2, p0, Landroidx/media3/exoplayer/k;->c:Landroidx/media3/common/Player$PositionInfo;

    iput-object p3, p0, Landroidx/media3/exoplayer/k;->d:Landroidx/media3/common/Player$PositionInfo;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget v0, p0, Landroidx/media3/exoplayer/k;->b:I

    invoke-interface {p1, v0}, Landroidx/media3/common/Player$Listener;->v(I)V

    iget-object v1, p0, Landroidx/media3/exoplayer/k;->c:Landroidx/media3/common/Player$PositionInfo;

    iget-object p0, p0, Landroidx/media3/exoplayer/k;->d:Landroidx/media3/common/Player$PositionInfo;

    invoke-interface {p1, v0, v1, p0}, Landroidx/media3/common/Player$Listener;->d0(ILandroidx/media3/common/Player$PositionInfo;Landroidx/media3/common/Player$PositionInfo;)V

    return-void
.end method
