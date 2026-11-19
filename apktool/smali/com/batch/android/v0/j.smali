.class public Lcom/batch/android/v0/j;
.super Lcom/batch/android/v0/b;
.source "SourceFile"


# static fields
.field public static final m:Ljava/lang/String; = "Push"

.field public static final n:I = -0x1


# instance fields
.field private a:Z

.field private b:I

.field private c:Landroid/graphics/Bitmap;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/net/Uri;

.field private g:Z

.field private h:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/batch/android/e/e0;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Integer;

.field private j:Lcom/batch/android/BatchNotificationInterceptor;

.field private k:Lcom/batch/android/PushRegistrationProvider;

.field private l:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/batch/android/v0/b;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/batch/android/v0/j;->a:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/batch/android/v0/j;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/batch/android/v0/j;->e:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/batch/android/v0/j;->f:Landroid/net/Uri;

    iput-boolean v0, p0, Lcom/batch/android/v0/j;->g:Z

    iput-object v1, p0, Lcom/batch/android/v0/j;->i:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/batch/android/v0/j;->j:Lcom/batch/android/BatchNotificationInterceptor;

    iput-boolean v0, p0, Lcom/batch/android/v0/j;->l:Z

    return-void
.end method

.method private static synthetic a(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V
    .locals 2

    .line 167
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_0

    .line 168
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p2

    .line 169
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "push.notiftype"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, p0, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 170
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V
    .locals 3

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.batch.android.intent.action.push.REGISTRATION_IDENTIFIER_OBTAINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v2, "provider_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p2}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "registration_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    invoke-virtual {p2}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sender_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    invoke-static {p1}, Lcom/batch/android/Batch;->getBroadcastPermissionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Ly81;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p2, p1, v2}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 226
    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method private a(Lcom/batch/android/BatchPushRegistration;)V
    .locals 1

    .line 228
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Registration ID/Push Token ("

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Push"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Lcom/batch/android/BatchPushRegistration;Landroid/content/Context;Lcom/batch/android/j1/g;)V
    .locals 9

    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p3, v0, :cond_4

    invoke-direct {p0, p1}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/BatchPushRegistration;)V

    invoke-static {p2}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p2

    if-eqz p2, :cond_3

    const-string p3, "push.registration.id"

    invoke-virtual {p2, p3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "push.registration.provider"

    invoke-virtual {p2, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "push.registration.sender_id"

    invoke-virtual {p2, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "push.registration.gcp_project_id"

    invoke-virtual {p2, v5}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0}, Lcom/batch/android/v0/j;->k()Ljava/lang/String;

    move-result-object p0

    const-string v7, "push.appversion"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, p0, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v1, p0, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p3, p0, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v3, p0, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v3}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v5, p0, v8}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v5}, Lcom/batch/android/e/a0;->b(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getProvider()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getSenderID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lcom/batch/android/BatchPushRegistration;->getGcpProjectID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    :cond_2
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/batch/android/a/m;->a(Lcom/batch/android/j1/e;Lcom/batch/android/BatchPushRegistration;)Z

    return-void

    :cond_3
    const-string p0, "Push"

    const-string p1, "Could not save push token in parameters."

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private a(Lcom/batch/android/PushRegistrationProvider;)V
    .locals 3

    .line 215
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/batch/android/n/d0;->a(Landroid/content/Context;)Lcom/batch/android/e/k0;

    move-result-object v1

    new-instance v2, Lcom/batch/android/v0/j$a;

    invoke-direct {v2, p0, p1, v0}, Lcom/batch/android/v0/j$a;-><init>(Lcom/batch/android/v0/j;Lcom/batch/android/PushRegistrationProvider;Landroid/content/Context;)V

    .line 217
    invoke-virtual {v1, v2}, Lcom/batch/android/e/k0;->a(Lcom/batch/android/e/l0;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private synthetic a(Lcom/batch/android/j1/g;)V
    .locals 3

    .line 232
    :try_start_0
    iget-object p1, p0, Lcom/batch/android/v0/j;->h:Ljava/util/EnumSet;

    invoke-static {p1}, Lcom/batch/android/e/e0;->a(Ljava/util/EnumSet;)I

    move-result p1

    .line 233
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object v0

    const-string v1, "push.notiftype"

    .line 234
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 235
    iput-object p1, p0, Lcom/batch/android/v0/j;->h:Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 236
    const-string p1, "Push"

    const-string v0, "Error while saving temp notif type"

    invoke-static {p1, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/v0/j;Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Lcom/batch/android/BatchPushRegistration;)V

    return-void
.end method

.method private synthetic a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/g;)V
    .locals 1

    .line 164
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    if-eq p2, v0, :cond_0

    .line 165
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p2

    invoke-virtual {p2}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p0, p2}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;)Lcom/batch/android/BatchPushRegistration;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static synthetic b(Lcom/batch/android/j1/g;)V
    .locals 2

    .line 83
    sget-object v0, Lcom/batch/android/j1/g;->b:Lcom/batch/android/j1/g;

    const-string v1, "Push"

    if-ne p0, v0, :cond_0

    .line 84
    const-string p0, "Call to dismissBatchNotifications made while SDK is not started, please call this method only after Batch.onStart."

    invoke-static {v1, p0}, Lcom/batch/android/e/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    .line 86
    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    const-string v0, "notification"

    .line 87
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 88
    invoke-virtual {p0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 89
    const-string v0, "Error while dismissing notifications"

    invoke-static {v1, v0, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager;->isBackgroundRestricted()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic i(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lcom/batch/android/v0/j;->a(ILjava/util/concurrent/atomic/AtomicBoolean;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic j(Lcom/batch/android/v0/j;Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/j1/g;)V

    return-void
.end method

.method private k()Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Push"

    const-string v1, "Error while getting app version"

    invoke-static {v0, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method public static synthetic k(Lcom/batch/android/v0/j;Lcom/batch/android/BatchPushRegistration;Landroid/content/Context;Lcom/batch/android/j1/g;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/BatchPushRegistration;Landroid/content/Context;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic l(Lcom/batch/android/v0/j;Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/batch/android/v0/j;->a(Ljava/util/concurrent/atomic/AtomicReference;Lcom/batch/android/j1/g;)V

    return-void
.end method

.method public static synthetic m(Lcom/batch/android/j1/g;)V
    .locals 0

    invoke-static {p0}, Lcom/batch/android/v0/j;->b(Lcom/batch/android/j1/g;)V

    return-void
.end method

.method private declared-synchronized q()Lcom/batch/android/PushRegistrationProvider;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/batch/android/v0/j;->l:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/batch/android/v0/j;->l:Z

    new-instance v1, Lcom/batch/android/d1/c;

    invoke-direct {v1, v0}, Lcom/batch/android/d1/c;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/batch/android/d1/c;->b()Lcom/batch/android/PushRegistrationProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/batch/android/v0/j;->k:Lcom/batch/android/PushRegistrationProvider;

    if-nez v0, :cond_1

    const-string v0, "Push"

    const-string v1, "Could not register for notifications."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const-string v0, "Push"

    const-string v1, "No context set, cannot try to instantiate a registration provider. Will retry."

    invoke-static {v0, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/batch/android/v0/j;->k:Lcom/batch/android/PushRegistrationProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static s()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/batch/android/j1/e;->c()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/batch/android/BatchPushService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "Push"

    const-string v3, "Error while retrieving Push service"

    invoke-static {v2, v3, v1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public static u()Lcom/batch/android/v0/j;
    .locals 1

    new-instance v0, Lcom/batch/android/v0/j;

    invoke-direct {v0}, Lcom/batch/android/v0/j;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 2

    .line 184
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "batch_"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    invoke-static {p3, p0}, Lcom/batch/android/Batch$Push;->appendBatchData(Landroid/os/Bundle;Landroid/content/Intent;)V

    const/4 p2, 0x0

    const/high16 p3, 0xc000000

    .line 187
    invoke-static {p1, p2, p0, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookIntentGetActivity(Landroid/content/Context;ILandroid/content/Intent;I)V

    invoke-static {p1, p2, p0, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0, p1, p2, p0, p3}, Lcom/sensorsdata/analytics/android/sdk/aop/push/PushAutoTrackHelper;->hookPendingIntentGetActivity(Landroid/app/PendingIntent;Landroid/content/Context;ILandroid/content/Intent;I)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;
    .locals 0

    .line 188
    invoke-static {p3}, Lcom/batch/android/d;->a(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_0

    .line 189
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 190
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 3

    .line 191
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 192
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/batch/android/BatchActionActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    const-string v1, "deeplink"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "batch_"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, p1, v0, p3}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/google/firebase/messaging/RemoteMessage;)Landroid/app/PendingIntent;
    .locals 0

    .line 197
    invoke-static {p3}, Lcom/batch/android/d;->a(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_0

    .line 198
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 199
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/batch/android/v0/j;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public a(I)V
    .locals 0

    .line 153
    iput p1, p0, Lcom/batch/android/v0/j;->b:I

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 227
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;Lcom/batch/android/BatchNotificationInterceptor;Z)V
    .locals 0

    if-nez p4, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/batch/android/v0/j;->o()Lcom/batch/android/BatchNotificationInterceptor;

    move-result-object p3

    .line 202
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 203
    invoke-static {p2}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverIntent(Landroid/content/Intent;)Lcom/batch/android/BatchPushPayload;

    move-result-object p2

    .line 204
    invoke-static {p1, p0, p2, p3}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/BatchPushPayload;Lcom/batch/android/BatchNotificationInterceptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 205
    const-string p1, "An error occured while handling push notification"

    const-string p2, "Push"

    invoke-static {p2, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "An error occured during display : "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/batch/android/BatchPermissionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 229
    new-instance p0, Lcom/batch/android/e/x;

    invoke-direct {p0, p2}, Lcom/batch/android/e/x;-><init>(Lcom/batch/android/BatchPermissionListener;)V

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, p2, v0}, Lcom/batch/android/e/x;->a(Landroid/content/Context;ZLandroid/content/BroadcastReceiver;)V

    return-void

    .line 231
    :cond_0
    const-string p0, "Context can\'t be null"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)V
    .locals 0

    .line 151
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 1

    .line 207
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/j;->b(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p3, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/batch/android/v0/j;->o()Lcom/batch/android/BatchNotificationInterceptor;

    move-result-object p3

    .line 209
    :cond_1
    invoke-static {p2}, Lcom/batch/android/d;->a(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_2

    .line 210
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 211
    :cond_2
    invoke-static {p0}, Lcom/batch/android/BatchPushPayload;->payloadFromReceiverExtras(Landroid/os/Bundle;)Lcom/batch/android/BatchPushPayload;

    move-result-object p2

    .line 212
    invoke-static {p1, p0, p2, p3}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/batch/android/BatchPushPayload;Lcom/batch/android/BatchNotificationInterceptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 213
    const-string p1, "An error occured while handling push notification"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "An error occurred during display : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Push"

    invoke-static {p1, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 1

    .line 173
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/os/Bundle;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 174
    const-string p1, "Error while appending batch data to intent"

    const-string p2, "Push"

    invoke-static {p2, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error while appending Batch data to open intent : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/batch/android/v0/j;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/batch/android/v0/j;->f:Landroid/net/Uri;

    return-void
.end method

.method public a(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 1

    const-string p0, "Push"

    .line 176
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/e/r;->a(Landroid/os/Bundle;)Lcom/batch/android/e/r;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    const-string p1, "Error while appending Batch data to open intent : the pushIntentExtras seems to not be a Batch Push intent extras. Aborting"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1, v0, p2}, Lcom/batch/android/h;->a(Landroid/os/Bundle;Lcom/batch/android/e/r;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 179
    :goto_0
    const-string p2, "Error while appending batch data to intent"

    invoke-static {p0, p2, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 180
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error while appending Batch data to open intent : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/batch/android/BatchNotificationInterceptor;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/batch/android/v0/j;->j:Lcom/batch/android/BatchNotificationInterceptor;

    return-void
.end method

.method public a(Lcom/google/firebase/messaging/RemoteMessage;Landroid/content/Intent;)V
    .locals 0

    .line 181
    invoke-static {p1}, Lcom/batch/android/d;->a(Lcom/google/firebase/messaging/RemoteMessage;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 182
    const-string p0, "Push"

    const-string p1, "Could not read data from Firebase message"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 183
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/batch/android/v0/j;->a(Landroid/os/Bundle;Landroid/content/Intent;)V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/batch/android/v0/j;->i:Ljava/lang/Integer;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/batch/android/v0/j;->d:Ljava/lang/String;

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/batch/android/v0/j;->a:Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/batch/android/v0/j;->g:Z

    return-void
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    return p0

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.batch"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method public a(Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 0

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/messaging/RemoteMessage;->W1()Ljava/util/HashMap;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    const-string p1, "com.batch"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/content/Context;)Lcom/batch/android/BatchPushRegistration;
    .locals 4

    const/4 p0, 0x0

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p1

    .line 75
    const-string v0, "push.registration.id"

    invoke-virtual {p1, v0}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 76
    :cond_0
    const-string v1, "push.registration.provider"

    invoke-virtual {p1, v1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    const-string v1, "UNKNOWN"

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    const-string v2, "push.registration.sender_id"

    invoke-virtual {p1, v2}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string v3, "push.registration.gcp_project_id"

    invoke-virtual {p1, v3}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    new-instance v3, Lcom/batch/android/BatchPushRegistration;

    invoke-direct {v3, v1, v0, v2, p1}, Lcom/batch/android/BatchPushRegistration;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 82
    :goto_1
    const-string v0, "Push"

    const-string v1, "Error while retrieving registration id"

    invoke-static {v0, v1, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/batch/android/v0/j;->e:I

    return-void
.end method

.method public b(Z)V
    .locals 6

    const-string v0, "Setting notification type to "

    const-string v1, "Push"

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    sget-object p1, Lcom/batch/android/e/e0;->c:Lcom/batch/android/e/e0;

    invoke-static {p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object p1

    :goto_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    invoke-static {p1}, Lcom/batch/android/e/e0;->a(Ljava/util/EnumSet;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v4, Lhw0;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v2, v5}, Lhw0;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v0, v4}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/batch/android/v0/j;->h:Ljava/util/EnumSet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :goto_1
    const-string p1, "Error while storing notification types"

    invoke-static {v1, p1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    const/4 p1, 0x1

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/v0/j;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/batch/android/v0/j;->a(Landroid/content/Intent;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 92
    :goto_0
    const-string p2, "Push"

    const-string v0, "Error while evaluating if should display push"

    invoke-static {p2, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public b(Landroid/content/Context;Lcom/google/firebase/messaging/RemoteMessage;)Z
    .locals 1

    const/4 p1, 0x1

    .line 93
    :try_start_0
    invoke-virtual {p0}, Lcom/batch/android/v0/j;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/batch/android/v0/j;->a(Lcom/google/firebase/messaging/RemoteMessage;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    return p1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 94
    :goto_0
    const-string p2, "Push"

    const-string v0, "Error while evaluating if should display push"

    invoke-static {p2, v0, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p1
.end method

.method public d(Landroid/content/Context;)Z
    .locals 2

    iget-object p0, p0, Lcom/batch/android/v0/j;->h:Ljava/util/EnumSet;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/batch/android/e/e0;->a(Ljava/util/EnumSet;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/batch/android/n/w;->a(Landroid/content/Context;)Lcom/batch/android/e/a0;

    move-result-object p0

    const-string p1, "push.notiftype"

    invoke-virtual {p0, p1}, Lcom/batch/android/e/a0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/batch/android/e/e0;->a(I)Ljava/util/EnumSet;

    move-result-object p0

    sget-object p1, Lcom/batch/android/e/e0;->g:Lcom/batch/android/e/e0;

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Push"

    const-string v1, "Error while reading notification type"

    invoke-static {p1, v1, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/v0/j;->h:Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v0

    new-instance v1, Lu81;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lu81;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    :cond_0
    iget-boolean v0, p0, Lcom/batch/android/v0/j;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/batch/android/v0/j;->a:Z

    invoke-direct {p0}, Lcom/batch/android/v0/j;->q()Lcom/batch/android/PushRegistrationProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/PushRegistrationProvider;)V

    :cond_1
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 0

    const-string p0, "push"

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/j;->d:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method public i()V
    .locals 2

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object p0

    new-instance v0, Lr81;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lr81;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    return-void
.end method

.method public j()Ljava/lang/Integer;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/batch/android/v0/j;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public l()Landroid/graphics/Bitmap;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/batch/android/v0/j;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public m()I
    .locals 0

    .line 4
    iget p0, p0, Lcom/batch/android/v0/j;->b:I

    return p0
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lcom/batch/android/v0/j;->e:I

    return p0
.end method

.method public o()Lcom/batch/android/BatchNotificationInterceptor;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/j;->j:Lcom/batch/android/BatchNotificationInterceptor;

    return-object p0
.end method

.method public p()Lcom/batch/android/BatchPushRegistration;
    .locals 4

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    new-instance v2, Lgy0;

    const/16 v3, 0xe

    invoke-direct {v2, p0, v0, v3}, Lgy0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Lcom/batch/android/j1/e;->a(Lcom/batch/android/j1/h;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/batch/android/BatchPushRegistration;

    return-object p0
.end method

.method public r()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/v0/j;->f:Landroid/net/Uri;

    return-object p0
.end method

.method public t()Z
    .locals 0

    iget-boolean p0, p0, Lcom/batch/android/v0/j;->g:Z

    return p0
.end method

.method public v()V
    .locals 1

    invoke-direct {p0}, Lcom/batch/android/v0/j;->q()Lcom/batch/android/PushRegistrationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/batch/android/v0/j;->a(Lcom/batch/android/PushRegistrationProvider;)V

    :cond_0
    return-void
.end method
