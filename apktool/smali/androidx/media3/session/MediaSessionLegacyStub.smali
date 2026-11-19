.class Landroidx/media3/session/MediaSessionLegacyStub;
.super Landroidx/media3/session/legacy/MediaSessionCompat$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;,
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;,
        Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;,
        Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;,
        Landroidx/media3/session/MediaSessionLegacyStub$Api31;,
        Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;,
        Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;
    }
.end annotation


# static fields
.field public static final z:I


# instance fields
.field public final e:Landroidx/media3/session/ConnectedControllersManager;

.field public final f:Landroidx/media3/session/MediaSessionImpl;

.field public final g:Landroidx/media3/session/legacy/MediaSessionManager;

.field public final h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

.field public final i:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

.field public final j:Z

.field public final k:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

.field public final l:Landroidx/media3/session/legacy/MediaSessionCompat;

.field public final m:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

.field public final n:Landroid/content/ComponentName;

.field public o:Landroidx/media3/session/legacy/VolumeProviderCompat;

.field public final p:Z

.field public volatile q:J

.field public r:Lcom/google/common/util/concurrent/FutureCallback;

.field public s:I

.field public t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

.field public final u:Landroid/os/Bundle;

.field public v:Lcom/google/common/collect/ImmutableList;

.field public w:Lcom/google/common/collect/ImmutableList;

.field public x:Landroidx/media3/session/SessionCommands;

.field public y:Landroidx/media3/common/Player$Commands;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    return-void
.end method

