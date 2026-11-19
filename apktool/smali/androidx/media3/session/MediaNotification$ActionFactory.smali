.class public interface abstract Landroidx/media3/session/MediaNotification$ActionFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/MediaNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionFactory"
.end annotation


# virtual methods
.method public abstract a(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;
.end method

.method public b(Landroidx/media3/session/MediaSession;)Landroid/app/PendingIntent;
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p0, p1, v0}, Landroidx/media3/session/MediaNotification$ActionFactory;->d(Landroidx/media3/session/MediaSession;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public abstract c(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;
.end method

.method public abstract d(Landroidx/media3/session/MediaSession;I)Landroid/app/PendingIntent;
.end method
