.class Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;
.super Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaButtonConnectionCallback"
.end annotation


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Landroid/content/Intent;

.field public final e:Landroid/content/BroadcastReceiver$PendingResult;

.field public f:Landroidx/media3/session/legacy/MediaBrowserCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    invoke-direct {p0}, Landroidx/media3/session/legacy/MediaBrowserCompat$ConnectionCallback;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->c:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->d:Landroid/content/Intent;

    iput-object p3, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->e:Landroid/content/BroadcastReceiver$PendingResult;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    new-instance v0, Landroidx/media3/session/legacy/MediaControllerCompat;

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->f:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaBrowserCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->c:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;-><init>(Landroid/content/Context;Landroidx/media3/session/legacy/MediaSessionCompat$Token;)V

    iget-object v1, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->d:Landroid/content/Intent;

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->c(Landroid/view/KeyEvent;)V

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->f:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->b()V

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->f:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->b()V

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->f:Landroidx/media3/session/legacy/MediaBrowserCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaBrowserCompat;->b()V

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaButtonReceiver$MediaButtonConnectionCallback;->e:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
