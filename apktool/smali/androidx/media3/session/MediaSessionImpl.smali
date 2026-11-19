.class Landroidx/media3/session/MediaSessionImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;,
        Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;,
        Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;,
        Landroidx/media3/session/MediaSessionImpl$PlayerListener;
    }
.end annotation


# static fields
.field public static final F:Landroidx/media3/session/SessionResult;

.field public static final G:Lcom/google/common/base/Supplier;


# instance fields
.field public final A:J

.field public B:Z

.field public final C:Lcom/google/common/collect/ImmutableList;

.field public final D:Lcom/google/common/collect/ImmutableList;

.field public final E:Landroid/os/Bundle;

.field public final a:Ljava/lang/Object;

.field public final b:Landroid/net/Uri;

.field public final c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

.field public final d:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

.field public final e:Landroidx/media3/session/MediaSession$Callback;

.field public final f:Landroid/content/Context;

.field public final g:Landroidx/media3/session/MediaSessionStub;

.field public final h:Landroidx/media3/session/MediaSessionLegacyStub;

.field public final i:Ljava/lang/String;

.field public final j:Landroidx/media3/session/SessionToken;

.field public final k:Landroidx/media3/session/MediaSession;

.field public final l:Landroid/os/Handler;

.field public final m:Landroidx/media3/common/util/BitmapLoader;

.field public final n:Landroidx/media3/session/d1;

.field public final o:Landroid/os/Handler;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Lcom/google/common/collect/ImmutableList;

.field public t:Landroidx/media3/session/PlayerInfo;

.field public u:Landroidx/media3/session/PlayerWrapper;

.field public final v:Landroid/app/PendingIntent;

.field public w:Landroidx/media3/session/MediaSessionImpl$PlayerListener;

.field public x:Landroidx/media3/session/MediaSessionService$MediaSessionListener;

