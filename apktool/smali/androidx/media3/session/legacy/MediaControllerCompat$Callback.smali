.class public abstract Landroidx/media3/session/legacy/MediaControllerCompat$Callback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;,
        Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MediaControllerCallback;,
        Landroidx/media3/session/legacy/MediaControllerCompat$Callback$CallbackStub;
    }
.end annotation


# instance fields
.field public final a:Landroid/media/session/MediaController$Callback;

.field public b:Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

.field public c:Landroidx/media3/session/legacy/IMediaControllerCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MediaControllerCallback;

    invoke-direct {v0, p0}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MediaControllerCallback;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->a:Landroid/media/session/MediaController$Callback;

    return-void
.end method


# virtual methods
.method public a(Landroidx/media3/session/legacy/MediaControllerCompat$PlaybackInfo;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public final binderDied()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->m(ILjava/lang/Object;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public d(Landroidx/media3/session/legacy/MediaMetadataCompat;)V
    .locals 0

    return-void
.end method

.method public e(Landroidx/media3/session/legacy/PlaybackStateCompat;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(I)V
    .locals 0

    return-void
.end method

.method public final m(ILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->b:Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final n(Landroid/os/Handler;)V
    .locals 1

    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->b:Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;->registered:Z

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->b:Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

    :cond_0
    return-void

    :cond_1
    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;-><init>(Landroidx/media3/session/legacy/MediaControllerCompat$Callback;Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback;->b:Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroidx/media3/session/legacy/MediaControllerCompat$Callback$MessageHandler;->registered:Z

    return-void
.end method
