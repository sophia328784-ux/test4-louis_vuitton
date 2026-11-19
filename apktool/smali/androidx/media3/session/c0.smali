.class public final synthetic Landroidx/media3/session/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaControllerImplBase$RemoteSessionTask;


# instance fields
.field public final synthetic b:Landroidx/media3/session/MediaControllerImplBase;

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaControllerImplBase;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/c0;->b:Landroidx/media3/session/MediaControllerImplBase;

    iput p2, p0, Landroidx/media3/session/c0;->c:I

    iput p3, p0, Landroidx/media3/session/c0;->d:I

    iput p4, p0, Landroidx/media3/session/c0;->e:I

    return-void
.end method


# virtual methods
.method public final d(Landroidx/media3/session/IMediaSession;I)V
    .locals 6

    iget v5, p0, Landroidx/media3/session/c0;->e:I

    iget-object v0, p0, Landroidx/media3/session/c0;->b:Landroidx/media3/session/MediaControllerImplBase;

    iget-object v1, v0, Landroidx/media3/session/MediaControllerImplBase;->c:Landroidx/media3/session/MediaControllerStub;

    iget v3, p0, Landroidx/media3/session/c0;->c:I

    iget v4, p0, Landroidx/media3/session/c0;->d:I

    move-object v0, p1

    move v2, p2

    invoke-interface/range {v0 .. v5}, Landroidx/media3/session/IMediaSession;->l1(Landroidx/media3/session/IMediaController;IIII)V

    return-void
.end method