.method public constructor <init>(Landroidx/media3/session/MediaSessionImpl;Landroid/net/Uri;Landroid/os/Handler;Landroid/os/Bundle;ZLcom/google/common/collect/ImmutableList;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;Landroid/os/Bundle;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/session/MediaSessionImpl;",
            "Landroid/net/Uri;",
            "Landroid/os/Handler;",
            "Landroid/os/Bundle;",
            "Z",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Landroidx/media3/session/CommandButton;",
            ">;",
            "Landroidx/media3/session/SessionCommands;",
            "Landroidx/media3/common/Player$Commands;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Landroidx/media3/session/legacy/MediaSessionCompat$Callback;-><init>()V

    iput-object v1, v0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    move/from16 v2, p5

    iput-boolean v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->p:Z

    move-object/from16 v2, p6

    iput-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v2, p7

    iput-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    move-object/from16 v3, p8

    iput-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->x:Landroidx/media3/session/SessionCommands;

    move-object/from16 v3, p9

    iput-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    new-instance v3, Landroid/os/Bundle;

    move-object/from16 v4, p10

    invoke-direct {v3, v4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v3, v0, Landroidx/media3/session/MediaSessionLegacyStub;->u:Landroid/os/Bundle;

    iget-object v3, v1, Landroidx/media3/session/MediaSessionImpl;->f:Landroid/content/Context;

    invoke-static {v3}, Landroidx/media3/session/legacy/MediaSessionManager;->a(Landroid/content/Context;)Landroidx/media3/session/legacy/MediaSessionManager;

    move-result-object v4

    iput-object v4, v0, Landroidx/media3/session/MediaSessionLegacyStub;->g:Landroidx/media3/session/legacy/MediaSessionManager;

    new-instance v4, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    invoke-direct {v4, v0}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iput-object v4, v0, Landroidx/media3/session/MediaSessionLegacyStub;->h:Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCbForBroadcast;

    new-instance v4, Landroidx/media3/session/ConnectedControllersManager;

    invoke-direct {v4, v1}, Landroidx/media3/session/ConnectedControllersManager;-><init>(Landroidx/media3/session/MediaSessionImpl;)V

    iput-object v4, v0, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    const-wide/32 v5, 0x493e0

    iput-wide v5, v0, Landroidx/media3/session/MediaSessionLegacyStub;->q:J

    new-instance v5, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    iget-object v6, v1, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;-><init>(Landroid/os/Looper;Landroidx/media3/session/ConnectedControllersManager;)V

    iput-object v5, v0, Landroidx/media3/session/MediaSessionLegacyStub;->i:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x21

    if-ge v4, v7, :cond_1

    :cond_0
    :goto_0
    move v8, v6

    goto :goto_1

    :cond_1
    sget-object v8, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.type.automotive"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_0

    :cond_2
    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v9, "Google"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "motorola"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "vivo"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "Sony"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "Nothing"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "unknown"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_3
    move v8, v5

    :goto_1
    iput-boolean v8, v0, Landroidx/media3/session/MediaSessionLegacyStub;->j:Z

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionLegacyStub;->I()V

    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v9, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v11, 0x0

    if-ne v9, v5, :cond_5

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    new-instance v9, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v12, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v9, v11

    :goto_2
    iput-object v9, v0, Landroidx/media3/session/MediaSessionLegacyStub;->n:Landroid/content/ComponentName;

    const/16 v2, 0x1f

    if-eqz v9, :cond_7

    if-ge v4, v2, :cond_6

    goto :goto_3

    :cond_6
    move v13, v6

    move-object v12, v9

    goto :goto_4

    :cond_7
    :goto_3
    const-string v12, "androidx.media3.session.MediaLibraryService"

    invoke-static {v3, v12}, Landroidx/media3/session/MediaSessionLegacyStub;->F(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    if-nez v12, :cond_8

    const-string v12, "androidx.media3.session.MediaSessionService"

    invoke-static {v3, v12}, Landroidx/media3/session/MediaSessionLegacyStub;->F(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    :cond_8
    if-eqz v12, :cond_9

    invoke-virtual {v12, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move v13, v5

    goto :goto_4

    :cond_9
    move v13, v6

    :goto_4
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v15, p2

    invoke-direct {v14, v10, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-nez v12, :cond_b

    new-instance v12, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    invoke-direct {v12, v0}, Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;)V

    iput-object v12, v0, Landroidx/media3/session/MediaSessionLegacyStub;->m:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    sget-object v15, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    invoke-virtual {v13, v10}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    if-ge v4, v7, :cond_a

    invoke-virtual {v3, v12, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_5

    :cond_a
    const/4 v7, 0x4

    invoke-virtual {v3, v12, v13, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    :goto_5
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v7, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    invoke-static {v3, v6, v14, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v12, v3, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :cond_b
    invoke-virtual {v14, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v13, :cond_c

    sget v7, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    invoke-static {v3, v6, v14, v7}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_6

    :cond_c
    sget v7, Landroidx/media3/session/MediaSessionLegacyStub;->z:I

    invoke-static {v3, v6, v14, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    :goto_6
    iput-object v11, v0, Landroidx/media3/session/MediaSessionLegacyStub;->m:Landroidx/media3/session/MediaSessionLegacyStub$MediaButtonReceiver;

    :goto_7
    const-string v7, "androidx.media3.session.id"

    iget-object v10, v1, Landroidx/media3/session/MediaSessionImpl;->i:Ljava/lang/String;

    filled-new-array {v7, v10}, [Ljava/lang/String;

    move-result-object v7

    const-string v10, "."

    invoke-static {v10, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Landroidx/media3/session/legacy/MediaSessionCompat;

    if-ge v4, v2, :cond_d

    goto :goto_8

    :cond_d
    move-object v12, v11

    :goto_8
    if-ge v4, v2, :cond_e

    move-object/from16 p9, v6

    :goto_9
    move-object/from16 p10, p4

    move-object/from16 p6, v3

    move-object/from16 p7, v7

    move-object/from16 p5, v10

    move-object/from16 p8, v12

    goto :goto_a

    :cond_e
    move-object/from16 p9, v11

    goto :goto_9

    :goto_a
    invoke-direct/range {p5 .. p10}, Landroidx/media3/session/legacy/MediaSessionCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    move-object/from16 v6, p5

    move-object/from16 v3, p6

    iput-object v6, v0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    if-lt v4, v2, :cond_f

    if-eqz v9, :cond_f

    invoke-static {v6, v9}, Landroidx/media3/session/MediaSessionLegacyStub$Api31;->a(Landroidx/media3/session/legacy/MediaSessionCompat;Landroid/content/ComponentName;)V

    :cond_f
    iget-object v1, v1, Landroidx/media3/session/MediaSessionImpl;->v:Landroid/app/PendingIntent;

    if-eqz v1, :cond_10

    invoke-virtual {v6, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->t(Landroid/app/PendingIntent;)V

    :cond_10
    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->h(Landroidx/media3/session/legacy/MediaSessionCompat$Callback;Landroid/os/Handler;)V

    if-eqz v8, :cond_11

    new-instance v11, Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    new-instance v1, Landroidx/media3/session/m1;

    invoke-direct {v1, v0, v5}, Landroidx/media3/session/m1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-direct {v11, v3, v1}, Landroidx/media3/session/AndroidAutoConnectionStateObserver;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_11
    iput-object v11, v0, Landroidx/media3/session/MediaSessionLegacyStub;->k:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    return-void

    :cond_12
    const-string v0, "Expected 1 broadcast receiver that handles android.intent.action.MEDIA_BUTTON, found "

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, v0}, Lr81;->c(ILjava/lang/String;)V

    throw v11
.end method

.method public static B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;
    .locals 1

    new-instance v0, Landroidx/media3/common/MediaItem$Builder;

    invoke-direct {v0}, Landroidx/media3/common/MediaItem$Builder;-><init>()V

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    iput-object p1, v0, Landroidx/media3/common/MediaItem$Builder;->a:Ljava/lang/String;

    new-instance p1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;

    invoke-direct {p1}, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;-><init>()V

    iput-object p0, p1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->a:Landroid/net/Uri;

    iput-object p3, p1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->b:Ljava/lang/String;

    iput-object p2, p1, Landroidx/media3/common/MediaItem$RequestMetadata$Builder;->c:Landroid/os/Bundle;

    new-instance p0, Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-direct {p0, p1}, Landroidx/media3/common/MediaItem$RequestMetadata;-><init>(Landroidx/media3/common/MediaItem$RequestMetadata$Builder;)V

    iput-object p0, v0, Landroidx/media3/common/MediaItem$Builder;->n:Landroidx/media3/common/MediaItem$RequestMetadata;

    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$Builder;->a()Landroidx/media3/common/MediaItem;

    move-result-object p0

    return-object p0
.end method

.method public static F(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    new-instance p1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final A()V
    .locals 4

    new-instance v0, Landroidx/media3/session/h1;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final C(Landroidx/media3/session/PlayerWrapper;)Landroidx/media3/session/legacy/PlaybackStateCompat;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->t:Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;

    const/4 v3, 0x0

    const/4 v4, 0x7

    iget-object v5, v0, Landroidx/media3/session/MediaSessionLegacyStub;->u:Landroid/os/Bundle;

    const-wide/16 v6, -0x1

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_0

    iget-object v10, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->d:Landroid/os/Bundle;

    iget-boolean v11, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->a:Z

    if-eqz v11, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    new-instance v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iput v4, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    iput-wide v6, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    iput-wide v11, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    iput v3, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    iput-wide v8, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->f:J

    iput-wide v8, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->d:J

    iput-object v0, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->k:Landroid/os/Bundle;

    iget v0, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->b:I

    iget-object v2, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v0, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->g:I

    iput-object v2, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->h:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->k:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->e()Landroidx/media3/common/PlaybackException;

    move-result-object v10

    const/16 v11, 0x10

    invoke-virtual {v1, v11}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v11

    const/4 v13, 0x1

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->V0()Z

    move-result v11

    if-nez v11, :cond_1

    move v11, v13

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    :goto_0
    if-nez v10, :cond_3

    iget-boolean v14, v0, Landroidx/media3/session/MediaSessionLegacyStub;->p:Z

    invoke-static {v1, v14}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v14, v13

    :goto_2
    const/4 v15, 0x2

    const/4 v3, 0x3

    if-eqz v10, :cond_4

    goto :goto_4

    :cond_4
    sget-object v16, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->e()Landroidx/media3/common/PlaybackException;

    move-result-object v16

    if-eqz v16, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->h()I

    move-result v4

    if-eq v4, v13, :cond_b

    if-eq v4, v15, :cond_9

    if-eq v4, v3, :cond_7

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    move v4, v13

    goto :goto_4

    :cond_6
    const-string v0, "Unrecognized State: "

    invoke-static {v4, v0}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_7
    if-eqz v14, :cond_8

    :goto_3
    move v4, v15

    goto :goto_4

    :cond_8
    move v4, v3

    goto :goto_4

    :cond_9
    if-eqz v14, :cond_a

    goto :goto_3

    :cond_a
    const/4 v4, 0x6

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v6

    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    invoke-static {v7, v6}, Landroidx/media3/session/MediaUtils;->d(Landroidx/media3/common/Player$Commands;Landroidx/media3/common/Player$Commands;)Landroidx/media3/common/Player$Commands;

    move-result-object v6

    const-wide/16 v18, 0x80

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v6, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    iget-object v8, v8, Landroidx/media3/common/FlagSet;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8}, Landroid/util/SparseBooleanArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    iget-object v8, v6, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v8, v7}, Landroidx/media3/common/FlagSet;->b(I)I

    move-result v8

    if-eq v8, v13, :cond_f

    if-eq v8, v15, :cond_e

    if-eq v8, v3, :cond_d

    const/16 v9, 0x1f

    if-eq v8, v9, :cond_c

    packed-switch v8, :pswitch_data_0

    const-wide/16 v8, 0x0

    goto :goto_6

    :pswitch_0
    const-wide/32 v8, 0x40000

    goto :goto_6

    :pswitch_1
    const-wide/32 v8, 0x280000

    goto :goto_6

    :pswitch_2
    const-wide/32 v8, 0x400000

    goto :goto_6

    :pswitch_3
    const-wide/16 v8, 0x40

    goto :goto_6

    :pswitch_4
    const-wide/16 v8, 0x8

    goto :goto_6

    :pswitch_5
    const-wide/16 v8, 0x1000

    goto :goto_6

    :pswitch_6
    const-wide/16 v8, 0x20

    goto :goto_6

    :pswitch_7
    const-wide/16 v8, 0x10

    goto :goto_6

    :pswitch_8
    const-wide/16 v8, 0x100

    goto :goto_6

    :cond_c
    const-wide/32 v8, 0x3ac00

    goto :goto_6

    :cond_d
    const-wide/16 v8, 0x1

    goto :goto_6

    :cond_e
    const-wide/16 v8, 0x4000

    goto :goto_6

    :cond_f
    if-eqz v14, :cond_10

    const-wide/16 v8, 0x204

    goto :goto_6

    :cond_10
    const-wide/16 v8, 0x202

    :goto_6
    or-long v18, v18, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_11
    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-static {v15, v7}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_12

    const-wide/16 v7, -0x11

    and-long v18, v18, v7

    :cond_12
    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v7}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_13

    iget-object v7, v0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-static {v3, v7}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-wide/16 v7, -0x21

    and-long v18, v18, v7

    :cond_13
    if-nez v11, :cond_14

    const-wide/16 v7, -0x101

    and-long v18, v18, v7

    :cond_14
    move-wide/from16 v7, v18

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v3

    const/4 v9, -0x1

    if-eqz v3, :cond_16

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->v()I

    move-result v3

    sget-object v14, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    if-ne v3, v9, :cond_15

    goto :goto_7

    :cond_15
    int-to-long v14, v3

    goto :goto_8

    :cond_16
    :goto_7
    const-wide/16 v14, -0x1

    :goto_8
    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v3

    iget v3, v3, Landroidx/media3/common/PlaybackParameters;->a:F

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->isPlaying()Z

    move-result v18

    if-eqz v18, :cond_17

    if-eqz v11, :cond_17

    move v12, v3

    goto :goto_9

    :cond_17
    const/4 v12, 0x0

    :goto_9
    new-instance v13, Landroid/os/Bundle;

    if-eqz v10, :cond_18

    iget-object v9, v10, Landroidx/media3/common/PlaybackException;->d:Landroid/os/Bundle;

    invoke-direct {v13, v9}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_a

    :cond_18
    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    :goto_a
    if-nez v10, :cond_19

    if-eqz v2, :cond_19

    iget-object v9, v2, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->d:Landroid/os/Bundle;

    invoke-virtual {v13, v9}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_19
    invoke-virtual {v13, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const-string v5, "EXO_SPEED"

    invoke-virtual {v13, v5, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->Y0()Landroidx/media3/common/MediaItem;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v3, v3, Landroidx/media3/common/MediaItem;->a:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v5, "androidx.media.PlaybackStateCompat.Extras.KEY_MEDIA_ID"

    invoke-virtual {v13, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    if-eqz v11, :cond_1b

    invoke-virtual {v1}, Landroidx/media3/session/PlayerWrapper;->getCurrentPosition()J

    move-result-wide v20

    move-object v3, v2

    move-wide/from16 v1, v20

    goto :goto_b

    :cond_1b
    move-object v3, v2

    const-wide/16 v1, -0x1

    :goto_b
    if-eqz v11, :cond_1c

    invoke-virtual/range {p1 .. p1}, Landroidx/media3/session/PlayerWrapper;->B0()J

    move-result-wide v16

    move-object v5, v10

    move-wide/from16 v9, v16

    goto :goto_c

    :cond_1c
    move-object v5, v10

    const-wide/16 v9, -0x1

    :goto_c
    new-instance v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;

    invoke-direct {v11}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;-><init>()V

    move-object/from16 p1, v5

    move-object/from16 v16, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput v4, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->b:I

    iput-wide v1, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->c:J

    iput-wide v5, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->i:J

    iput v12, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->e:F

    iput-wide v7, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->f:J

    iput-wide v14, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->j:J

    iput-wide v9, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->d:J

    iput-object v13, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->k:Landroid/os/Bundle;

    const/4 v1, 0x0

    :goto_d
    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    iget-object v2, v0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/session/CommandButton;

    iget-object v4, v2, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    iget-object v5, v2, Landroidx/media3/session/CommandButton;->e:Landroid/net/Uri;

    iget v6, v2, Landroidx/media3/session/CommandButton;->c:I

    iget-object v7, v2, Landroidx/media3/session/CommandButton;->g:Landroid/os/Bundle;

    if-eqz v4, :cond_27

    iget-object v8, v4, Landroidx/media3/session/SessionCommand;->c:Landroid/os/Bundle;

    iget-object v9, v4, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    iget-boolean v10, v2, Landroidx/media3/session/CommandButton;->i:Z

    if-eqz v10, :cond_27

    iget v10, v4, Landroidx/media3/session/SessionCommand;->a:I

    if-nez v10, :cond_27

    iget-object v10, v0, Landroidx/media3/session/MediaSessionLegacyStub;->x:Landroidx/media3/session/SessionCommands;

    if-eqz v4, :cond_1e

    iget-object v10, v10, Landroidx/media3/session/SessionCommands;->a:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v10, v4}, Lcom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_e

    :cond_1d
    move-object/from16 v12, v16

    const/4 v10, -0x1

    goto :goto_f

    :cond_1e
    :goto_e
    iget v4, v2, Landroidx/media3/session/CommandButton;->b:I

    const/4 v10, -0x1

    move-object/from16 v12, v16

    if-eq v4, v10, :cond_1f

    invoke-virtual {v12, v4}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_f

    :cond_1f
    invoke-static {v9}, Landroidx/media3/session/CommandButton;->n(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    :goto_f
    if-eqz v6, :cond_20

    const/4 v4, 0x1

    goto :goto_10

    :cond_20
    const/4 v4, 0x0

    :goto_10
    if-eqz v5, :cond_21

    const/4 v13, 0x1

    goto :goto_11

    :cond_21
    const/4 v13, 0x0

    :goto_11
    if-nez v4, :cond_22

    if-nez v13, :cond_22

    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_23

    :cond_22
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14, v8}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v8, v14

    :cond_23
    invoke-virtual {v7}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_24

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_24
    if-eqz v4, :cond_25

    const-string v4, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_COMPAT"

    invoke-virtual {v8, v4, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_25
    if-eqz v13, :cond_26

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "androidx.media3.session.EXTRAS_KEY_COMMAND_BUTTON_ICON_URI_COMPAT"

    invoke-virtual {v8, v5, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    new-instance v4, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;

    iget-object v5, v2, Landroidx/media3/session/CommandButton;->f:Ljava/lang/CharSequence;

    iget v2, v2, Landroidx/media3/session/CommandButton;->d:I

    invoke-direct {v4, v9, v5, v2}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v2, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;

    iget-object v5, v4, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->b:Ljava/lang/CharSequence;

    iget v6, v4, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->c:I

    iget-object v4, v4, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction$Builder;->a:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v8}, Landroidx/media3/session/legacy/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    iget-object v4, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_27
    move-object/from16 v12, v16

    const/4 v10, -0x1

    :cond_28
    :goto_12
    add-int/lit8 v1, v1, 0x1

    move-object/from16 v16, v12

    goto/16 :goto_d

    :cond_29
    if-eqz p1, :cond_2a

    sget-object v0, Landroidx/media3/session/LegacyConversions;->a:Lcom/google/common/collect/ImmutableSet;

    move-object/from16 v5, p1

    iget v0, v5, Landroidx/media3/common/PlaybackException;->b:I

    invoke-static {v0}, Landroidx/media3/session/LegacyConversions;->g(I)I

    move-result v0

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput v0, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->g:I

    iput-object v1, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->h:Ljava/lang/CharSequence;

    goto :goto_13

    :cond_2a
    if-eqz v3, :cond_2b

    iget v0, v3, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->b:I

    iget-object v1, v3, Landroidx/media3/session/MediaSessionLegacyStub$LegacyError;->c:Ljava/lang/String;

    iput v0, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->g:I

    iput-object v1, v11, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->h:Ljava/lang/CharSequence;

    :cond_2b
    :goto_13
    invoke-virtual {v11}, Landroidx/media3/session/legacy/PlaybackStateCompat$Builder;->a()Landroidx/media3/session/legacy/PlaybackStateCompat;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {v0}, Landroidx/media3/session/MediaSessionImpl;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "RemoteUserInfo is null, ignoring command="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->b(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/l1;

    move-object v2, p0

    move v3, p1

    move-object v5, p2

    move-object v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/l1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;Z)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final E(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/l0;

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Landroidx/media3/session/l0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Landroidx/media3/session/MediaSessionLegacyStub$SessionTask;)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final G(Landroidx/media3/common/MediaItem;ZZ)V
    .locals 1

    new-instance v0, Landroidx/media3/session/g1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/session/g1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/MediaItem;ZZ)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    const/16 p3, 0x1f

    invoke-virtual {p0, p3, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final H(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Landroidx/media3/session/MediaSession$ControllerInfo;
    .locals 8

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/ConnectedControllersManager;->g(Ljava/lang/Object;)Landroidx/media3/session/MediaSession$ControllerInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v6, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;

    invoke-direct {v6, p1}, Landroidx/media3/session/MediaSessionLegacyStub$ControllerLegacyCb;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    new-instance v1, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->g:Landroidx/media3/session/legacy/MediaSessionManager;

    invoke-virtual {v0, p1}, Landroidx/media3/session/legacy/MediaSessionManager;->b(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)Z

    move-result v5

    sget-object v7, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p1, v1}, Landroidx/media3/session/MediaSessionImpl;->n(Landroidx/media3/session/MediaSession$ControllerInfo;)Landroidx/media3/session/MediaSession$ConnectionResult;

    move-result-object p1

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->e:Landroidx/media3/session/ConnectedControllersManager;

    iget-object v3, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->a:Landroidx/media3/session/SessionCommands;

    iget-object p1, p1, Landroidx/media3/session/MediaSession$ConnectionResult;->b:Landroidx/media3/common/Player$Commands;

    invoke-virtual {v0, v2, v1, v3, p1}, Landroidx/media3/session/ConnectedControllersManager;->a(Ljava/lang/Object;Landroidx/media3/session/MediaSession$ControllerInfo;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-boolean v0, p1, Landroidx/media3/session/MediaSessionImpl;->B:Z

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroidx/media3/session/MediaSessionImpl;->l(Landroidx/media3/session/MediaSession$ControllerInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->e:Landroidx/media3/session/MediaSession$Callback;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    move-object v0, v1

    :cond_1
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->i:Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;

    iget-wide v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->q:J

    invoke-virtual {p1, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub$ConnectionTimeoutHandler;->disconnectControllerAfterTimeout(Landroidx/media3/session/MediaSession$ControllerInfo;J)V

    return-object v0
.end method

.method public final I()V
    .locals 7

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->w:Lcom/google/common/collect/ImmutableList;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->x:Landroidx/media3/session/SessionCommands;

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->y:Landroidx/media3/common/Player$Commands;

    invoke-static {v0, v1, v2}, Landroidx/media3/session/CommandButton;->g(Ljava/util/List;Landroidx/media3/session/SessionCommands;Landroidx/media3/common/Player$Commands;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x1

    invoke-static {v0, v2, v2, v1}, Landroidx/media3/session/CommandButton;->j(Ljava/util/List;ZZI)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    iget-boolean v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->j:Z

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    const-string v3, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v4, 0x2

    iget-object v5, p0, Landroidx/media3/session/MediaSessionLegacyStub;->u:Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->k:Landroidx/media3/session/AndroidAutoConnectionStateObserver;

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/media3/session/AndroidAutoConnectionStateObserver;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-static {v4, v0}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {v5, v3, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x3

    invoke-static {v0, p0}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {v5, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void

    :cond_2
    :goto_1
    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v6, 0x0

    if-nez v0, :cond_3

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->v:Lcom/google/common/collect/ImmutableList;

    invoke-static {v4, p0}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    invoke-virtual {v5, v3, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final J()V
    .locals 6

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->u:Landroid/os/Bundle;

    const-string v1, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {p0}, Landroidx/media3/session/MediaSessionLegacyStub;->I()V

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v5, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p0, v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->i(Landroid/os/Bundle;)V

    return-void
.end method

.method public final K(Landroidx/media3/session/PlayerWrapper;)V
    .locals 3

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    new-instance v1, Landroidx/media3/session/k1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Landroidx/media3/session/k1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/PlayerWrapper;I)V

    invoke-static {v0, v1}, Landroidx/media3/common/util/Util;->W(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroidx/media3/session/n;

    const/4 v1, 0x3

    const/4 v2, -0x1

    invoke-direct {v0, p0, p1, v2, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    :cond_0
    return-void
.end method

.method public final b(Landroidx/media3/session/legacy/MediaDescriptionCompat;I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroidx/media3/session/n;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/n;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 3

    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "androidx.media3.session.SESSION_COMMAND_REQUEST_SESSION3_TOKEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p0, p0, Landroidx/media3/session/MediaSessionImpl;->j:Landroidx/media3/session/SessionToken;

    invoke-virtual {p0}, Landroidx/media3/session/SessionToken;->b()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3, v1, p0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_1
    new-instance v0, Landroidx/media3/session/SessionCommand;

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-direct {v0, p1, v2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance p1, Landroidx/media3/session/i0;

    invoke-direct {p1, p0, v0, p2, p3}, Landroidx/media3/session/i0;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    iget-object p2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p2}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p2

    invoke-virtual {p0, v0, v1, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->E(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "androidx.media3.session.SESSION_COMMAND_MEDIA3_PLAY_REQUEST"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    new-instance v0, Landroidx/media3/session/SessionCommand;

    invoke-direct {v0, p1, p2}, Landroidx/media3/session/SessionCommand;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p1, v0, Landroidx/media3/session/SessionCommand;->b:Ljava/lang/String;

    invoke-static {p1}, Landroidx/media3/session/CommandButton;->n(Ljava/lang/String;)Z

    move-result v1

    iget-object v2, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    :try_start_0
    invoke-static {v0}, Landroidx/media3/session/CommandButton;->d(Landroidx/media3/session/SessionCommand;)Landroidx/media3/session/CommandButton;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget v0, p2, Landroidx/media3/session/CommandButton;->b:I

    iget-object v1, p2, Landroidx/media3/session/CommandButton;->j:Ljava/lang/Object;

    invoke-virtual {p2}, Landroidx/media3/session/CommandButton;->b()Z

    move-result v4

    if-nez v4, :cond_2

    const-string p0, "Can\'t execute predefined custom command: "

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p2, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    const/4 v4, 0x1

    if-eqz p1, :cond_4

    iget p1, p1, Landroidx/media3/session/SessionCommand;->a:I

    const p2, 0x9c4a

    if-ne p1, p2, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->q(Z)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/media3/common/Rating;

    new-instance p1, Landroidx/media3/session/h1;

    invoke-direct {p1, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;)V

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->E(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void

    :cond_4
    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object p1, p1, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    if-eq v0, v4, :cond_6

    :cond_5
    move p1, v3

    goto :goto_1

    :cond_6
    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroidx/media3/session/PlayerWrapper;->r()Z

    move-result p1

    if-nez p1, :cond_5

    move p1, v4

    goto :goto_1

    :cond_7
    move-object p1, v1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_8

    new-instance p1, Landroidx/media3/session/h1;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p2

    invoke-virtual {p0, v4, p1, p2, v3}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    :cond_8
    const/16 p1, 0x1f

    if-ne v0, p1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v1, Landroidx/media3/common/MediaItem;

    invoke-virtual {p0, v1, v3, v3}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void

    :cond_9
    new-instance p1, Landroidx/media3/session/s;

    const/16 v1, 0x8

    invoke-direct {p1, p0, p2, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2, v4}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    :catch_0
    move-exception p0

    const-string p2, "Failed to convert predefined custom command: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Log;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_a
    new-instance p1, Landroidx/media3/session/h1;

    invoke-direct {p1, p0, v0, p2}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/session/SessionCommand;Landroid/os/Bundle;)V

    invoke-virtual {v2}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p2

    invoke-virtual {p0, v0, v3, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->E(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public final e()V
    .locals 4

    new-instance v0, Landroidx/media3/session/h1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final f(Landroid/content/Intent;)Z
    .locals 7

    new-instance v0, Landroidx/media3/session/MediaSession$ControllerInfo;

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v5, 0x0

    sget-object v6, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Landroidx/media3/session/MediaSession$ControllerInfo;-><init>(Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;IIZLandroidx/media3/session/MediaSession$ControllerCb;Landroid/os/Bundle;)V

    iget-object p0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    invoke-virtual {p0, v0, p1}, Landroidx/media3/session/MediaSessionImpl;->q(Landroidx/media3/session/MediaSession$ControllerInfo;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public final g()V
    .locals 3

    new-instance v0, Landroidx/media3/session/h1;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final h()V
    .locals 4

    new-instance v0, Landroidx/media3/session/h1;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final i(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final j(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final k(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final l()V
    .locals 4

    new-instance v0, Landroidx/media3/session/h1;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final m(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p1, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final n(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final o(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->B(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Landroidx/media3/common/MediaItem;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->G(Landroidx/media3/common/MediaItem;ZZ)V

    return-void
.end method

.method public final p(Landroidx/media3/session/legacy/MediaDescriptionCompat;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/s;

    const/4 v1, 0x7

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x14

    invoke-virtual {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final q()V
    .locals 4

    new-instance v0, Landroidx/media3/session/h1;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    iget-object v1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final r(J)V
    .locals 2

    new-instance v0, Landroidx/media3/session/i1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/i1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;JI)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final s(F)V
    .locals 3

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/z;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/z;-><init>(Ljava/lang/Object;FI)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final t(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/media3/session/MediaSessionLegacyStub;->u(Landroidx/media3/session/legacy/RatingCompat;)V

    return-void
.end method

.method public final u(Landroidx/media3/session/legacy/RatingCompat;)V
    .locals 3

    invoke-static {p1}, Landroidx/media3/session/LegacyConversions;->q(Landroidx/media3/session/legacy/RatingCompat;)Landroidx/media3/common/Rating;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignoring invalid RatingCompat "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Landroidx/media3/session/h1;

    invoke-direct {p1, p0, v0}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;Landroidx/media3/common/Rating;)V

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {v0}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c4a

    invoke-virtual {p0, v1, v2, p1, v0}, Landroidx/media3/session/MediaSessionLegacyStub;->E(Landroidx/media3/session/SessionCommand;ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;)V

    return-void
.end method

.method public final v(I)V
    .locals 3

    new-instance v0, Landroidx/media3/session/j1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/j1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;II)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final w(I)V
    .locals 3

    new-instance v0, Landroidx/media3/session/j1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Landroidx/media3/session/j1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;II)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v0, p1, v1}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final x()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/session/h1;

    const/16 v4, 0xa

    invoke-direct {v0, p0, v4}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/h1;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final y()V
    .locals 5

    iget-object v0, p0, Landroidx/media3/session/MediaSessionLegacyStub;->f:Landroidx/media3/session/MediaSessionImpl;

    iget-object v0, v0, Landroidx/media3/session/MediaSessionImpl;->u:Landroidx/media3/session/PlayerWrapper;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroidx/media3/session/PlayerWrapper;->R0(I)Z

    move-result v0

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    if-eqz v0, :cond_0

    new-instance v0, Landroidx/media3/session/h1;

    const/4 v4, 0x4

    invoke-direct {v0, p0, v4}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/h1;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/h1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;I)V

    invoke-virtual {v3}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v0, v1, v2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method

.method public final z(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/media3/session/i1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/media3/session/i1;-><init>(Landroidx/media3/session/MediaSessionLegacyStub;JI)V

    iget-object p1, p0, Landroidx/media3/session/MediaSessionLegacyStub;->l:Landroidx/media3/session/legacy/MediaSessionCompat;

    invoke-virtual {p1}, Landroidx/media3/session/legacy/MediaSessionCompat;->a()Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0, p1, p2}, Landroidx/media3/session/MediaSessionLegacyStub;->D(ILandroidx/media3/session/MediaSessionLegacyStub$SessionTask;Landroidx/media3/session/legacy/MediaSessionManager$RemoteUserInfo;Z)V

    return-void
.end method
