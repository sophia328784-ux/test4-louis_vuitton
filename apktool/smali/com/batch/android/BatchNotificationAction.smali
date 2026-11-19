.class public Lcom/batch/android/BatchNotificationAction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public actionArguments:Lcom/batch/android/json/JSONObject;

.field public actionIdentifier:Ljava/lang/String;

.field public drawableName:Ljava/lang/String;

.field public hasUserInterface:Z

.field public label:Ljava/lang/String;

.field public shouldDismissNotification:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/batch/android/BatchNotificationAction;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/batch/android/BatchNotificationAction;->actionIdentifier:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/BatchNotificationAction;->hasUserInterface:Z

    iput-boolean v0, p0, Lcom/batch/android/BatchNotificationAction;->shouldDismissNotification:Z

    return-void
.end method

.method public static getSupportActions(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/BatchPushPayload;Ljava/lang/Integer;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchNotificationAction;",
            ">;",
            "Lcom/batch/android/BatchPushPayload;",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroidx/core/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/batch/android/BatchNotificationAction;

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Landroid/content/Intent;

    iget-boolean v4, v2, Lcom/batch/android/BatchNotificationAction;->hasUserInterface:Z

    if-eqz v4, :cond_1

    const-class v4, Lcom/batch/android/BatchActionActivity;

    goto :goto_1

    :cond_1
    const-class v4, Lcom/batch/android/BatchActionService;

    :goto_1
    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.batch.android.action.exec"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v2, Lcom/batch/android/BatchNotificationAction;->actionIdentifier:Ljava/lang/String;

    const-string v5, "actionID"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v2, Lcom/batch/android/BatchNotificationAction;->actionArguments:Lcom/batch/android/json/JSONObject;

    invoke-virtual {v4}, Lcom/batch/android/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v4, v2, Lcom/batch/android/BatchNotificationAction;->shouldDismissNotification:Z

    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    const-string v4, "dismissNotificationID"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Lcom/batch/android/BatchPushPayload;->writeToIntentExtras(Landroid/content/Intent;)V

    :cond_3
    iget-boolean v4, v2, Lcom/batch/android/BatchNotificationAction;->hasUserInterface:Z

    const/high16 v5, 0x44000000    # 512.0f

    if-eqz v4, :cond_4

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    mul-int/2addr v4, v1

    invoke-static {p0, v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, p0, v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v4, v6

    mul-int/2addr v4, v1

    invoke-static {p0, v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetService(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, p0, v4, v3, v5}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetService(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    :goto_2
    new-instance v3, Landroidx/core/app/NotificationCompat$Action$Builder;

    invoke-static {}, Lcom/batch/android/n/a;->a()Lcom/batch/android/v0/a;

    move-result-object v4

    iget-object v5, v2, Lcom/batch/android/BatchNotificationAction;->drawableName:Ljava/lang/String;

    invoke-virtual {v4, p0, v5}, Lcom/batch/android/v0/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    iget-object v2, v2, Lcom/batch/android/BatchNotificationAction;->label:Ljava/lang/String;

    invoke-direct {v3, v4, v2, v6}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroidx/core/app/NotificationCompat$Action$Builder;->a()Landroidx/core/app/NotificationCompat$Action;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    const-string p0, "Context cannot be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
