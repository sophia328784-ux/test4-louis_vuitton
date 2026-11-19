.class Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;
.super Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackStub"
.end annotation


# instance fields
.field public final b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V
    .locals 1

    invoke-direct {p0}, Landroidx/media3/session/legacy/IMediaControllerCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final A(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/16 v0, 0x9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->m(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final l0(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->m(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final m0(I)V
    .locals 1

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;

    if-eqz p0, :cond_0

    const/16 v0, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->m(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
