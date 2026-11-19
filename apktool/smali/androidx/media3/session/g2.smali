.class public final synthetic Landroidx/media3/session/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/session/CommandButton;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/CommandButton;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/g2;->b:Landroidx/media3/session/CommandButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p0, Landroidx/media3/session/g2;->b:Landroidx/media3/session/CommandButton;

    invoke-virtual {p0, p1}, Landroidx/media3/session/CommandButton;->h(Landroidx/media3/common/Player;)V

    return-void
.end method

.method public c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 0

    sget p3, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object p0, p0, Landroidx/media3/session/g2;->b:Landroidx/media3/session/CommandButton;

    iget-object p0, p0, Landroidx/media3/session/CommandButton;->j:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Landroidx/media3/common/Rating;

    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p1, p2}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
