.class public final synthetic Landroidx/media3/exoplayer/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/common/util/ListenerSet$Event;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroidx/media3/exoplayer/j;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/media3/common/Player$Listener;

    sget v0, Landroidx/media3/exoplayer/ExoPlayerImpl;->t0:I

    iget-boolean p0, p0, Landroidx/media3/exoplayer/j;->b:Z

    invoke-interface {p1, p0}, Landroidx/media3/common/Player$Listener;->N(Z)V

    return-void
.end method
