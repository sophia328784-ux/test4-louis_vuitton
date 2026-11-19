.class public final synthetic Landroidx/media3/exoplayer/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/media3/exoplayer/g;->b:I

    iput p2, p0, Landroidx/media3/exoplayer/g;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget v0, p0, Landroidx/media3/exoplayer/g;->b:I

    iget p0, p0, Landroidx/media3/exoplayer/g;->c:I

    invoke-interface {p1, v0, p0}, Landroidx/media3/common/Player$Listener;->X(II)V

    return-void
.end method
