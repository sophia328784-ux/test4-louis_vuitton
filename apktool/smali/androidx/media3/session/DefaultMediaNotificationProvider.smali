.class public Landroidx/media3/session/DefaultMediaNotificationProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media3/session/MediaNotification$Provider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/session/DefaultMediaNotificationProvider$Builder;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;,
        Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;
    }
.end annotation


# static fields
.field public static final j:Lcom/google/common/base/Supplier;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Landroid/app/NotificationManager;

.field public f:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

.field public final g:I

.field public h:Landroidx/media3/common/util/BitmapLoader;

.field public i:Landroidx/media3/session/CacheBitmapLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lur;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lur;-><init>(I)V

    invoke-static {v0}, Lcom/google/common/base/Suppliers;->a(Lcom/google/common/base/Supplier;)Lcom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Landroidx/media3/session/DefaultMediaNotificationProvider;->j:Lcom/google/common/base/Supplier;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 30
    new-instance v0, Los;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Los;-><init>(I)V

    const-string v1, "default_channel_id"

    const v2, 0x7f1406f2

    invoke-direct {p0, p1, v0, v1, v2}, Landroidx/media3/session/DefaultMediaNotificationProvider;-><init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->a:Landroid/content/Context;

    iput-object p2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->b:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    iput-object p3, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->c:Ljava/lang/String;

    iput p4, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->d:I

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->e:Landroid/app/NotificationManager;

    const p1, 0x7f08031e

    iput p1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->g:I

    return-void
.end method


