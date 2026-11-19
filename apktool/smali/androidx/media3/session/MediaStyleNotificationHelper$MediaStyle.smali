.class public Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;
.super Landroidx/core/app/NotificationCompat$Style;
.source "SourceFile"


# instance fields
.field public final e:Landroidx/media3/session/MediaSession;

.field public f:[I


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSession;)V
    .locals 0

    invoke-direct {p0}, Landroidx/core/app/NotificationCompat$Style;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->e:Landroidx/media3/session/MediaSession;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V
    .locals 3

    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    iget-object v1, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->e:Landroidx/media3/session/MediaSession;

    iget-object v2, v1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v2, v2, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v2, v2, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->c:Landroid/media/session/MediaSession$Token;

    invoke-virtual {v0, v2}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->f:[I

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    :cond_0
    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->a()Landroid/app/Notification$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object v0, v1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->j:Landroidx/media3/session/SessionToken;

    invoke-virtual {v0}, Landroidx/media3/session/SessionToken;->b()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "androidx.media3.session"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {p1}, Landroidx/core/app/NotificationBuilderWithBuilderAccessor;->a()Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    return-void
.end method