.field public y:Landroidx/media3/session/MediaSessionServiceLegacyStub;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/media3/session/SessionResult;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    sput-object v0, Landroidx/media3/session/MediaSessionImpl;->F:Landroidx/media3/session/SessionResult;

    new-instance v0, Landroidx/media3/session/f1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/MediaSessionImpl;->G:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSession;Landroid/content/Context;Ljava/lang/String;Landroidx/media3/common/Player;Landroid/app/PendingIntent;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaSession$Callback;Landroid/os/Bundle;Landroid/os/Bundle;Landroidx/media3/common/util/BitmapLoader;ZZZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSession;",
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
            "Landroidx/media3/session/MediaSession$Callback;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroidx/media3/common/util/BitmapLoader;",
            "ZZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Init "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.10.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    iput-object p3, p0, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->v:Landroid/app/PendingIntent;

    move-object/from16 v6, p6

    iput-object v6, p0, Landroidx/media3/session/MediaSessionImpl;->C:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v7, p7

    iput-object v7, p0, Landroidx/media3/session/MediaSessionImpl;->D:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v0, p8

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->s:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v0, p9

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    move-object/from16 v10, p11

    iput-object v10, p0, Landroidx/media3/session/MediaSessionImpl;->E:Landroid/os/Bundle;

    move-object/from16 v0, p12

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->m:Landroidx/media3/common/util/BitmapLoader;

    move/from16 v5, p13

    iput-boolean v5, p0, Landroidx/media3/session/MediaSessionImpl;->p:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->q:Z

    move/from16 v0, p15

    iput-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->r:Z

    new-instance v11, Landroidx/media3/session/MediaSessionStub;

    invoke-direct {v11, p0}, Landroidx/media3/session/MediaSessionStub;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v11, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->o:Landroid/os/Handler;

    invoke-interface/range {p4 .. p4}, Landroidx/media3/common/Player;->a0()Landroid/os/Looper;

    move-result-object v0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    sget-object v1, Landroidx/media3/session/PlayerInfo;->H:Landroidx/media3/session/PlayerInfo;

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    new-instance v1, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    new-instance v1, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-direct {v1, p0, v0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->d:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-static {p3}, Landroidx/media3/session/MediaSessionImpl;->c(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->b:Landroid/net/Uri;

    new-instance p3, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {p3, p1}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    invoke-virtual {p3}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p1

    new-instance v0, Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v8, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iget-object v9, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    move-object v1, p0

    move-object/from16 v4, p10

    invoke-direct/range {v0 .. v10}, Landroidx/media3/session/MediaSessionLegacyStub;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V

    move-object p3, v3

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->c()Landroidx/media3/session/legacy/MediaSessionCompat$Token;

    move-result-object v0

    iget-object v7, v0, Landroidx/media3/session/legacy/MediaSessionCompat$Token;->c:Landroid/media/session/MediaSession$Token;

    new-instance v0, Landroidx/media3/session/SessionToken;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v3, 0x9

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v2, 0x3c336594

    move-object/from16 v6, p10

    move-object v5, v11

    invoke-direct/range {v0 .. v7}, Landroidx/media3/session/SessionToken;-><init>(IIILjava/lang/String;Landroidx/media3/session/IMediaSession;Landroid/os/Bundle;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->j:Landroidx/media3/session/SessionToken;

    new-instance p2, Landroidx/media3/session/PlayerWrapper;

    move-object/from16 v0, p4

    invoke-direct {p2, v0}, Landroidx/media3/session/PlayerWrapper;-><init>(Landroidx/media3/common/Player;)V

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    new-instance v0, Landroidx/media3/session/g0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p2, v1}, Landroidx/media3/session/g0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {p3, v0}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Landroidx/media3/session/MediaSessionImpl;->A:J

    new-instance p2, Landroidx/media3/session/d1;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, Landroidx/media3/session/d1;-><init>(Landroidx/media3/session/MediaSessionImpl;I)V

    iput-object p2, p0, Landroidx/media3/session/MediaSessionImpl;->n:Landroidx/media3/session/d1;

    new-instance p2, Landroidx/media3/session/d1;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Landroidx/media3/session/d1;-><init>(Landroidx/media3/session/MediaSessionImpl;I)V

    invoke-static {p3, p2}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroidx/media3/session/MediaSessionImpl;)V
    .locals 8

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->z:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->X0()Landroidx/media3/session/SessionPositionInfo;

    move-result-object v3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->hasPendingPlayerInfoChangedUpdate()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object v0, v0, Landroidx/media3/session/PlayerInfo;->c:Landroidx/media3/session/SessionPositionInfo;

    invoke-static {v3, v0}, Landroidx/media3/session/MediaUtils;->a(Landroidx/media3/session/SessionPositionInfo;Landroidx/media3/session/SessionPositionInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v0, v4}, Landroidx/media3/session/ConnectedControllersManager;->h(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/common/PlaybackException;

    const/16 v5, 0x10

    invoke-virtual {v0, v4, v5}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v5

    const/16 v6, 0x11

    invoke-virtual {v0, v4, v6}, Landroidx/media3/session/ConnectedControllersManager;->l(Landroidx/media3/session/MediaSession$ControllerInfo;I)Z

    move-result v6

    new-instance v7, Landroidx/media3/session/g1;

    invoke-direct {v7, v3, v5, v6, v4}, Landroidx/media3/session/g1;-><init>(Landroidx/media3/session/SessionPositionInfo;ZZLandroidx/media3/session/MediaSession$ControllerInfo;)V

    invoke-virtual {p0, v4, v7}, Landroidx/media3/session/MediaSessionImpl;->d(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v1, v0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->c(ILandroidx/media3/session/SessionPositionInfo;ZZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception in using media1 API"

    invoke-static {v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->w()V

    return-void

    :goto_2
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "androidx"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "media3.session"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSession$ControllerInfo;->a:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {p0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.systemui"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b(Landroid/view/KeyEvent;ZZ)Z
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    iget-object v0, v0, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->f()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x55

    const/16 v2, 0x4f

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/16 p1, 0x57

    :cond_2
    const/4 p2, 0x1

    if-eq p1, v2, :cond_7

    const/16 v1, 0x7e

    if-eq p1, v1, :cond_6

    const/16 v1, 0x7f

    if-eq p1, v1, :cond_5

    const/16 v1, 0x110

    if-eq p1, v1, :cond_4

    const/16 v1, 0x111

    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_0

    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_0
    new-instance p1, Landroidx/media3/session/c;

    invoke-direct {p1, p0, v0, p2}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :pswitch_1
    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :pswitch_2
    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_3
    :pswitch_3
    new-instance p1, Landroidx/media3/session/c;

    const/16 v1, 0x9

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_4
    :pswitch_4
    new-instance p1, Landroidx/media3/session/c;

    const/16 v1, 0x8

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_5
    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x7

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_6
    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x6

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_7
    :pswitch_5
    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->r()Z

    move-result p1

    if-eqz p1, :cond_8

    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    goto :goto_1

    :cond_8
    new-instance p1, Landroidx/media3/session/c;

    const/4 v1, 0x5

    invoke-direct {p1, p0, v0, v1}, Landroidx/media3/session/c;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;I)V

    :goto_1
    new-instance v1, Landroidx/media3/session/e1;

    invoke-direct {v1, p0, p3, v0, p1}, Landroidx/media3/session/e1;-><init>(Landroidx/media3/session/MediaSessionImpl;ZLandroidx/media3/session/MediaSession$ControllerInfo;Ljava/lang/Runnable;)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {p0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    :try_start_0
    iget-object v1, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1, p1}, Landroidx/media3/session/ConnectedControllersManager;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/SequencedFutureManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/media3/session/SequencedFutureManager;->b()I

    move-result p0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->i(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_0
    iget-object v1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    if-eqz v1, :cond_2

    invoke-interface {p2, v1, p0}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception in "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    iget-object p0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final e(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0, v3, p1}, Landroidx/media3/session/MediaSessionImpl;->d(Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-interface {p1, p0, v1}, Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;->d(Landroidx/media3/session/MediaSession$ControllerCb;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final f()Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 4

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0}, Landroidx/media3/session/ConnectedControllersManager;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {p0, v2}, Landroidx/media3/session/MediaSessionImpl;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final g(Landroidx/media3/common/Player$Commands;)V
    .locals 2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->c:Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/media3/session/MediaSessionImpl$PlayerInfoChangedHandler;->sendPlayerInfoChangedMessage(ZZ)V

    new-instance v0, Landroidx/media3/session/p0;

    invoke-direct {v0, p1}, Landroidx/media3/session/p0;-><init>(Landroidx/media3/common/Player$Commands;)V

    invoke-virtual {p0, v0}, Landroidx/media3/session/MediaSessionImpl;->e(Landroidx/media3/session/MediaSessionImpl$RemoteControllerTask;)V

    :try_start_0
    iget-object p1, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->t:Landroidx/media3/session/PlayerInfo;

    iget-object p0, p0, Landroidx/media3/session/PlayerInfo;->s:Landroidx/media3/common/DeviceInfo;

    invoke-virtual {p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Exception in using media1 API"

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final h(Landroidx/media3/session/MediaSession$ControllerInfo;Z)V
    .locals 5

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->r()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v0}, Landroidx/media3/session/PlayerWrapper;->O0()Landroidx/media3/common/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 v4, 0x1f

    invoke-virtual {v3, v4}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    new-instance v3, Landroidx/media3/common/Player$Commands$Builder;

    invoke-direct {v3}, Landroidx/media3/common/Player$Commands$Builder;-><init>()V

    iget-object v4, v3, Landroidx/media3/common/Player$Commands$Builder;->a:Landroidx/media3/common/FlagSet$Builder;

    invoke-virtual {v4, v2}, Landroidx/media3/common/FlagSet$Builder;->a(I)V

    invoke-virtual {v3}, Landroidx/media3/common/Player$Commands$Builder;->c()Landroidx/media3/common/Player$Commands;

    move-result-object v2

    if-nez v0, :cond_5

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroidx/media3/session/MediaSession$Callback;->b()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaSessionImpl$1;

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/media3/session/MediaSessionImpl$1;-><init>(Landroidx/media3/session/MediaSessionImpl;Landroidx/media3/session/MediaSession$ControllerInfo;ZLandroidx/media3/common/Player$Commands;)V

    new-instance p1, Landroidx/media3/session/g;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Landroidx/media3/session/g;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v1, p1}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    return-void

    :cond_5
    :goto_1
    if-nez v0, :cond_6

    const-string v0, "Play requested without current MediaItem, but playback resumption prevented by missing available commands"

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-static {v0}, Landroidx/media3/common/util/Util;->G(Landroidx/media3/common/Player;)Z

    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->s(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public i(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {p0, p1}, Landroidx/media3/session/ConnectedControllersManager;->k(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final j(Landroidx/media3/session/MediaSession$ControllerInfo;)Z
    .locals 1

    iget-object v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->a:Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;->a()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget p0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->b:I

    if-eqz p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    iget-object p1, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->e:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string p1, "androidx.media3.session.MediaNotificationManager"

    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Landroidx/media3/session/MediaSessionImpl;->z:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final m(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-interface {p0, v0, p1, p2}, Landroidx/media3/session/MediaSession$Callback;->a(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final n(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;
    .locals 5

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {p0, v2}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    iget-object p1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->x:Landroidx/media3/session/SessionCommands;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a:Landroidx/media3/session/SessionCommands;

    iget-object p1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->b:Landroidx/media3/common/Player$Commands;

    iget-object p1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->d:Lcom/google/common/collect/ImmutableList;

    goto :goto_2

    :cond_1
    iget-object p1, v1, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->c:Lcom/google/common/collect/ImmutableList;

    :goto_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;

    invoke-direct {v0, v2}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;-><init>(Landroidx/media3/session/MediaSession;)V

    invoke-virtual {v0}, Landroidx/media3/session/MediaSession$ConnectionResult$AcceptedResultBuilder;->a()Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    iget-object p0, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->d:Lcom/google/common/collect/ImmutableList;

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    iget-object p0, v2, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->D:Lcom/google/common/collect/ImmutableList;

    :goto_3
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object p0, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->c:Lcom/google/common/collect/ImmutableList;

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    iget-object p0, v2, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->C:Lcom/google/common/collect/ImmutableList;

    :goto_4
    iput-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    goto :goto_5

    :cond_6
    iput-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->J()V

    :goto_5
    iget-object p0, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iget-object v2, v0, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    iget-object v3, v1, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v3

    invoke-virtual {v2, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v4

    if-eq v3, v4, :cond_7

    move v3, p1

    goto :goto_6

    :cond_7
    const/4 v3, 0x0

    :goto_6
    iput-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->x:Landroidx/media3/session/SessionCommands;

    iput-object v2, v1, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    iget-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {v1}, Landroidx/media3/session/MediaSessionLegacyStub;->J()V

    :cond_8
    iget-object p0, v1, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    if-eqz v3, :cond_9

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v3, Landroidx/media3/session/k1;

    invoke-direct {v3, v1, v2, p1}, Landroidx/media3/session/k1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;I)V

    invoke-static {p0, v3}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-object v0

    :cond_9
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v1, p0}, Landroidx/media3/session/MediaSessionLegacyStub;->K(Landroidx/media3/session/PlayerWrapper;)V

    :cond_a
    return-object v0
.end method

.method public final o(Landroidx/media3/session/MediaSession$ControllerInfo;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Landroidx/media3/session/SessionResult;

    const/4 p1, -0x6

    invoke-direct {p0, p1}, Landroidx/media3/session/SessionResult;-><init>(I)V

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->g(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public p(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->j(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    :cond_1
    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final q(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z
    .locals 9

    iget v0, p1, Landroidx/media3/session/MediaSession$ControllerInfo;->b:I

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_c

    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_1
    if-nez v1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->x()V

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v5, 0x4f

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    if-eq p0, v5, :cond_b

    const/16 p1, 0x7e

    if-eq p0, p1, :cond_b

    const/16 p1, 0x7f

    if-eq p0, p1, :cond_b

    const/16 p1, 0x110

    if-eq p0, p1, :cond_b

    const/16 p1, 0x111

    if-eq p0, p1, :cond_b

    packed-switch p0, :pswitch_data_0

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v7, "android.software.leanback"

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/16 v7, 0x55

    iget-object v8, p0, Landroidx/media3/session/MediaSessionImpl;->d:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    if-eq v2, v5, :cond_4

    if-eq v2, v7, :cond_4

    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->flush()V

    goto :goto_2

    :cond_4
    if-nez v3, :cond_7

    if-nez v0, :cond_7

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->hasPendingPlayPauseTask()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->clearPendingPlayPauseTask()Ljava/lang/Runnable;

    move p1, v6

    goto :goto_3

    :cond_6
    invoke-virtual {v8, p1, v1}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->setPendingPlayPauseTask(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/view/KeyEvent;)V

    return v6

    :cond_7
    :goto_1
    invoke-virtual {v8}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->flush()V

    :goto_2
    move p1, v4

    :goto_3
    iget-boolean v3, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-nez v3, :cond_a

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    if-eq v2, v7, :cond_8

    if-ne v2, v5, :cond_9

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->x()V

    return v6

    :cond_9
    if-eqz v0, :cond_c

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    iget-object p0, p0, Landroidx/media3/session/legacy/MediaSessionCompat;->b:Landroidx/media3/session/legacy/MediaControllerCompat;

    invoke-virtual {p0, v1}, Landroidx/media3/session/legacy/MediaControllerCompat;->c(Landroid/view/KeyEvent;)V

    return v6

    :cond_a
    const-string v0, "androidx.media3.session.NOTIFICATION_DISMISSED_EVENT_KEY"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-gtz v0, :cond_b

    invoke-virtual {p0, v1, p1, p2}, Landroidx/media3/session/MediaSessionImpl;->b(Landroid/view/KeyEvent;ZZ)Z

    move-result p0

    if-eqz p0, :cond_c

    :cond_b
    :pswitch_0
    return v6

    :cond_c
    :goto_4
    return v4

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Z
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    :try_start_0
    new-instance v0, Landroidx/media3/session/o0;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/o0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0}, Landroidx/concurrent/futures/CallbackToFutureAdapter;->a(Landroidx/concurrent/futures/CallbackToFutureAdapter$Resolver;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lbm;->i(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->x:Landroidx/media3/session/MediaSessionService$MediaSessionListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/media3/session/MediaSessionService$MediaSessionListener;->a:Landroidx/media3/session/MediaSessionService;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_2

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget v2, Landroidx/media3/session/MediaSessionService;->j:I

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionService;->d()Landroidx/media3/session/MediaNotificationManager;

    move-result-object v2

    iget-boolean v2, v2, Landroidx/media3/session/MediaNotificationManager;->m:Z

    if-nez v2, :cond_2

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    invoke-virtual {v0, p0, v1}, Landroidx/media3/session/MediaSessionService;->h(Landroidx/media3/session/MediaSession;Z)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final s(Landroidx/media3/session/MediaSession$ControllerInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final t(Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 7

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->k:Landroidx/media3/session/MediaSession;

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionImpl;->v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v2

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Landroidx/media3/session/MediaSession$Callback;->e(Landroidx/media3/session/MediaSession;Landroidx/media3/session/MediaSession$ControllerInfo;Ljava/util/List;IJ)Lcom/google/common/util/concurrent/SettableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final u()V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Release "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [AndroidXMedia3/1.10.1] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroidx/media3/common/MediaLibraryInfo;->a:Ljava/util/HashSet;

    const-class v1, Landroidx/media3/common/MediaLibraryInfo;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroidx/media3/common/MediaLibraryInfo;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->f(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->z:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/media3/session/MediaSessionImpl;->z:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->d:Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl$MediaPlayPauseKeyHandler;->clearPendingPlayPauseTask()Ljava/lang/Runnable;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_2
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v4, Landroidx/media3/session/d1;

    invoke-direct {v4, p0, v0}, Landroidx/media3/session/d1;-><init>(Landroidx/media3/session/MediaSessionImpl;I)V

    invoke-static {v3, v4}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Exception thrown while closing"

    invoke-static {v4, v3}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v3, p0, Landroidx/media3/session/MediaSessionImpl;->h:Landroidx/media3/session/MediaSessionLegacyStub;

    iget-object v4, v3, Landroidx/media3/session/MediaSessionLegacyStub;->n:Landroid/content/ComponentName;

    iget-object v5, v3, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v6, v3, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-ge v7, v8, :cond_2

    if-nez v4, :cond_1

    invoke-virtual {v6, v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->k(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    iget-object v8, v5, Landroidx/media3/session/MediaSessionImpl;->b:Landroid/net/Uri;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v4, v5, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    sget v7, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    invoke-static {v4, v0, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->k(Landroid/app/PendingIntent;)V

    :cond_2
    :goto_1
    iget-object v2, v3, Landroidx/media3/session/MediaSessionLegacyStub;->m:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    if-eqz v2, :cond_3

    iget-object v4, v5, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v2, v3, Landroidx/media3/session/MediaSessionLegacyStub;->k:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    if-eqz v2, :cond_5

    iget-object v3, v2, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, v2, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->c:Ljava/util/concurrent/Executor;

    new-instance v3, Landroidx/media3/session/a;

    invoke-direct {v3, v2, v0}, Landroidx/media3/session/a;-><init>(Landroidx/media3/session/AndroidAutoConnectionStateObserver;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    invoke-virtual {v6}, Landroidx/media3/session/legacy/MediaSessionCompat;->e()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->g:Landroidx/media3/session/MediaSessionStub;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionStub;->k:Ljava/util/Set;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionStub;->j:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v1}, Landroidx/media3/session/ConnectedControllersManager;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/media3/session/MediaSession$ControllerInfo;

    invoke-virtual {v1, v3}, Landroidx/media3/session/ConnectedControllersManager;->o(Landroidx/media3/session/MediaSession$ControllerInfo;)V

    iget-object v3, v3, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroidx/media3/session/MediaSession$ControllerCb;->e()V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v2, v2, Landroidx/media3/session/MediaSession$ControllerInfo;->d:Landroidx/media3/session/MediaSession$ControllerCb;

    if-eqz v2, :cond_8

    invoke-interface {v2}, Landroidx/media3/session/MediaSession$ControllerCb;->e()V

    goto :goto_4

    :cond_9
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionStub;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void

    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final v(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionImpl;->f()Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final w()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionImpl;->n:Landroidx/media3/session/d1;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v2, p0, Landroidx/media3/session/MediaSessionImpl;->q:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Landroidx/media3/session/MediaSessionImpl;->A:J

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {v2}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    invoke-virtual {p0}, Landroidx/media3/session/PlayerWrapper;->m()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final x()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    const-string p0, "Player callback method is called from a wrong thread. See javadoc of MediaSession for details."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void
.end method
