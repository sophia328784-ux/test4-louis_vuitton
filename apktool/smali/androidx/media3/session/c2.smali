.class public final synthetic Landroidx/media3/session/c2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaSessionStub$SessionTask;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroidx/media3/session/MediaSessionStub$SessionTask;


# direct methods
.method public synthetic constructor <init>(Landroidx/media3/session/MediaSessionStub$SessionTask;I)V
    .locals 0

    iput p2, p0, Landroidx/media3/session/c2;->b:I

    iput-object p1, p0, Landroidx/media3/session/c2;->c:Landroidx/media3/session/MediaSessionStub$SessionTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/media3/session/c2;->b:I

    iget-object p0, p0, Landroidx/media3/session/c2;->c:Landroidx/media3/session/MediaSessionStub$SessionTask;

    packed-switch v0, :pswitch_data_0

    new-instance v0, Landroidx/media3/session/n;

    const/4 v1, 0x5

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->G2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/media3/session/MediaLibrarySessionImpl;

    new-instance v0, Landroidx/media3/session/m0;

    invoke-direct {v0, p2, p3}, Landroidx/media3/session/m0;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    invoke-static {p1, p2, p3, p0, v0}, Landroidx/media3/session/MediaSessionStub;->G2(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ILandroidx/media3/session/MediaSessionStub$SessionTask;Landroidx/media3/common/util/Consumer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
