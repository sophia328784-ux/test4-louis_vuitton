.class public Landroidx/core/app/NotificationCompat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public B:Ljava/lang/String;

.field public C:Landroid/os/Bundle;

.field public D:I

.field public E:I

.field public final F:Landroid/app/Notification;

.field public G:Landroid/widget/RemoteViews;

.field public H:Landroid/widget/RemoteViews;

.field public I:Ljava/lang/String;

.field public final J:I

.field public final K:Ljava/lang/String;

.field public final L:Landroidx/core/content/LocusIdCompat;

.field public final M:J

.field public N:I

.field public final O:Z

.field public final P:Landroidx/core/app/NotificationCompat$BubbleMetadata;

.field public final Q:Landroid/app/Notification;

.field public final R:Z

.field public final S:Landroid/graphics/drawable/Icon;

.field public final T:Ljava/util/ArrayList;

.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public final d:Ljava/util/ArrayList;

.field public e:Ljava/lang/CharSequence;

.field public f:Ljava/lang/CharSequence;

.field public final g:Ljava/lang/String;

.field public h:Landroid/app/PendingIntent;

.field public final i:Landroid/app/PendingIntent;

.field public j:Landroidx/core/graphics/drawable/IconCompat;

.field public k:Ljava/lang/CharSequence;

.field public l:I

.field public m:I

.field public n:Z

.field public o:Z

.field public p:Landroidx/core/app/NotificationCompat$Style;

.field public q:Ljava/lang/CharSequence;

.field public final r:Ljava/lang/CharSequence;

.field public s:I

.field public t:I

.field public u:Z

.field public v:Ljava/lang/String;

.field public w:Z

.field public final x:Ljava/lang/String;

.field public y:Z

