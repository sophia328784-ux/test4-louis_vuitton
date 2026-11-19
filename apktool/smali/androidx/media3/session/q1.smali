.class public final synthetic Landroidx/media3/session/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$ControllerPlayerTask;
.implements Landroidx/media3/session/MediaSessionStub$MediaItemPlayerTask;
.implements Landroidx/media3/common/util/Consumer;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaSessionStub;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub;II)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/q1;->b:Landroidx/media3/session/MediaSessionStub;

    iput p2, p0, Landroidx/media3/session/q1;->c:I

    iput p3, p0, Landroidx/media3/session/q1;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroidx/media3/session/PlayerWrapper;

    iget-object p1, p0, Landroidx/media3/session/q1;->b:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, p1, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, v0, Landroidx/media3/session/MediaSessionImpl;->r:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Landroidx/media3/session/MediaSessionStub;->o:Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;

    if-eqz p1, :cond_0

    iget v0, p0, Landroidx/media3/session/q1;->c:I

    iget p0, p0, Landroidx/media3/session/q1;->d:I

    invoke-virtual {p1, v0, p0}, Landroidx/media3/session/MediaSessionStub$SurfaceHolderWithSize;->setFixedSize(II)V

    :cond_0
    return-void
.end method

.method public b(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 2

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v0, p0, Landroidx/media3/session/q1;->b:Landroidx/media3/session/MediaSessionStub;

    iget v1, p0, Landroidx/media3/session/q1;->c:I

    invoke-virtual {v0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    iget p0, p0, Landroidx/media3/session/q1;->d:I

    invoke-virtual {v0, p2, p1, p0}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Landroidx/media3/session/PlayerWrapper;->N(II)V

    return-void
.end method

.method public e(Landroidx/media3/session/PlayerWrapper;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)V
    .locals 2

    sget v0, Landroidx/media3/session/MediaSessionStub;->p:I

    iget-object v0, p0, Landroidx/media3/session/q1;->b:Landroidx/media3/session/MediaSessionStub;

    iget v1, p0, Landroidx/media3/session/q1;->c:I

    invoke-virtual {v0, p2, p1, v1}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result v1

    iget p0, p0, Landroidx/media3/session/q1;->d:I

    invoke-virtual {v0, p2, p1, p0}, Landroidx/media3/session/MediaSessionStub;->H2(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/PlayerWrapper;I)I

    move-result p0

    invoke-virtual {p1, v1, p0, p3}, Landroidx/media3/session/PlayerWrapper;->K(IILjava/util/List;)V

    return-void
.end method
