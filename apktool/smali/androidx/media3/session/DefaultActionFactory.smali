.class final Landroidx/media3/session/DefaultActionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaNotification$ActionFactory;


# instance fields
.field public final a:Landroidx/media3/session/MediaSessionService;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaSessionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/DefaultActionFactory;->a:Landroidx/media3/session/MediaSessionService;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;
    .locals 1

    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {p0, p1, p4}, Landroidx/media3/session/DefaultActionFactory;->d(Landroidx/media3/session/MediaSession;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v0, p2, p3, p0}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final b(Landroidx/media3/session/MediaSession;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v1, Landroidx/media3/session/PlaybackPendingIntentBuilder;

    const/4 v2, 0x3

    iget-object p0, p0, Landroidx/media3/session/DefaultActionFactory;->a:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroidx/media3/session/PlaybackPendingIntentBuilder;-><init>(Landroid/content/Context;ILjava/lang/Class;)V

    iget-object p0, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    iput-object p0, v1, Landroidx/media3/session/PlaybackPendingIntentBuilder;->f:Ljava/lang/String;

    iput-object v0, v1, Landroidx/media3/session/PlaybackPendingIntentBuilder;->g:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroidx/media3/session/PlaybackPendingIntentBuilder;->a()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final c(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;
    .locals 7

    iget-object v0, p2, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget v3, v0, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->g(Z)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroidx/core/app/NotificationCompat$Action;

    iget v4, p2, Landroidx/media3/session/CommandButton;->d:I

    sget-object v5, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    iget-object p0, p0, Landroidx/media3/session/DefaultActionFactory;->a:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object p2, p2, Landroidx/media3/session/CommandButton;->f:Ljava/lang/CharSequence;

    new-instance v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v5, p0, v6, v0}, Landroidx/media3/session/CustomCommandPendingIntentBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/session/SessionCommand;)V

    iget-object p0, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    iput-object p0, v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt()I

    move-result p0

    iget-object p1, v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->d:Ljava/lang/String;

    iget-object v0, v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->c:Landroidx/media3/session/SessionCommand;

    iget v6, v0, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v6, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->g(Z)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.media3.session.CUSTOM_NOTIFICATION_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroidx/media3/session/MediaSessionImpl;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance p1, Landroid/content/ComponentName;

    iget-object v2, v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->a:Landroid/content/Context;

    iget-object v5, v5, Landroidx/media3/session/CustomCommandPendingIntentBuilder;->b:Ljava/lang/Class;

    invoke-direct {p1, v2, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string p1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION"

    iget-object v5, v0, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {v1, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "androidx.media3.session.EXTRAS_KEY_CUSTOM_NOTIFICATION_ACTION_EXTRAS"

    iget-object v0, v0, Landroidx/media3/session/SessionCommand;->c:Landroid/os/Bundle;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p1, 0xc000000

    invoke-static {v2, p0, v1, p1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v3, v4, p2, p0}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v3
.end method

.method public final d(Landroidx/media3/session/MediaSession;I)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroidx/media3/session/PlaybackPendingIntentBuilder;

    iget-object p0, p0, Landroidx/media3/session/DefaultActionFactory;->a:Landroidx/media3/session/MediaSessionService;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, p2, v1}, Landroidx/media3/session/PlaybackPendingIntentBuilder;-><init>(Landroid/content/Context;ILjava/lang/Class;)V

    invoke-virtual {p1}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object p0

    invoke-interface {p0}, Landroidx/media3/common/Player;->r()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput-boolean p0, v0, Landroidx/media3/session/PlaybackPendingIntentBuilder;->e:Z

    iget-object p0, p1, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    iput-object p0, v0, Landroidx/media3/session/PlaybackPendingIntentBuilder;->f:Ljava/lang/String;

    invoke-virtual {v0}, Landroidx/media3/session/PlaybackPendingIntentBuilder;->a()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method
