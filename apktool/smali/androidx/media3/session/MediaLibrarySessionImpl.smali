.class Landroidx/media3/session/MediaLibrarySessionImpl;
.super Landroidx/media3/session/MediaSessionImpl;
.source "SourceFile"


# static fields
.field public static final synthetic L:I


# instance fields
.field public final H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

.field public final I:Lcom/google/common/collect/HashMultimap;

.field public final J:Lcom/google/common/collect/HashMultimap;

.field public final K:I


# direct methods
.method public constructor <init>(Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZI)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroidx/media3/common/Player;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZI)V"
        }
    .end annotation

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v15}, Landroidx/media3/session/MediaSessionImpl;-><init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZZ)V

    iput-object v9, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    move/from16 v1, p15

    iput v1, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->K:I

    new-instance v1, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v1}, Lcom/google/common/collect/HashMultimap;-><init>()V

    iput-object v1, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->I:Lcom/google/common/collect/HashMultimap;

    new-instance v1, Lcom/google/common/collect/HashMultimap;

    invoke-direct {v1}, Lcom/google/common/collect/HashMultimap;-><init>()V

    iput-object v1, v0, Landroidx/media3/session/MediaLibrarySessionImpl;->J:Lcom/google/common/collect/HashMultimap;

    return-void
.end method

