.class Landroidx/media3/session/MediaLibraryServiceLegacyStub;
.super Landroidx/media3/session/MediaSessionServiceLegacyStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$ProgressReporter;,
        Landroidx/media3/session/MediaLibraryServiceLegacyStub$SearchRequest;
    }
.end annotation


# static fields
.field public static final synthetic n:I


# instance fields
.field public final m:Landroidx/media3/session/MediaLibrarySessionImpl;


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibrarySessionImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/media3/session/MediaSessionServiceLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    return-void
.end method

.method public static n(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/LibraryResult;)Lcom/google/common/util/concurrent/SettableFuture;
    .locals 8

    const-string v0, "LibraryResult must not be null"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroidx/media3/session/LibraryResult;->a:I

    const/4 v7, 0x0

    if-nez v0, :cond_4

    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->c:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    move-object v4, p1

    check-cast v4, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p0}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-object v6

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Landroidx/media3/session/g0;

    const/4 v0, 0x4

    invoke-direct {p1, v6, v5, v0}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-virtual {v6, p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p1, 0x0

    invoke-direct {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Landroidx/media3/session/e;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/e;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/google/common/collect/ImmutableList;Ljava/util/ArrayList;Lcom/google/common/util/concurrent/SettableFuture;)V

    :goto_0
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    if-ge p1, p0, :cond_3

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem;

    iget-object p0, p0, Landroidx/media3/common/MediaItem;->d:Landroidx/media3/common/MediaMetadata;

    iget-object p0, p0, Landroidx/media3/common/MediaMetadata;->k:[B

    if-nez p0, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroidx/media3/session/e;->run()V

    goto :goto_1

    :cond_2
    iget-object v0, v2, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->m:Landroidx/media3/common/util/BitmapLoader;

    invoke-interface {v0, p0}, Landroidx/media3/common/util/BitmapLoader;->c([B)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-object v6

    :cond_4
    :goto_2
    invoke-virtual {v6, v7}, Lcom/google/common/util/concurrent/AbstractFuture;->set(Ljava/lang/Object;)Z

    return-object v6
.end method


# virtual methods
.method public final c(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->e()V

    return-void

    :cond_0
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->a()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v6, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/e;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/e;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v6, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(ILjava/lang/String;Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroidx/media3/session/MediaSessionServiceLegacyStub;->d(ILjava/lang/String;Landroid/os/Bundle;)Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const p1, 0xc350

    iget-object v6, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v6, v3, p1}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-object p2

    :cond_2
    iget-object p1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v0, p1, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {v0, p3}, Landroidx/media3/session/LegacyConversions;->h(Landroid/content/Context;Landroid/os/Bundle;)Landroidx/media3/session/MediaLibraryService$LibraryParams;

    move-result-object v4

    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v5, Landroidx/media3/common/util/ConditionVariable;

    invoke-direct {v5}, Landroidx/media3/common/util/ConditionVariable;-><init>()V

    iget-object p3, p1, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/d;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/d;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/common/util/ConditionVariable;)V

    invoke-static {p3, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {v5}, Landroidx/media3/common/util/ConditionVariable;->a()V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/session/LibraryResult;

    const-string p3, "LibraryResult must not be null"

    invoke-static {p0, p3}, Lcom/google/common/base/Preconditions;->m(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p3, "Couldn\'t get a result from onGetLibraryRoot"

    invoke-static {p3, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, p2

    :goto_1
    if-eqz p0, :cond_c

    iget-object p3, p0, Landroidx/media3/session/LibraryResult;->c:Ljava/lang/Object;

    iget v0, p0, Landroidx/media3/session/LibraryResult;->a:I

    if-nez v0, :cond_c

    if-eqz p3, :cond_c

    iget-object p0, p0, Landroidx/media3/session/LibraryResult;->e:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    const/4 p2, 0x0

    if-eqz p0, :cond_5

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v2, "androidx.media3.session.LibraryParams.Extras.KEY_ROOT_CHILDREN_BROWSABLE_ONLY"

    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    :goto_2
    const-string v2, "androidx.media.MediaBrowserCompat.Extras.KEY_ROOT_CHILDREN_SUPPORTED_FLAGS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "android.service.media.extra.RECENT"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->b:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.service.media.extra.OFFLINE"

    iget-boolean v2, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->c:Z

    invoke-virtual {v1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.service.media.extra.SUGGESTED"

    iget-boolean p0, p0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->d:Z

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_3
    const p0, 0xc355

    invoke-virtual {v6, v3, p0}, Landroidx/media3/session/ConnectedControllersManager;->m(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result p0

    const-string v0, "android.media.browse.SEARCH_SUPPORTED"

    invoke-virtual {v1, v0, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p1, Landroidx/media3/session/MediaSessionImpl;->s:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_4
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge p2, v0, :cond_a

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/CommandButton;

    iget-object v2, v0, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    if-eqz v2, :cond_9

    iget v2, v2, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v2, :cond_9

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v0, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    iget-object v4, v0, Landroidx/media3/session/CommandButton;->g:Landroid/os/Bundle;

    if-eqz v3, :cond_6

    const-string v5, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ID"

    iget-object v3, v3, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v3, v0, Landroidx/media3/session/CommandButton;->f:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_LABEL"

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/media3/session/CommandButton;->e:Landroid/net/Uri;

    if-eqz v0, :cond_7

    const-string v3, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_ICON_URI"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v4}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "androidx.media.utils.extras.KEY_CUSTOM_BROWSER_ACTION_EXTRAS"

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_8
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_b

    const-string p0, "androidx.media.utils.extras.CUSTOM_BROWSER_ACTION_ROOT_LIST"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_b
    new-instance p0, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    check-cast p3, Landroidx/media3/common/MediaItem;

    iget-object p1, p3, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p0

    :cond_c
    if-eqz p0, :cond_d

    iget p0, p0, Landroidx/media3/session/LibraryResult;->a:I

    if-eqz p0, :cond_d

    goto :goto_5

    :cond_d
    sget-object p2, Landroidx/media3/session/MediaUtils;->a:Landroidx/media3/session/legacy/MediaBrowserServiceCompat$BrowserRoot;

    :goto_5
    return-object p2
.end method

.method public final e(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onLoadChildren(): Ignoring empty parentId from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->a()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v6, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/u0;

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/u0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {v6, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->e(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p2, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignoring empty itemId from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->a()V

    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/t0;

    invoke-direct {v2, p0, v0, p2, p1}, Landroidx/media3/session/t0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h(Landroid/os/Bundle;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ignoring empty query from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->f(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, v2, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    instance-of v0, v0, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;->a()V

    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v6, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/u0;

    move-object v1, p0

    move-object v5, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/u0;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/legacy/MediaBrowserServiceCompat$Result;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {v6, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final i(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onSubscribe(): Ignoring empty id from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v6, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v0, Landroidx/media3/session/e;

    const/4 v5, 0x2

    move-object v1, p0

    move-object v4, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v6, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->o()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onUnsubscribe(): Ignoring empty id from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;->m:Landroidx/media3/session/MediaLibrarySessionImpl;

    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v2, Landroidx/media3/session/t0;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, p1, v3}, Landroidx/media3/session/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroid/os/Bundle;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 7

    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->j:Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {v1, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->b(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v4

    new-instance v5, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;

    invoke-direct {v5, p0, p1}, Landroidx/media3/session/MediaLibraryServiceLegacyStub$BrowserLegacyCb;-><init>(Landroidx/media3/session/MediaLibraryServiceLegacyStub;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    sget-object p0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    const-string p0, "androidx.media.utils.MediaBrowserCompat.extras.CUSTOM_BROWSER_ACTION_LIMIT"

    const/4 v1, 0x0

    invoke-virtual {p2, p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final o()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaBrowserServiceCompat;->b()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p0

    return-object p0
.end method
