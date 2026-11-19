.class public Lcom/batch/android/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "BatchPushNotificationPresenter"

.field private static final b:Ljava/lang/String; = "com.batch.android.push.smallicon"

.field private static final c:Ljava/lang/String; = "com.google.firebase.messaging.default_notification_icon"

.field private static final d:Ljava/lang/String; = "com.batch.android.push.color"

.field private static final e:I = -0x64

.field private static final f:Ljava/lang/String; = "google.message_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 3

    .line 925
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 926
    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->theme:I

    invoke-direct {v1, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 927
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    if-eqz p0, :cond_0

    const v1, 0x1010433

    const/4 v2, 0x1

    .line 928
    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 929
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2

    .line 921
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1050006

    .line 922
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x1050005

    .line 923
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    const/4 v1, 0x0

    .line 924
    invoke-static {p1, p0, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/j;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 898
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 899
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverExtras(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/batch/android/BatchPushPayload$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    const-string v1, "google.message_id"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 901
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Batch push received with google message_id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BatchPushNotificationPresenter"

    invoke-static {v2, v1}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/e/r;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 903
    :cond_1
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v1

    .line 904
    invoke-static {}, Lcom/batch/android/n/v;->a()Lcom/batch/android/v0/h;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/batch/android/v0/h;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 905
    const-string p0, "Ignoring push as Batch has been Opted Out from"

    invoke-static {v2, p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 906
    :cond_2
    invoke-virtual {v1}, Lcom/batch/android/v0/j;->t()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 907
    const-string p0, "Ignoring push cause manual display is activated"

    invoke-static {v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 908
    :cond_3
    invoke-virtual {v1}, Lcom/batch/android/v0/j;->o()Lcom/batch/android/BatchNotificationInterceptor;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/BatchPushPayload;Lcom/batch/android/BatchNotificationInterceptor;)V

    :catch_0
    :cond_4
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/BatchPushPayload;Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/batch/android/j;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v5, "Unable to download large icon image sent via payload, fallback on default"

    const-string v6, "batch_"

    const-string v0, "msg"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "title"

    invoke-virtual {v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "BatchPushNotificationPresenter"

    if-nez v9, :cond_0

    const-string v0, "Not presenting a notification since it has no value for Batch.Push.ALERT_KEY"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {v3}, Lcom/batch/android/BatchPushPayload;->a()Lcom/batch/android/e/r;

    move-result-object v14

    if-nez v14, :cond_1

    const-string v0, "Not presenting a notification since we could not read batch\'s internal data"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v14}, Lcom/batch/android/e/r;->F()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v0, "Not presenting a notification since it is marked as silent"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-static {v1, v14}, Lcom/batch/android/d;->a(Landroid/content/Context;Lcom/batch/android/e/r;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_15

    :cond_3
    invoke-static {v1, v2, v14}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/e/r;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_15

    :cond_4
    if-eqz v4, :cond_5

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object v15, v10

    goto :goto_0

    :cond_5
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v14}, Lcom/batch/android/e/r;->r()Ljava/lang/String;

    invoke-static {v1}, Lcom/batch/android/e;->b(Landroid/content/Context;)I

    move-result v10

    const/16 v11, -0x64

    if-ne v10, v11, :cond_6

    const-string v0, "Not showing notifications since notification type is NONE or does not contain ALERT"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_6
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    move-object v11, v0

    goto :goto_3

    :cond_8
    :goto_2
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    goto :goto_1

    :goto_3
    invoke-static {}, Lcom/batch/android/n/d;->a()Lcom/batch/android/BatchNotificationChannelsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/batch/android/BatchNotificationChannelsManager;->a(Lcom/batch/android/BatchPushPayload;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v1}, Lcom/batch/android/BatchNotificationChannelsManager;->a(Landroid/content/Context;)V

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v1}, Lcom/batch/android/e;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_9
    move v7, v0

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v7

    invoke-virtual {v7}, Lcom/batch/android/v0/j;->m()I

    move-result v7

    if-eqz v7, :cond_9

    :goto_4
    if-nez v7, :cond_b

    const-string v0, "Unable to find icon of the application. Did you correctly set your application icon in the manifest?"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->l()Landroid/graphics/Bitmap;

    move-result-object v16

    invoke-virtual {v14}, Lcom/batch/android/e/r;->y()Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_1
    invoke-virtual {v14}, Lcom/batch/android/e/r;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/d0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/d0;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    if-nez v17, :cond_c

    new-instance v8, Lcom/batch/android/f;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v10

    :try_start_2
    invoke-virtual {v14}, Lcom/batch/android/e/r;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lcom/batch/android/e/r;->d()Ljava/util/List;

    move-result-object v3

    invoke-direct {v8, v1, v10, v3}, Lcom/batch/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/batch/android/f;->G()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-static {v1, v0, v3}, Lcom/batch/android/e/d0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move/from16 v18, v10

    goto :goto_7

    :cond_c
    move/from16 v18, v10

    move-object/from16 v3, v17

    :cond_d
    :goto_5
    if-eqz v3, :cond_e

    invoke-static {v1, v3}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v16

    :goto_6
    move-object/from16 v10, v16

    goto :goto_8

    :cond_e
    invoke-static {v13, v5}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :goto_7
    const-string v3, "Error while downloading custom big icon image"

    invoke-static {v13, v3, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v13, v5}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move/from16 v18, v10

    goto :goto_6

    :goto_8
    :try_start_3
    invoke-virtual {v14}, Lcom/batch/android/e/r;->z()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v14}, Lcom/batch/android/e/r;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/e/d0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/d0;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_10

    new-instance v3, Lcom/batch/android/f;

    invoke-virtual {v14}, Lcom/batch/android/e/r;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14}, Lcom/batch/android/e/r;->f()Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v1, v5, v8}, Lcom/batch/android/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3}, Lcom/batch/android/f;->G()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-static {v1, v0, v3}, Lcom/batch/android/e/d0;->a(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_a

    :cond_10
    :goto_9
    if-eqz v3, :cond_11

    goto :goto_c

    :cond_11
    const-string v0, "Unable to download large big picture image sent via payload, fallback on default"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_b

    :goto_a
    const-string v3, "Error while downloading custom big picture image"

    invoke-static {v13, v3, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Unable to download big picture image sent via payload, fallback on default"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_b
    const/4 v3, 0x0

    :goto_c
    invoke-static {v1}, Lcom/batch/android/e;->c(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_d

    :cond_13
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->n()I

    move-result v0

    :goto_d
    const/4 v5, -0x1

    if-ne v0, v5, :cond_14

    invoke-static {v1}, Lcom/batch/android/e;->a(Landroid/content/Context;)I

    move-result v0

    :cond_14
    move v8, v0

    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/j;->r()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_16

    and-int/lit8 v16, v18, 0x1

    if-eqz v16, :cond_15

    and-int/lit8 v16, v18, -0x2

    move-object v5, v0

    move-object/from16 v17, v3

    move/from16 v3, v16

    goto :goto_e

    :cond_15
    move-object/from16 v17, v3

    move/from16 v3, v18

    const/4 v5, 0x0

    goto :goto_e

    :cond_16
    move-object v5, v0

    move-object/from16 v17, v3

    move/from16 v3, v18

    :goto_e
    invoke-virtual {v14}, Lcom/batch/android/e/r;->B()Z

    move-result v0

    if-eqz v0, :cond_18

    :try_start_4
    invoke-virtual {v14}, Lcom/batch/android/e/r;->E()Z

    move-result v0

    if-nez v0, :cond_17

    new-instance v0, Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v18, v9

    :try_start_5
    const-class v9, Lcom/batch/android/BatchActionActivity;

    invoke-direct {v0, v1, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v9, "deeplink"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object/from16 v19, v10

    :try_start_6
    invoke-virtual {v14}, Lcom/batch/android/e/r;->v()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_12

    :catch_3
    move-exception v0

    goto :goto_10

    :catch_4
    move-exception v0

    :goto_f
    move-object/from16 v19, v10

    goto :goto_10

    :catch_5
    move-exception v0

    move-object/from16 v18, v9

    goto :goto_f

    :cond_17
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v6, "Received scheme is empty"

    invoke-direct {v0, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_10
    const-string v6, "Error while parsing deeplink"

    invoke-static {v13, v6, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_11
    const/4 v0, 0x0

    goto :goto_12

    :cond_18
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    goto :goto_11

    :goto_12
    const/high16 v6, 0x4000000

    if-nez v0, :cond_1a

    invoke-static {v1}, Lcom/batch/android/e/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_19

    const-string v0, "Batch could not detect the launch intent for the current package. Not displaying notification."

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-static {}, Lcom/batch/android/n/y;->a()Lcom/batch/android/v0/j;

    move-result-object v9

    invoke-virtual {v9}, Lcom/batch/android/v0/j;->j()Ljava/lang/Integer;

    move-result-object v9

    if-eqz v9, :cond_1a

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    or-int/2addr v9, v6

    invoke-virtual {v0, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1a
    invoke-static {v2, v14, v0}, Lcom/batch/android/h;->a(Landroid/os/Bundle;Lcom/batch/android/e/r;Landroid/content/Intent;)V

    const/4 v9, 0x0

    const/high16 v10, 0xc000000

    invoke-static {v1, v9, v0, v10}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {v1, v9, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-static {v6, v1, v9, v0, v10}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v9

    const-wide v21, 0x41dfffffffc00000L    # 2.147483647E9

    mul-double v9, v9, v21

    double-to-int v0, v9

    if-eqz v4, :cond_1b

    invoke-virtual {v4, v1, v0, v15}, Lcom/batch/android/BatchNotificationInterceptor;->getPushNotificationId(Landroid/content/Context;ILandroid/os/Bundle;)I

    move-result v0

    :cond_1b
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/batch/android/BatchPushMessageDismissReceiver;

    invoke-direct {v9, v1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v2, v14, v9}, Lcom/batch/android/h;->a(Landroid/os/Bundle;Lcom/batch/android/e/r;Landroid/content/Intent;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v10, 0x4000000

    invoke-static {v2, v0, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)V

    move-object/from16 v20, v14

    invoke-static {v2, v0, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v14

    invoke-static {v14, v2, v0, v9, v10}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetBroadcast(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v2, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->f(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->Q:Landroid/app/Notification;

    iput-wide v9, v3, Landroid/app/Notification;->when:J

    invoke-static/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v11}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v2, Landroidx/core/app/NotificationCompat$Builder;->e:Ljava/lang/CharSequence;

    invoke-static/range {v18 .. v18}, Landroidx/core/app/NotificationCompat$Builder;->e(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    iput-object v9, v2, Landroidx/core/app/NotificationCompat$Builder;->f:Ljava/lang/CharSequence;

    iput v7, v3, Landroid/app/Notification;->icon:I

    iput-object v6, v2, Landroidx/core/app/NotificationCompat$Builder;->h:Landroid/app/PendingIntent;

    iput-object v14, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const/16 v6, 0x8

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    const/16 v6, 0x10

    invoke-virtual {v2, v6, v7}, Landroidx/core/app/NotificationCompat$Builder;->g(IZ)V

    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->x()I

    move-result v6

    iput v6, v2, Landroidx/core/app/NotificationCompat$Builder;->E:I

    if-eqz v5, :cond_1c

    iput-object v5, v3, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v5, -0x1

    iput v5, v3, Landroid/app/Notification;->audioStreamType:I

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    iput-object v5, v3, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    :cond_1c
    iput-boolean v7, v2, Landroidx/core/app/NotificationCompat$Builder;->n:Z

    iput-object v12, v2, Landroidx/core/app/NotificationCompat$Builder;->I:Ljava/lang/String;

    const/4 v5, -0x1

    if-eq v8, v5, :cond_1d

    iput v8, v2, Landroidx/core/app/NotificationCompat$Builder;->D:I

    :cond_1d
    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->m()Lcom/batch/android/e/r$b;

    move-result-object v3

    sget-object v5, Lcom/batch/android/e/r$b;->c:Lcom/batch/android/e/r$b;

    if-ne v3, v5, :cond_1e

    new-instance v8, Lcom/batch/android/e1/a;

    move-object/from16 v3, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct {v8, v11, v9, v10, v3}, Lcom/batch/android/e1/a;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    const-string v5, "Using APEN (ex-news) format"

    invoke-static {v13, v5}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/batch/android/e/f0;->a(Landroidx/core/app/NotificationCompat$Builder;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "Cannot opt out of Smart Reply"

    invoke-static {v13, v5}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13

    :cond_1e
    move-object/from16 v3, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    const/4 v8, 0x0

    :cond_1f
    :goto_13
    if-nez v8, :cond_20

    new-instance v7, Lcom/batch/android/e1/d;

    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->G()Z

    move-result v12

    move-object v8, v11

    move-object v11, v3

    invoke-direct/range {v7 .. v12}, Lcom/batch/android/e1/d;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    move-object v8, v7

    :cond_20
    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->n()Lcom/batch/android/json/JSONObject;

    move-result-object v3

    invoke-interface {v8, v3}, Lcom/batch/android/e1/c;->a(Lcom/batch/android/json/JSONObject;)V

    invoke-static {v1, v8, v2}, Lcom/batch/android/e;->a(Landroid/content/Context;Lcom/batch/android/e1/c;Landroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual/range {p2 .. p2}, Lcom/batch/android/BatchPushPayload;->getActions()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_21

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_21

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p2

    invoke-static {v1, v3, v6, v5}, Lcom/batch/android/BatchNotificationAction;->getSupportActions(Landroid/content/Context;Ljava/util/List;Lcom/batch/android/BatchPushPayload;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/core/app/NotificationCompat$Action;

    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$Builder;->b(Landroidx/core/app/NotificationCompat$Action;)V

    goto :goto_14

    :cond_21
    move-object/from16 v6, p2

    :cond_22
    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->q()Lcom/batch/android/e/r$c;

    move-result-object v3

    if-eqz v3, :cond_23

    sget-object v5, Lcom/batch/android/e/r$c;->b:Lcom/batch/android/e/r$c;

    if-eq v3, v5, :cond_23

    invoke-virtual {v3}, Lcom/batch/android/e/r$c;->b()I

    move-result v3

    iput v3, v2, Landroidx/core/app/NotificationCompat$Builder;->m:I

    :cond_23
    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->i()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    iput-object v3, v2, Landroidx/core/app/NotificationCompat$Builder;->v:Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lcom/batch/android/e/r;->C()Z

    move-result v3

    iput-boolean v3, v2, Landroidx/core/app/NotificationCompat$Builder;->w:Z

    :cond_24
    if-eqz v4, :cond_25

    const-string v3, "Calling developer\'s Notification Interceptor implementation"

    invoke-static {v13, v3}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v4, v1, v2, v15, v0}, Lcom/batch/android/BatchNotificationInterceptor;->getPushNotificationCompatBuilder(Landroid/content/Context;Landroidx/core/app/NotificationCompat$Builder;Landroid/os/Bundle;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    if-nez v2, :cond_25

    const-string v0, "Aborting notification display: The push interceptor returned a null builder"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_15

    :catch_6
    move-exception v0

    const-string v1, "Interceptor has thrown a runtime exception. Aborting notification display by rethrowing"

    invoke-static {v13, v1, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/batch/android/j;

    invoke-direct {v1, v0}, Lcom/batch/android/j;-><init>(Ljava/lang/RuntimeException;)V

    throw v1

    :cond_25
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->c()Landroid/app/Notification;

    move-result-object v2

    new-instance v3, Landroidx/core/app/NotificationManagerCompat;

    invoke-direct {v3, v1}, Landroidx/core/app/NotificationManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0, v2}, Landroidx/core/app/NotificationManagerCompat;->a(ILandroid/app/Notification;)V

    invoke-virtual {v2}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/w;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/batch/android/v0/e;->b(Landroid/content/Context;)V

    new-instance v0, Lcom/batch/android/p/c;

    invoke-direct {v0, v6}, Lcom/batch/android/p/c;-><init>(Lcom/batch/android/BatchPushPayload;)V

    invoke-static {}, Lcom/batch/android/n/i;->a()Lcom/batch/android/v0/e;

    move-result-object v1

    sget-object v2, Lcom/batch/android/Batch$EventDispatcher$Type;->NOTIFICATION_DISPLAY:Lcom/batch/android/Batch$EventDispatcher$Type;

    invoke-virtual {v1, v2, v0}, Lcom/batch/android/v0/e;->a(Lcom/batch/android/Batch$EventDispatcher$Type;Lcom/batch/android/Batch$EventDispatcher$Payload;)V

    goto :goto_15

    :cond_26
    const-string v0, "Batch.Push: notification can\'t be displayed, skipping event dispatcher..."

    invoke-static {v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;)V

    :goto_15
    return-void

    :catch_7
    const-string v0, "Unable to find label of the application. Did you correctly set your application label in the manifest?"

    invoke-static {v13, v0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/batch/android/e1/c;Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 2

    .line 930
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 931
    :try_start_0
    invoke-interface {p1, p0}, Lcom/batch/android/e1/c;->b(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    iput-object v0, p2, Landroidx/core/app/NotificationCompat$Builder;->G:Landroid/widget/RemoteViews;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 933
    :cond_0
    :goto_0
    invoke-interface {p1, p0}, Lcom/batch/android/e1/c;->a(Ljava/lang/String;)Landroid/widget/RemoteViews;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 934
    iput-object p0, p2, Landroidx/core/app/NotificationCompat$Builder;->H:Landroid/widget/RemoteViews;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 935
    :goto_1
    const-string v0, "BatchPushNotificationPresenter"

    const-string v1, "Tried to instantiate remote views for format, but failed"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 936
    :cond_1
    :goto_2
    invoke-interface {p1}, Lcom/batch/android/e1/c;->a()Landroidx/core/app/NotificationCompat$Style;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 937
    invoke-virtual {p2, p0}, Landroidx/core/app/NotificationCompat$Builder;->i(Landroidx/core/app/NotificationCompat$Style;)V

    .line 938
    :cond_2
    invoke-interface {p1, p2}, Lcom/batch/android/e1/c;->a(Landroidx/core/app/NotificationCompat$Builder;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/e/r;)Z
    .locals 5

    .line 909
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 910
    :cond_0
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/batch/android/v0/g;->a(Z)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 911
    :cond_1
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/v0/g;->m()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 912
    :cond_2
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->h()Z

    move-result v0

    const-string v3, "BatchPushNotificationPresenter"

    if-nez v0, :cond_3

    .line 913
    const-string p0, "Application is in background, not sending landing"

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 914
    :cond_3
    invoke-virtual {p2}, Lcom/batch/android/e/r;->k()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_4

    return v1

    .line 915
    :cond_4
    :try_start_0
    invoke-virtual {p2}, Lcom/batch/android/e/r;->p()Lcom/batch/android/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/i0/b;->e(Lcom/batch/android/json/JSONObject;)Lcom/batch/android/f0/c;

    move-result-object v0

    .line 916
    invoke-virtual {v0}, Lcom/batch/android/f0/c;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 917
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :catch_0
    move-exception p0

    goto :goto_1

    .line 918
    :cond_6
    :goto_0
    invoke-static {}, Lcom/batch/android/n/t;->a()Lcom/batch/android/v0/g;

    move-result-object v0

    new-instance v4, Lcom/batch/android/BatchLandingMessage;

    .line 919
    invoke-virtual {p2}, Lcom/batch/android/e/r;->k()Lcom/batch/android/json/JSONObject;

    move-result-object p2

    invoke-direct {v4, p1, p2}, Lcom/batch/android/BatchLandingMessage;-><init>(Landroid/os/Bundle;Lcom/batch/android/json/JSONObject;)V

    invoke-virtual {v0, p0, v4, v1}, Lcom/batch/android/v0/g;->a(Landroid/content/Context;Lcom/batch/android/BatchMessage;Z)V
    :try_end_0
    .catch Lcom/batch/android/i0/c; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 920
    :goto_1
    const-string p1, "Error while parsing the messaging payload. Not forwarding to foreground."

    invoke-static {v3, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method private static b(Landroid/content/Context;)I
    .locals 3

    invoke-static {p0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string v0, "push.notiftype"

    invoke-virtual {p0, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-eqz p0, :cond_6

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/e/e0;->a(I)Ljava/util/EnumSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    sget-object v1, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/16 p0, -0x64

    return p0

    :cond_2
    sget-object v1, Lcom/batch/android/e/e0;->e:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/batch/android/e/e0;->d:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    or-int/lit8 v1, v1, 0x1

    :cond_4
    sget-object v2, Lcom/batch/android/e/e0;->f:Lcom/batch/android/e/e0;

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_5

    or-int/lit8 p0, v1, 0x4

    return p0

    :cond_5
    return v1

    :goto_2
    const-string v1, "BatchPushNotificationPresenter"

    const-string v2, "Error while reading notification types. Fallback on ALL"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_1

    const-string v1, "com.batch.android.push.color"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    return-object v0

    :goto_0
    const-string v1, "BatchPushNotificationPresenter"

    const-string v2, "Error while parsing small icon meta data"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_1
    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string v2, "com.batch.android.push.smallicon"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.google.firebase.messaging.default_notification_icon"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object v0

    :goto_0
    const-string v1, "BatchPushNotificationPresenter"

    const-string v2, "Error while parsing small icon meta data"

    invoke-static {v1, v2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_1
    :cond_2
    return-object v0
.end method
