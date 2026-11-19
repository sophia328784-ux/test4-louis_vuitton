.class public final synthetic Landroidx/media3/session/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic c:Z

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/a0;->b:Landroidx/media3/session/MediaControllerImplBase;

    iput-boolean p2, p0, Landroidx/media3/session/a0;->c:Z

    iput p3, p0, Landroidx/media3/session/a0;->d:I

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 2

    iget v0, p0, Landroidx/media3/session/a0;->d:I

    iget-object v1, p0, Landroidx/media3/session/a0;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, v1, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget-boolean p0, p0, Landroidx/media3/session/a0;->c:Z

    invoke-interface {p1, v1, p2, p0, v0}, Landroidx/media3/session/IMediaSession;->w2(Landroidx/media3/session/IMediaController;IZI)V

    return-void
.end method