.method public static F(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->q(Z)V

    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Library operation failed"

    invoke-static {v0, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static G(ILandroidx/media3/session/LibraryResult;)V
    .locals 2

    iget v0, p1, Landroidx/media3/session/LibraryResult;->a:I

    if-nez v0, :cond_1

    iget-object p1, p1, Landroidx/media3/session/LibraryResult;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v0, ", pageSize="

    const-string v1, "Invalid size="

    invoke-static {v0, p1, p0, v1}, Lno0;->k(Ljava/lang/Object;IILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static y(Landroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;)Landroidx/media3/session/LibraryResult;
    .locals 10

    iget-object v0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Landroidx/media3/session/LibraryResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v7, Landroidx/media3/session/SessionError;

    const-string p1, "no error message provided"

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, -0x2

    invoke-direct {v7, v3, p1, v0}, Landroidx/media3/session/SessionError;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    const/4 v8, 0x0

    const/4 v9, 0x4

    move-object v6, p0

    invoke-direct/range {v2 .. v9}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    return-object v2

    :cond_0
    move-object v6, p0

    iget p0, p1, Landroidx/media3/session/MediaSession$MediaItemsWithStartPosition;->b:I

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 p1, 0x0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/media3/common/MediaItem;

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0, v6}, Landroidx/media3/session/LibraryResult;->c(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    return-object p0
.end method

.method public static z(Landroidx/media3/session/MediaLibrarySessionImpl;Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final A(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/LibraryResult;)V
    .locals 6

    iget v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->K:I

    if-eqz v0, :cond_8

    iget p1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->b:I

    if-eqz p1, :cond_0

    goto :goto_4

    :cond_0
    iget p1, p2, Landroidx/media3/session/LibraryResult;->a:I

    const/16 v1, -0x66

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    if-eq p1, v1, :cond_1

    const/16 v1, -0x69

    if-ne p1, v1, :cond_7

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p2, Landroidx/media3/session/LibraryResult;->e:Landroidx/media3/session/MediaLibraryService$LibraryParams;

    iget-object p2, p2, Landroidx/media3/session/LibraryResult;->f:Landroidx/media3/session/SessionError;

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->g(I)I

    move-result v2

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    if-eqz v3, :cond_3

    iget v3, v3, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->b:I

    if-ne v3, v2, :cond_3

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    iget-object v3, p2, Landroidx/media3/session/SessionError;->b:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v3, "no error message provided"

    :goto_1
    sget-object v4, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    iget-object v0, v0, Landroidx/media3/session/MediaLibraryService$LibraryParams;->a:Landroid/os/Bundle;

    const-string v5, "android.media.extras.ERROR_RESOLUTION_ACTION_INTENT"

    invoke-virtual {v0, v5}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v4, v0

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    iget-object v4, p2, Landroidx/media3/session/SessionError;->c:Landroid/os/Bundle;

    :cond_6
    :goto_2
    new-instance p2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    invoke-direct {p2, v1, v2, v3, v4}, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;-><init>(ZILjava/lang/String;Landroid/os/Bundle;)V

    iput-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p2, p2, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    :cond_7
    :goto_3
    if-nez p1, :cond_8

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    if-eqz p1, :cond_8

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public final B(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;ILandroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    const-string v0, "androidx.media3.session.recent.root"

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    const/4 v2, -0x6

    if-eqz p2, :cond_3

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->n:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->h()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->f()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaSession$Callback;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p1, Landroidx/media3/session/z0;

    invoke-direct {p1, p4, v0}, Landroidx/media3/session/z0;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p3

    invoke-static {p0, p1, p3}, Lcom/google/common/util/concurrent/Futures;->l(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    new-instance p1, Landroidx/media3/session/z0;

    invoke-direct {p1, p4, p2}, Landroidx/media3/session/z0;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->b()Ljava/util/concurrent/Executor;

    move-result-object p2

    const-class p3, Ljava/lang/Throwable;

    invoke-static {p0, p3, p1, p2}, Lcom/google/common/util/concurrent/Futures;->b(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string p1, "androidx.media3.session.recent.item"

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p2, p1, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p2, p1, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    new-instance p2, Landroidx/media3/common/MediaMetadata;

    invoke-direct {p2, p1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object p2, p0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->A(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    invoke-static {p0, p4}, Landroidx/media3/session/LibraryResult;->c(Ljava/util/List;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v2}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p2

    invoke-static {p2}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v3

    new-instance v1, Landroidx/media3/session/w0;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/w0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/media3/session/MediaSession$ControllerInfo;II)V

    new-instance p0, Landroidx/media3/session/x0;

    invoke-direct {p0, v2, v0}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v3, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v3
.end method

.method public final C(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    const/4 v0, -0x6

    if-eqz p2, :cond_1

    iget-boolean v1, p2, Landroidx/media3/session/MediaLibraryService$LibraryParams;->b:Z

    if-eqz v1, :cond_1

    invoke-static {p1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->n:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    new-instance p0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {p0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    const-string p1, "androidx.media3.session.recent.root"

    iput-object p1, p0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/MediaMetadata$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaMetadata$Builder;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->r:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p1, Landroidx/media3/common/MediaMetadata$Builder;->s:Ljava/lang/Boolean;

    new-instance v0, Landroidx/media3/common/MediaMetadata;

    invoke-direct {v0, p1}, Landroidx/media3/common/MediaMetadata;-><init>(Landroidx/media3/common/MediaMetadata$Builder;)V

    iput-object v0, p0, Landroidx/media3/common/MediaItem$Builder;->l:Landroidx/media3/common/MediaMetadata;

    invoke-virtual {p0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object v7

    invoke-static {v7}, Landroidx/media3/session/LibraryResult;->d(Landroidx/media3/common/MediaItem;)V

    new-instance v1, Landroidx/media3/session/LibraryResult;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const/4 v6, 0x0

    const/4 v8, 0x2

    const/4 v2, 0x0

    move-object v5, p2

    invoke-direct/range {v1 .. v8}, Landroidx/media3/session/LibraryResult;-><init>(IJLandroidx/media3/session/MediaLibraryService$LibraryParams;Landroidx/media3/session/SessionError;Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/media3/session/LibraryResult;->b(I)Landroidx/media3/session/LibraryResult;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final D(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 9

    iget-object v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->J:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, v0, p2}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->I:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v0, p2, p1}, Lcom/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->H:Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaLibraryService$MediaLibrarySession$Callback;->c()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v2, Lqc0;

    invoke-direct {v2, v1, p2, p3}, Lqc0;-><init>(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;Landroidx/media3/session/MediaLibraryService$LibraryParams;)V

    invoke-static {v0, v2}, Landroidx/media3/common/util/Util;->e0(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/AsyncFunction;)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object v5

    new-instance v3, Landroidx/media3/session/e;

    const/4 v8, 0x4

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Landroidx/media3/session/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Landroidx/media3/session/x0;

    const/4 p1, 0x1

    invoke-direct {p0, v4, p1}, Landroidx/media3/session/x0;-><init>(Landroidx/media3/session/MediaLibrarySessionImpl;I)V

    invoke-interface {v5, v3, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-object v5

    :catchall_0
    move-exception v0

    move-object v4, p0

    :goto_0
    move-object p0, v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized E(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->I:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, p2, p1}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->J:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {p1, v0, p2}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1

    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->i(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->y:Landroidx/media3/session/MediaSessionServiceLegacyStub;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    check-cast p0, Landroidx/media3/session/MediaLibraryServiceLegacyStub;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionServiceLegacyStub;->l:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final p(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 3

    iget-object v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->J:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v1, v0}, Lcom/google/common/collect/HashMultimap;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroidx/media3/session/MediaLibrarySessionImpl;->I:Lcom/google/common/collect/HashMultimap;

    invoke-virtual {v2, v1, p1}, Lcom/google/common/collect/HashMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->p(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