.field public final z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1289
    invoke-direct {p0, p1, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v1}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-direct {v0, v3, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {v1}, Landroidx/core/app/NotificationCompat$Style;->d(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$Style;

    move-result-object v3

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.text"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.infoText"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->k:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.subText"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->q:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Landroid/app/Notification;->getSettingsText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->v:Ljava/lang/String;

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v10, 0x1

    if-eqz v4, :cond_0

    move v4, v10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, v0, Landroidx/core/app/NotificationCompat$Builder;->w:Z

    invoke-virtual {v1}, Landroid/app/Notification;->getLocusId()Landroid/content/LocusId;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    new-instance v12, Landroidx/core/content/LocusIdCompat;

    invoke-virtual {v4}, Landroid/content/LocusId;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2d

    invoke-direct {v12, v4}, Landroidx/core/content/LocusIdCompat;-><init>(Ljava/lang/String;)V

    :goto_1
    iput-object v12, v0, Landroidx/core/app/NotificationCompat$Builder;->L:Landroidx/core/content/LocusIdCompat;

    iget-wide v12, v1, Landroid/app/Notification;->when:J

    iget-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-wide v12, v4, Landroid/app/Notification;->when:J

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v12, "android.showWhen"

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Landroidx/core/app/NotificationCompat$Builder;->n:Z

    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v13, "android.showChronometer"

    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Landroidx/core/app/NotificationCompat$Builder;->o:Z

    iget v4, v1, Landroid/app/Notification;->flags:I

    const/16 v13, 0x10

    and-int/2addr v4, v13

    if-eqz v4, :cond_2

    move v4, v10

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v0, v13, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iget v4, v1, Landroid/app/Notification;->flags:I

    const/16 v13, 0x8

    and-int/2addr v4, v13

    if-eqz v4, :cond_3

    move v4, v10

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v0, v13, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iget v4, v1, Landroid/app/Notification;->flags:I

    const/4 v13, 0x2

    and-int/2addr v4, v13

    if-eqz v4, :cond_4

    move v4, v10

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v0, v13, v4}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_5

    move v4, v10

    goto :goto_5

    :cond_5
    const/4 v4, 0x0

    :goto_5
    iput-boolean v4, v0, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    iget-object v4, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->h(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v4

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->J:I

    iget-object v4, v1, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->B:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v4

    if-nez v4, :cond_6

    goto :goto_6

    :cond_6
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1e

    if-lt v14, v15, :cond_7

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api30Impl;->a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v4

    goto :goto_7

    :cond_7
    const/16 v15, 0x1d

    if-ne v14, v15, :cond_8

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$BubbleMetadata$Api29Impl;->a(Landroid/app/Notification$BubbleMetadata;)Landroidx/core/app/NotificationCompat$BubbleMetadata;

    move-result-object v4

    goto :goto_7

    :cond_8
    :goto_6
    const/4 v4, 0x0

    :goto_7
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->P:Landroidx/core/app/NotificationCompat$BubbleMetadata;

    iget v4, v1, Landroid/app/Notification;->number:I

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->l:I

    iget-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v14, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    invoke-static {v4}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v14, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v4, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v14, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-object v4, v14, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    iget-object v4, v1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    iget v14, v1, Landroid/app/Notification;->flags:I

    const/16 v15, 0x80

    and-int/2addr v14, v15

    if-eqz v14, :cond_9

    move v14, v10

    goto :goto_8

    :cond_9
    const/4 v14, 0x0

    :goto_8
    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->i:Landroid/app/PendingIntent;

    invoke-virtual {v0, v15, v14}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    iget-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v14, v1, Landroid/app/Notification;->audioStreamType:I

    iget-object v15, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-object v4, v15, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput v14, v15, Landroid/app/Notification;->audioStreamType:I

    new-instance v4, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v4}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4, v14}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    iput-object v4, v15, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    const-string v4, "silent"

    invoke-virtual {v1}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_9
    move v4, v10

    goto :goto_a

    :cond_a
    iget v4, v1, Landroid/app/Notification;->flags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_c

    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v4

    if-ne v4, v13, :cond_b

    goto :goto_9

    :cond_b
    const/4 v4, 0x0

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Landroid/app/Notification;->getGroupAlertBehavior()I

    move-result v4

    if-ne v4, v10, :cond_b

    goto :goto_9

    :goto_a
    iput-boolean v4, v0, Landroidx/core/app/NotificationCompat$Builder;->R:Z

    iget-object v4, v1, Landroid/app/Notification;->vibrate:[J

    iget-object v11, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-object v4, v11, Landroid/app/Notification;->vibrate:[J

    iget v4, v1, Landroid/app/Notification;->ledARGB:I

    iget v13, v1, Landroid/app/Notification;->ledOnMS:I

    iget v14, v1, Landroid/app/Notification;->ledOffMS:I

    iput v4, v11, Landroid/app/Notification;->ledARGB:I

    iput v13, v11, Landroid/app/Notification;->ledOnMS:I

    iput v14, v11, Landroid/app/Notification;->ledOffMS:I

    if-eqz v13, :cond_d

    if-eqz v14, :cond_d

    move v4, v10

    goto :goto_b

    :cond_d
    const/4 v4, 0x0

    :goto_b
    iget v13, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v13, v13, -0x2

    or-int/2addr v4, v13

    iput v4, v11, Landroid/app/Notification;->flags:I

    iget v4, v1, Landroid/app/Notification;->defaults:I

    invoke-virtual {v0, v4}, Landroidx/core/app/NotificationCompat$Builder;->f(I)V

    iget v4, v1, Landroid/app/Notification;->priority:I

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    iget v4, v1, Landroid/app/Notification;->color:I

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->D:I

    iget v4, v1, Landroid/app/Notification;->visibility:I

    iput v4, v0, Landroidx/core/app/NotificationCompat$Builder;->E:I

    iget-object v4, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->F:Landroid/app/Notification;

    invoke-virtual {v1}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->x:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide v13

    iput-wide v13, v0, Landroidx/core/app/NotificationCompat$Builder;->M:J

    invoke-virtual {v1}, Landroid/app/Notification;->getShortcutId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Landroidx/core/app/NotificationCompat$Builder;->K:Ljava/lang/String;

    const-string v4, "android.progressMax"

    invoke-virtual {v2, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v13, "android.progress"

    invoke-virtual {v2, v13}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v15, "android.progressIndeterminate"

    invoke-virtual {v2, v15}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    iput v11, v0, Landroidx/core/app/NotificationCompat$Builder;->s:I

    iput v14, v0, Landroidx/core/app/NotificationCompat$Builder;->t:I

    iput-boolean v10, v0, Landroidx/core/app/NotificationCompat$Builder;->u:Z

    invoke-virtual {v1}, Landroid/app/Notification;->getAllowSystemGeneratedContextualActions()Z

    move-result v10

    iput-boolean v10, v0, Landroidx/core/app/NotificationCompat$Builder;->O:Z

    iget v10, v1, Landroid/app/Notification;->icon:I

    iget v11, v1, Landroid/app/Notification;->iconLevel:I

    iget-object v14, v0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput v10, v14, Landroid/app/Notification;->icon:I

    iput v11, v14, Landroid/app/Notification;->iconLevel:I

    iget-object v10, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v11, "invisible_actions"

    const-string v14, "android.people"

    const-string v9, "android.people.list"

    move-object/from16 v16, v10

    const-string v10, "android.car.EXTENSIONS"

    move-object/from16 v17, v2

    const-string v2, "android.colorized"

    const-string v0, "android.chronometerCountDown"

    move-object/from16 v18, v3

    const-string v3, "android.shortCriticalText"

    if-nez v16, :cond_e

    move-object v4, v10

    move-object v5, v11

    const/4 v11, 0x0

    goto/16 :goto_d

    :cond_e
    move-object/from16 v16, v11

    new-instance v11, Landroid/os/Bundle;

    move-object/from16 v19, v10

    iget-object v10, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-direct {v11, v10}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x24

    if-lt v5, v6, :cond_f

    invoke-virtual {v11, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_f
    const-string v5, "android.intent.extra.CHANNEL_ID"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v5, "android.intent.extra.CHANNEL_GROUP_ID"

    invoke-virtual {v11, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v15}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.support.sortKey"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.support.groupKey"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.support.isGroupSummary"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.support.localOnly"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    const-string v4, "android.support.actionExtras"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move-object/from16 v4, v19

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_10

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object/from16 v5, v16

    invoke-virtual {v6, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_c

    :cond_10
    move-object/from16 v5, v16

    :goto_c
    if-eqz v18, :cond_11

    move-object/from16 v6, v18

    invoke-virtual {v6, v11}, Landroidx/core/app/NotificationCompat$Style;->c(Landroid/os/Bundle;)V

    :cond_11
    :goto_d
    if-eqz v11, :cond_13

    move-object/from16 v6, p0

    iget-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->C:Landroid/os/Bundle;

    if-nez v7, :cond_12

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7, v11}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->C:Landroid/os/Bundle;

    goto :goto_e

    :cond_12
    invoke-virtual {v7, v11}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_e

    :cond_13
    move-object/from16 v6, p0

    :goto_e
    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    iput-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->S:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-static {v7}, Landroidx/core/graphics/drawable/IconCompat;->b(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    iput-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->j:Landroidx/core/graphics/drawable/IconCompat;

    :cond_14
    iget-object v7, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v7, :cond_1c

    array-length v8, v7

    if-eqz v8, :cond_1c

    array-length v8, v7

    const/4 v10, 0x0

    :goto_f
    if-ge v10, v8, :cond_1c

    aget-object v11, v7, v10

    invoke-virtual {v11}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    if-eqz v12, :cond_15

    invoke-virtual {v11}, Landroid/app/Notification$Action;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v12

    invoke-static {v12}, Landroidx/core/graphics/drawable/IconCompat;->c(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v12

    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget-object v15, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    move-object/from16 v16, v7

    iget-object v7, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v12, v15, v7}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    goto :goto_10

    :cond_15
    move-object/from16 v16, v7

    new-instance v13, Landroidx/core/app/NotificationCompat$Action$Builder;

    iget v7, v11, Landroid/app/Notification$Action;->icon:I

    iget-object v12, v11, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v15, v11, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-direct {v13, v7, v12, v15}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_10
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v7

    if-eqz v7, :cond_19

    array-length v12, v7

    if-eqz v12, :cond_19

    array-length v12, v7

    const/4 v15, 0x0

    :goto_11
    if-ge v15, v12, :cond_19

    aget-object v18, v7, v15

    move-object/from16 v19, v7

    new-instance v7, Landroidx/core/app/RemoteInput$Builder;

    move/from16 v20, v8

    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/RemoteInput$Builder;->d:Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Landroidx/core/app/RemoteInput$Builder;->e:[Ljava/lang/CharSequence;

    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v8

    iput-boolean v8, v7, Landroidx/core/app/RemoteInput$Builder;->f:Z

    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    if-eqz v8, :cond_16

    move/from16 v21, v10

    iget-object v10, v7, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    invoke-virtual {v10, v8}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_12

    :cond_16
    move/from16 v21, v10

    :goto_12
    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getAllowedDataTypes()Ljava/util/Set;

    move-result-object v8

    iget-object v10, v7, Landroidx/core/app/RemoteInput$Builder;->b:Ljava/util/HashSet;

    if-eqz v8, :cond_17

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_13
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v23, v8

    move-object/from16 v8, v22

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, v23

    goto :goto_13

    :cond_17
    invoke-virtual/range {v18 .. v18}, Landroid/app/RemoteInput;->getEditChoicesBeforeSending()I

    move-result v27

    new-instance v22, Landroidx/core/app/RemoteInput;

    iget-object v8, v7, Landroidx/core/app/RemoteInput$Builder;->d:Ljava/lang/CharSequence;

    move-object/from16 v24, v8

    iget-object v8, v7, Landroidx/core/app/RemoteInput$Builder;->e:[Ljava/lang/CharSequence;

    move-object/from16 v25, v8

    iget-boolean v8, v7, Landroidx/core/app/RemoteInput$Builder;->f:Z

    move/from16 v26, v8

    iget-object v8, v7, Landroidx/core/app/RemoteInput$Builder;->c:Landroid/os/Bundle;

    iget-object v7, v7, Landroidx/core/app/RemoteInput$Builder;->a:Ljava/lang/String;

    move-object/from16 v23, v7

    move-object/from16 v28, v8

    move-object/from16 v29, v10

    invoke-direct/range {v22 .. v29}, Landroidx/core/app/RemoteInput;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZILandroid/os/Bundle;Ljava/util/Set;)V

    move-object/from16 v7, v22

    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->f:Ljava/util/ArrayList;

    if-nez v8, :cond_18

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->f:Ljava/util/ArrayList;

    :cond_18
    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->f:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v19

    move/from16 v8, v20

    move/from16 v10, v21

    goto/16 :goto_11

    :cond_19
    move/from16 v20, v8

    move/from16 v21, v10

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api24Impl;->a(Landroid/app/Notification$Action;)Z

    move-result v7

    iput-boolean v7, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->d:Z

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api28Impl;->a(Landroid/app/Notification$Action;)I

    move-result v7

    iput v7, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->g:I

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api29Impl;->a(Landroid/app/Notification$Action;)Z

    move-result v7

    iput-boolean v7, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->i:Z

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1f

    if-lt v7, v8, :cond_1a

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Action$Builder$Api31Impl;->a(Landroid/app/Notification$Action;)Z

    move-result v7

    iput-boolean v7, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->j:Z

    :cond_1a
    invoke-virtual {v11}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    if-eqz v7, :cond_1b

    iget-object v8, v13, Landroidx/core/app/NotificationCompat$Action$Builder;->e:Landroid/os/Bundle;

    invoke-virtual {v8, v7}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1b
    invoke-virtual {v13}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    add-int/lit8 v10, v21, 0x1

    move-object/from16 v7, v16

    move/from16 v8, v20

    goto/16 :goto_f

    :cond_1c
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1d

    goto/16 :goto_1b

    :cond_1d
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_24

    const/4 v5, 0x0

    :goto_14
    invoke-virtual {v4}, Landroid/os/BaseBundle;->size()I

    move-result v8

    if-ge v5, v8, :cond_24

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    const-string v10, "extras"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_1e

    const-string v12, "android.support.allowGeneratedReplies"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    move/from16 v24, v11

    goto :goto_15

    :cond_1e
    const/4 v13, 0x0

    move/from16 v24, v13

    :goto_15
    new-instance v18, Landroidx/core/app/NotificationCompat$Action;

    const-string v11, "icon"

    invoke-virtual {v8, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "title"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v20

    const-string v12, "actionIntent"

    invoke-virtual {v8, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    move-object/from16 v21, v12

    check-cast v21, Landroid/app/PendingIntent;

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    const-string v10, "remoteInputs"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    instance-of v15, v12, [Landroid/os/Bundle;

    const-class v13, [Landroid/os/Bundle;

    if-nez v15, :cond_20

    if-nez v12, :cond_1f

    goto :goto_16

    :cond_1f
    array-length v15, v12

    invoke-static {v12, v15, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/os/Bundle;

    invoke-virtual {v8, v10, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_17

    :cond_20
    :goto_16
    check-cast v12, [Landroid/os/Bundle;

    :goto_17
    invoke-static {v12}, Landroidx/core/app/NotificationCompatJellybean;->a([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    move-result-object v23

    const-string v10, "dataOnlyRemoteInputs"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v12

    instance-of v15, v12, [Landroid/os/Bundle;

    if-nez v15, :cond_22

    if-nez v12, :cond_21

    goto :goto_18

    :cond_21
    array-length v15, v12

    invoke-static {v12, v15, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/os/Bundle;

    invoke-virtual {v8, v10, v12}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_19

    :cond_22
    :goto_18
    check-cast v12, [Landroid/os/Bundle;

    :goto_19
    invoke-static {v12}, Landroidx/core/app/NotificationCompatJellybean;->a([Landroid/os/Bundle;)[Landroidx/core/app/RemoteInput;

    const-string v10, "semanticAction"

    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v25

    const-string v10, "showsUserInterface"

    invoke-virtual {v8, v10}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v26

    if-nez v11, :cond_23

    const/16 v19, 0x0

    goto :goto_1a

    :cond_23
    const-string v8, ""

    const/4 v10, 0x0

    invoke-static {v10, v8, v11}, Landroidx/core/graphics/drawable/IconCompat;->e(Landroid/content/res/Resources;Ljava/lang/String;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v8

    move-object/from16 v19, v8

    :goto_1a
    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-direct/range {v18 .. v28}, Landroidx/core/app/NotificationCompat$Action;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroidx/core/app/RemoteInput;ZIZZZ)V

    move-object/from16 v8, v18

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    :cond_24
    :goto_1b
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_26

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_26

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    if-eqz v5, :cond_25

    iget-object v7, v6, Landroidx/core/app/NotificationCompat$Builder;->d:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_26
    iget-object v4, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_28

    array-length v5, v4

    if-eqz v5, :cond_28

    array-length v5, v4

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v5, :cond_28

    aget-object v8, v4, v7

    if-eqz v8, :cond_27

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_27

    iget-object v10, v6, Landroidx/core/app/NotificationCompat$Builder;->T:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_28
    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Person;

    invoke-static {v4}, Landroidx/core/app/Person;->a(Landroid/app/Person;)Landroidx/core/app/Person;

    move-result-object v4

    iget-object v5, v6, Landroidx/core/app/NotificationCompat$Builder;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_29
    move-object/from16 v1, v17

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->d()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2a
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v6, Landroidx/core/app/NotificationCompat$Builder;->z:Z

    const/4 v0, 0x1

    iput-boolean v0, v6, Landroidx/core/app/NotificationCompat$Builder;->A:Z

    :cond_2b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x24

    if-lt v0, v2, :cond_2c

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Landroidx/core/app/NotificationCompat$Builder;->g:Ljava/lang/String;

    if-ge v0, v2, :cond_2c

    invoke-virtual {v6}, Landroidx/core/app/NotificationCompat$Builder;->d()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    return-void

    :cond_2d
    const-string v0, "id cannot be empty"

    invoke-static {v0}, Lmd;->n(Ljava/lang/String;)V

    const/4 v10, 0x0

    throw v10
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->c:Ljava/util/ArrayList;

    .line 1293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->d:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 1294
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->n:Z

    const/4 v1, 0x0

    .line 1295
    iput-boolean v1, p0, Landroidx/core/app/NotificationCompat$Builder;->y:Z

    .line 1296
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->D:I

    .line 1297
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->E:I

    .line 1298
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->J:I

    .line 1299
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->N:I

    .line 1300
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    .line 1301
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->a:Landroid/content/Context;

    .line 1302
    iput-object p2, p0, Landroidx/core/app/NotificationCompat$Builder;->I:Ljava/lang/String;

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v2, Landroid/app/Notification;->when:J

    const/4 p1, -0x1

    .line 1304
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 1305
    iput v1, p0, Landroidx/core/app/NotificationCompat$Builder;->m:I

    .line 1306
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->T:Ljava/util/ArrayList;

    .line 1307
    iput-boolean v0, p0, Landroidx/core/app/NotificationCompat$Builder;->O:Z

    return-void
.end method

.method public static e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroidx/core/app/NotificationCompat$Action;

    invoke-direct {v0, p1, p3, p2}, Landroidx/core/app/NotificationCompat$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Landroidx/core/app/NotificationCompat$Action;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->b:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final c()Landroid/app/Notification;
    .locals 3

    new-instance v0, Landroidx/core/app/NotificationCompatBuilder;

    invoke-direct {v0, p0}, Landroidx/core/app/NotificationCompatBuilder;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    iget-object p0, v0, Landroidx/core/app/NotificationCompatBuilder;->c:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Landroidx/core/app/NotificationCompat$Builder;->p:Landroidx/core/app/NotificationCompat$Style;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroidx/core/app/NotificationCompat$Style;->b(Landroidx/core/app/NotificationBuilderWithBuilderAccessor;)V

    :cond_0
    iget-object v0, v0, Landroidx/core/app/NotificationCompatBuilder;->b:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Landroidx/core/app/NotificationCompat$Builder;->G:Landroid/widget/RemoteViews;

    if-eqz v2, :cond_1

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :cond_1
    if-eqz v1, :cond_2

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->p:Landroidx/core/app/NotificationCompat$Style;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    if-eqz v1, :cond_3

    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    invoke-virtual {v1, p0}, Landroidx/core/app/NotificationCompat$Style;->a(Landroid/os/Bundle;)V

    :cond_3
    return-object v0
.end method

.method public final d()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->C:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->C:Landroid/os/Bundle;

    :cond_0
    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->C:Landroid/os/Bundle;

    return-object p0
.end method

.method public final f(I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput p1, p0, Landroid/app/Notification;->defaults:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/app/Notification;->flags:I

    :cond_0
    return-void
.end method

.method public final g(IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-void

    :cond_0
    iget p2, p0, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Landroid/app/Notification;->flags:I

    return-void
.end method

.method public final h(Landroid/graphics/Bitmap;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroidx/core/graphics/drawable/IconCompat;->d(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->j:Landroidx/core/graphics/drawable/IconCompat;

    return-void
.end method

.method public final i(Landroidx/core/app/NotificationCompat$Style;)V
    .locals 1

    iget-object v0, p0, Landroidx/core/app/NotificationCompat$Builder;->p:Landroidx/core/app/NotificationCompat$Style;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Landroidx/core/app/NotificationCompat$Builder;->p:Landroidx/core/app/NotificationCompat$Style;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Style;->g(Landroidx/core/app/NotificationCompat$Builder;)V

    :cond_0
    return-void
.end method
