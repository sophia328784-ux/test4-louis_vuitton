.class Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field public final synthetic a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;


# direct methods
.method public constructor <init>(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;)V
    .locals 0

    iput-object p1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v0, v0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object v1, v1, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->a()Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    move-result-object v0

    if-ne p0, v0, :cond_0

    return-object v1

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :try_start_0
    const-string v1, "android.support.v4.media.session.command.GET_EXTRA_BINDER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz p3, :cond_7

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->c:Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->a()Landroidx/media3/session/legacy/IMediaSession;

    move-result-object p2

    const-string v0, "android.support.v4.media.session.EXTRA_BINDER"

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object p2, p1, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p1, p1, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->e:Landroidx/versionedparcelable/VersionedParcelable;

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, p1}, Landroidx/versionedparcelable/ParcelUtils;->b(Landroid/os/Bundle;Landroidx/versionedparcelable/VersionedParcelable;)V

    const/4 p1, 0x0

    invoke-virtual {p3, p1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_7

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object p2, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->a(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->a(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    return-void

    :cond_3
    const-string v1, "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p2, :cond_7

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object p3, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p3}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->a(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    invoke-virtual {p2, p3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->b(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V

    return-void

    :cond_4
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz p2, :cond_7

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    const-string p1, "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object p2, Landroidx/media3/session/legacy/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, p2}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->a(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->p(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    return-void

    :cond_5
    const-string v1, "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object p1, v0, Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;->h:Ljava/util/List;

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    const-string p3, "android.support.v4.media.session.command.ARGUMENT_INDEX"

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-ltz p2, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_6

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;

    :cond_6
    if-eqz v2, :cond_7

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    iget-object p1, v2, Landroidx/media3/session/legacy/MediaSessionCompat$QueueItem;->b:Landroidx/media3/session/legacy/MediaDescriptionCompat;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->p(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    :try_end_4
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    const-string p0, "Could not unparcel the extra data."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    :try_start_0
    const-string v0, "android.support.v4.media.session.action.PLAY_FROM_URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "android.support.v4.media.session.action.ARGUMENT_URI"

    const-string v2, "android.support.v4.media.session.action.ARGUMENT_EXTRAS"

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_a

    :try_start_1
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->k(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    :cond_1
    const-string v0, "android.support.v4.media.session.action.PREPARE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->l()V

    return-void

    :cond_2
    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_MEDIA_ID"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_MEDIA_ID"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->m(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_3
    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_SEARCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_QUERY"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_4
    const-string v0, "android.support.v4.media.session.action.PREPARE_FROM_URI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_a

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->o(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void

    :cond_5
    const-string v0, "android.support.v4.media.session.action.SET_CAPTIONING_ENABLED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_a

    const-string p0, "android.support.v4.media.session.action.ARGUMENT_CAPTIONING_ENABLED"

    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    return-void

    :cond_6
    const-string v0, "android.support.v4.media.session.action.SET_REPEAT_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_REPEAT_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->v(I)V

    return-void

    :cond_7
    const-string v0, "android.support.v4.media.session.action.SET_SHUFFLE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_SHUFFLE_MODE"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->w(I)V

    return-void

    :cond_8
    const-string v0, "android.support.v4.media.session.action.SET_RATING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_RATING"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    sget-object v0, Landroidx/media3/session/legacy/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, Landroidx/media3/session/legacy/LegacyParcelableUtil;->a(Landroid/os/Parcelable;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/session/legacy/RatingCompat;

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->u(Landroidx/media3/session/legacy/RatingCompat;)V

    return-void

    :cond_9
    const-string v0, "android.support.v4.media.session.action.SET_PLAYBACK_SPEED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz p2, :cond_a

    const-string p1, "android.support.v4.media.session.action.ARGUMENT_PLAYBACK_SPEED"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->s(F)V

    :cond_a
    :goto_0
    return-void

    :cond_b
    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->d(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    const-string p0, "Could not unparcel the data."

    invoke-static {p0}, Landroidx/media3/common/util/Log;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final onFastForward()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->e()V

    return-void
.end method

.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->f(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final onPause()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->g()V

    return-void
.end method

.method public final onPlay()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->h()V

    return-void
.end method

.method public final onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->i(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->k(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepare()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->l()V

    return-void
.end method

.method public final onPrepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->m(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->n(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPrepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/Util;->p(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->o(Landroid/net/Uri;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onRewind()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->q()V

    return-void
.end method

.method public final onSeekTo(J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->r(J)V

    return-void
.end method

.method public final onSetPlaybackSpeed(F)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->s(F)V

    return-void
.end method

.method public final onSetRating(Landroid/media/Rating;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-static {p1}, Landroidx/media3/session/legacy/RatingCompat;->a(Landroid/os/Parcelable;)Landroidx/media3/session/legacy/RatingCompat;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->t(Landroidx/media3/session/legacy/RatingCompat;)V

    return-void
.end method

.method public final onSkipToNext()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->x()V

    return-void
.end method

.method public final onSkipToPrevious()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->y()V

    return-void
.end method

.method public final onSkipToQueueItem(J)V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0, p1, p2}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->z(J)V

    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a()Landroidx/media3/session/legacy/MediaSessionCompat$MediaSessionImplApi23;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat$Callback$MediaSessionCallback;->a:Landroidx/media3/session/legacy/MediaSessionCompat$Callback;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;->A()V

    return-void
.end method