# virtual methods
.method public final a()Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;
    .locals 3

    new-instance v0, Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;

    iget-object v1, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->a:Landroid/content/Context;

    iget v2, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->d:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Landroidx/media3/session/DefaultMediaNotificationProvider;->c:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroidx/media3/session/MediaNotification$Provider$NotificationChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Landroidx/media3/session/MediaSession;Lcom/google/common/collect/ImmutableList;Landroidx/media3/session/MediaNotification$ActionFactory;Landroidx/media3/session/n;)Landroidx/media3/session/MediaNotification;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->d:I

    iget-object v4, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v5, Landroidx/media3/common/util/Util;->a:Ljava/lang/String;

    iget-object v5, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->e:Landroid/app/NotificationManager;

    iget-object v6, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v7

    const/4 v8, 0x2

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v7, Landroid/app/NotificationChannel;

    invoke-direct {v7, v6, v0, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :goto_0
    invoke-virtual {v2}, Landroidx/media3/session/MediaSession;->a()Landroidx/media3/common/Player;

    move-result-object v5

    new-instance v7, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v7, v4, v6}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->b:Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;

    invoke-interface {v0}, Landroidx/media3/session/DefaultMediaNotificationProvider$NotificationIdProvider;->b()V

    new-instance v6, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;

    invoke-direct {v6, v2}, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;-><init>(Landroidx/media3/session/MediaSession;)V

    invoke-interface {v5}, Landroidx/media3/common/Player;->i0()Landroidx/media3/common/Player$Commands;

    move-result-object v0

    iget-object v9, v2, Landroidx/media3/session/MediaSession;->a:Landroidx/media3/session/MediaSessionImpl;

    iget-boolean v10, v9, Landroidx/media3/session/MediaSessionImpl;->p:Z

    invoke-static {v5, v10}, Landroidx/media3/common/util/Util;->b0(Landroidx/media3/common/Player;Z)Z

    move-result v10

    const/4 v11, 0x1

    const/16 v12, 0x9

    move-object/from16 v13, p2

    invoke-static {v13, v11, v11, v12}, Landroidx/media3/session/CommandButton;->j(Ljava/util/List;ZZI)Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    invoke-static {v8, v13}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result v14

    const/4 v15, 0x3

    invoke-static {v15, v13}, Landroidx/media3/session/CommandButton;->c(ILjava/util/List;)Z

    move-result v16

    new-instance v8, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v8}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    const/4 v15, 0x0

    if-eqz v14, :cond_1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/media3/session/CommandButton;

    invoke-virtual {v8, v14}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    move v12, v11

    goto :goto_1

    :cond_1
    const/4 v14, 0x7

    const/4 v15, 0x6

    filled-new-array {v14, v15}, [I

    move-result-object v14

    iget-object v12, v0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v12, v14}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Landroidx/media3/session/CommandButton$Builder;

    const v14, 0xe045

    invoke-direct {v12, v14}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    invoke-virtual {v12, v15}, Landroidx/media3/session/CommandButton$Builder;->c(I)V

    const v14, 0x7f140c25

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {v12}, Landroidx/media3/session/CommandButton$Builder;->a()Landroidx/media3/session/CommandButton;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v0, v11}, Landroidx/media3/common/Player$Commands;->a(I)Z

    move-result v14

    if-eqz v14, :cond_4

    if-nez v10, :cond_3

    new-instance v10, Landroidx/media3/session/CommandButton$Builder;

    const v14, 0xe034

    invoke-direct {v10, v14}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    invoke-virtual {v10, v11}, Landroidx/media3/session/CommandButton$Builder;->c(I)V

    const v14, 0x7f140c20

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroidx/media3/session/CommandButton$Builder;->a()Landroidx/media3/session/CommandButton;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance v10, Landroidx/media3/session/CommandButton$Builder;

    const v14, 0xe037

    invoke-direct {v10, v14}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    invoke-virtual {v10, v11}, Landroidx/media3/session/CommandButton$Builder;->c(I)V

    const v14, 0x7f140c21

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v10, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Landroidx/media3/session/CommandButton$Builder;->a()Landroidx/media3/session/CommandButton;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :cond_4
    :goto_2
    const/16 v10, 0x8

    if-eqz v16, :cond_5

    add-int/lit8 v0, v12, 0x1

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/media3/session/CommandButton;

    invoke-virtual {v8, v12}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    move v12, v0

    goto :goto_3

    :cond_5
    const/16 v14, 0x9

    filled-new-array {v14, v10}, [I

    move-result-object v14

    iget-object v0, v0, Landroidx/media3/common/Player$Commands;->a:Landroidx/media3/common/FlagSet;

    invoke-virtual {v0, v14}, Landroidx/media3/common/FlagSet;->a([I)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/media3/session/CommandButton$Builder;

    const v14, 0xe044

    invoke-direct {v0, v14}, Landroidx/media3/session/CommandButton$Builder;-><init>(I)V

    invoke-virtual {v0, v10}, Landroidx/media3/session/CommandButton$Builder;->c(I)V

    const v14, 0x7f140c24

    invoke-virtual {v4, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Landroidx/media3/session/CommandButton$Builder;->f:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroidx/media3/session/CommandButton$Builder;->a()Landroidx/media3/session/CommandButton;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    :cond_6
    :goto_3
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ge v12, v0, :cond_7

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/session/CommandButton;

    invoke-virtual {v8, v0}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual {v8}, Lcom/google/common/collect/ImmutableList$Builder;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v8, 0x3

    new-array v12, v8, [I

    new-array v13, v8, [I

    const/4 v8, -0x1

    invoke-static {v12, v8}, Ljava/util/Arrays;->fill([II)V

    invoke-static {v13, v8}, Ljava/util/Arrays;->fill([II)V

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-ge v14, v10, :cond_e

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/media3/session/CommandButton;

    iget-object v11, v10, Landroidx/media3/session/CommandButton;->a:Landroidx/media3/session/SessionCommand;

    iget v8, v10, Landroidx/media3/session/CommandButton;->b:I

    move-object/from16 v17, v0

    iget-object v0, v10, Landroidx/media3/session/CommandButton;->h:Lcom/google/common/primitives/ImmutableIntArray;

    if-eqz v11, :cond_8

    invoke-interface {v3, v2, v10}, Landroidx/media3/session/MediaNotification$ActionFactory;->c(Landroidx/media3/session/MediaSession;Landroidx/media3/session/CommandButton;)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    move-object/from16 v18, v4

    move-object/from16 v19, v13

    goto :goto_6

    :cond_8
    const/4 v11, -0x1

    if-eq v8, v11, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    invoke-static {v11}, Lcom/google/common/base/Preconditions;->q(Z)V

    iget v11, v10, Landroidx/media3/session/CommandButton;->d:I

    sget-object v18, Landroidx/core/graphics/drawable/IconCompat;->k:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v19, v13

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static {v4, v13, v11}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    iget-object v11, v10, Landroidx/media3/session/CommandButton;->f:Ljava/lang/CharSequence;

    invoke-interface {v3, v2, v4, v11, v8}, Landroidx/media3/session/MediaNotification$ActionFactory;->a(Landroidx/media3/session/MediaSession;Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;I)Landroidx/core/app/NotificationCompat$Action;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    :goto_6
    iget-object v4, v10, Landroidx/media3/session/CommandButton;->g:Landroid/os/Bundle;

    const-string v8, "androidx.media3.session.command.COMPACT_VIEW_INDEX"

    const/4 v11, -0x1

    invoke-virtual {v4, v8, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_a

    const/4 v8, 0x3

    if-ge v4, v8, :cond_a

    aput v14, v12, v4

    const/4 v8, 0x3

    const/4 v15, 0x1

    goto :goto_8

    :cond_a
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/google/common/primitives/ImmutableIntArray;->b(I)I

    move-result v8

    const/4 v10, 0x2

    if-ne v8, v10, :cond_b

    aput v14, v19, v4

    :goto_7
    const/4 v8, 0x3

    goto :goto_8

    :cond_b
    invoke-virtual {v0, v4}, Lcom/google/common/primitives/ImmutableIntArray;->b(I)I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_c

    aput v14, v19, v11

    goto :goto_7

    :cond_c
    invoke-virtual {v0, v4}, Lcom/google/common/primitives/ImmutableIntArray;->b(I)I

    move-result v0

    const/4 v8, 0x3

    if-ne v0, v8, :cond_d

    aput v14, v19, v10

    :cond_d
    :goto_8
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v17

    move-object/from16 v4, v18

    move-object/from16 v13, v19

    const/4 v8, -0x1

    const/4 v11, 0x1

    goto/16 :goto_4

    :cond_e
    move-object/from16 v19, v13

    const/4 v8, 0x3

    if-nez v15, :cond_10

    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v8, :cond_10

    aget v8, v19, v4

    const/4 v11, -0x1

    if-ne v8, v11, :cond_f

    goto :goto_a

    :cond_f
    aput v8, v12, v0

    add-int/lit8 v0, v0, 0x1

    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/4 v8, 0x3

    goto :goto_9

    :cond_10
    const/4 v4, 0x0

    const/4 v8, 0x3

    :goto_b
    if-ge v4, v8, :cond_12

    aget v0, v12, v4

    const/4 v11, -0x1

    if-ne v0, v11, :cond_11

    invoke-static {v12, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v12

    goto :goto_c

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_12
    :goto_c
    iput-object v12, v6, Landroidx/media3/session/MediaStyleNotificationHelper$MediaStyle;->f:[I

    const/16 v0, 0x12

    invoke-interface {v5, v0}, Landroidx/media3/common/Player;->R0(I)Z

    move-result v0

    const/16 v4, 0x3e9

    if-eqz v0, :cond_17

    invoke-interface {v5}, Landroidx/media3/common/Player;->A()Landroidx/media3/common/MediaMetadata;

    move-result-object v0

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->a:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    iget-object v8, v0, Landroidx/media3/common/MediaMetadata;->b:Ljava/lang/CharSequence;

    invoke-static {v8}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    iget-object v8, v9, Landroidx/media3/session/MediaSessionImpl;->m:Landroidx/media3/common/util/BitmapLoader;

    iget-object v10, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->i:Landroidx/media3/session/CacheBitmapLoader;

    if-eqz v10, :cond_14

    iget-object v10, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->h:Landroidx/media3/common/util/BitmapLoader;

    invoke-virtual {v8, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto :goto_d

    :cond_13
    const/4 v13, 0x1

    goto :goto_e

    :cond_14
    :goto_d
    iput-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->h:Landroidx/media3/common/util/BitmapLoader;

    new-instance v10, Landroidx/media3/session/CacheBitmapLoader;

    new-instance v11, Landroidx/media3/session/SizeLimitedBitmapLoader;

    sget-object v12, Landroidx/media3/session/DefaultMediaNotificationProvider;->j:Lcom/google/common/base/Supplier;

    invoke-interface {v12}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x1

    invoke-direct {v11, v8, v12, v13}, Landroidx/media3/session/SizeLimitedBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;IZ)V

    invoke-direct {v10, v11}, Landroidx/media3/session/CacheBitmapLoader;-><init>(Landroidx/media3/common/util/BitmapLoader;)V

    iput-object v10, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->i:Landroidx/media3/session/CacheBitmapLoader;

    :goto_e
    iget-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->i:Landroidx/media3/session/CacheBitmapLoader;

    invoke-virtual {v8, v0}, Landroidx/media3/session/CacheBitmapLoader;->a(Landroidx/media3/common/MediaMetadata;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->f:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    if-eqz v8, :cond_15

    iput-boolean v13, v8, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;->d:Z

    :cond_15
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v8

    if-eqz v8, :cond_16

    :try_start_0
    invoke-static {v0}, Lcom/google/common/util/concurrent/Futures;->d(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v7, v0}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Failed to load bitmap: "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Log;->g(Ljava/lang/String;)V

    goto :goto_f

    :cond_16
    new-instance v8, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    move-object/from16 v10, p4

    invoke-direct {v8, v4, v7, v10}, Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;-><init>(ILandroidx/core/app/NotificationCompat$Builder;Landroidx/media3/session/MediaNotification$Provider$Callback;)V

    iput-object v8, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->f:Landroidx/media3/session/DefaultMediaNotificationProvider$OnBitmapLoadedFutureCallback;

    iget-object v10, v9, Landroidx/media3/session/MediaSessionImpl;->l:Landroid/os/Handler;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v11, Ldc;

    const/4 v13, 0x1

    invoke-direct {v11, v10, v13}, Ldc;-><init>(Ljava/lang/Object;I)V

    invoke-static {v0, v8, v11}, Lcom/google/common/util/concurrent/Futures;->a(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    :cond_17
    :goto_f
    invoke-interface {v5}, Landroidx/media3/common/Player;->isPlaying()Z

    move-result v0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_18

    invoke-interface {v5}, Landroidx/media3/common/Player;->j()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {v5}, Landroidx/media3/common/Player;->S0()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-interface {v5}, Landroidx/media3/common/Player;->a()Landroidx/media3/common/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Landroidx/media3/common/PlaybackParameters;->a:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v8

    if-nez v0, :cond_18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v5}, Landroidx/media3/common/Player;->u()J

    move-result-wide v14

    sub-long/2addr v12, v14

    goto :goto_10

    :cond_18
    move-wide v12, v10

    :goto_10
    cmp-long v0, v12, v10

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_11

    :cond_19
    const/4 v0, 0x0

    :goto_11
    if-eqz v0, :cond_1a

    goto :goto_12

    :cond_1a
    const-wide/16 v12, 0x0

    :goto_12
    iget-object v5, v7, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-wide v12, v5, Landroid/app/Notification;->when:J

    iput-boolean v0, v7, Landroidx/core/app/NotificationCompat$Builder;->n:Z

    iput-boolean v0, v7, Landroidx/core/app/NotificationCompat$Builder;->o:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    const/4 v13, 0x1

    if-lt v0, v8, :cond_1b

    iput v13, v7, Landroidx/core/app/NotificationCompat$Builder;->N:I

    :cond_1b
    iget-object v0, v9, Landroidx/media3/session/MediaSessionImpl;->v:Landroid/app/PendingIntent;

    iput-object v0, v7, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    invoke-interface {v3, v2}, Landroidx/media3/session/MediaNotification$ActionFactory;->b(Landroidx/media3/session/MediaSession;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v5, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v2, 0x8

    invoke-virtual {v7, v2, v13}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iget v0, v1, Landroidx/media3/session/DefaultMediaNotificationProvider;->g:I

    iput v0, v5, Landroid/app/Notification;->icon:I

    invoke-virtual {v7, v6}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    iput v13, v7, Landroidx/core/app/NotificationCompat$Builder;->E:I

    const/4 v1, 0x0

    const/4 v10, 0x2

    invoke-virtual {v7, v10, v1}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const-string v0, "media3_group_key"

    iput-object v0, v7, Landroidx/core/app/NotificationCompat$Builder;->v:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Landroidx/media3/session/MediaNotification;

    invoke-direct {v1, v4, v0}, Landroidx/media3/session/MediaNotification;-><init>(ILandroid/app/Notification;)V

    return-object v1
.end method
