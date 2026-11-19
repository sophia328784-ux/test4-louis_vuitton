.class public Lcom/batch/android/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/UserActionRunnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/b/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "RatingAction"

.field public static final b:Ljava/lang/String; = "batch.rating"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    .line 65
    const-string p0, "Action"

    const-string v0, "In-app rating unavailable: trying to open store application."

    invoke-static {p0, v0}, Lcom/batch/android/e/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p1}, Lcom/batch/android/g/d;->a(Landroid/content/Context;)Lcom/batch/android/g/c;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    invoke-interface {p0, p1}, Lcom/batch/android/g/c;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Lcom/batch/android/e/c0;)V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/batch/android/n/z;->a()Lcom/batch/android/j1/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/batch/android/j1/e;->b()Landroid/app/Activity;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/android/play/core/review/ReviewManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/review/ReviewManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/android/play/core/review/ReviewManager;->requestReviewFlow()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Ly81;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p0, v1, v4}, Ly81;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void

    :cond_1
    new-instance p0, Lcom/batch/android/b/f$a;

    const-string p1, "Could not find an Activity to use for display."

    invoke-direct {p0, p1, v0}, Lcom/batch/android/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p0, Lcom/batch/android/b/f$a;

    const-string p1, "Is \'com.google.android.play:core\' available?"

    invoke-direct {p0, p1, v0}, Lcom/batch/android/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private synthetic a(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 3

    .line 53
    instance-of v0, p2, Lcom/batch/android/b/f$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 54
    const-string v0, "This device might not have Google\'s services, or the Play Store version is too old."

    .line 55
    :cond_1
    const-string v2, "Could not use in-app rating: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 56
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 57
    :cond_2
    const-string p2, "Action"

    invoke-static {p2, v0, v1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    invoke-direct {p0, p1}, Lcom/batch/android/b/f;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/b/f;Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/batch/android/b/f;->a(Landroid/content/Context;Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/e/c0;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 60
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p3}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/play/core/review/ReviewInfo;

    if-nez p3, :cond_0

    .line 62
    new-instance v0, Lcom/batch/android/b/f$a;

    const-string v2, "Invalid reply from Play Store (-10)."

    invoke-direct {v0, v2, v1}, Lcom/batch/android/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    .line 63
    :cond_0
    invoke-interface {p1, p2, p3}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/gms/tasks/Task;

    return-void

    .line 64
    :cond_1
    new-instance p1, Lcom/batch/android/b/f$a;

    invoke-direct {p1, v1, v1}, Lcom/batch/android/b/f$a;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Lcom/batch/android/e/c0;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method private b(Landroid/content/Context;)Lcom/batch/android/e/c0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/batch/android/e/c0<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance p0, Lcom/batch/android/e/c0;

    new-instance v0, Ll71;

    const/16 v1, 0x8

    invoke-direct {v0, p1, v1}, Ll71;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/batch/android/e/c0;-><init>(Lcom/batch/android/e/c0$c;)V

    return-object p0
.end method

.method public static synthetic b(Lcom/batch/android/e/c0;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/b/f;->a(Lcom/batch/android/e/c0;Lcom/google/android/play/core/review/ReviewManager;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lcom/batch/android/e/c0;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/b/f;->a(Landroid/content/Context;Lcom/batch/android/e/c0;)V

    return-void
.end method


# virtual methods
.method public performAction(Landroid/content/Context;Ljava/lang/String;Lcom/batch/android/json/JSONObject;Lcom/batch/android/UserActionSource;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "RatingAction"

    const-string p1, "Tried to perform a Rating action, but no context was available"

    invoke-static {p0, p1}, Lcom/batch/android/e/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/batch/android/b/f;->b(Landroid/content/Context;)Lcom/batch/android/e/c0;

    move-result-object p2

    new-instance p3, Lx81;

    invoke-direct {p3, p0, p1}, Lx81;-><init>(Lcom/batch/android/b/f;Landroid/content/Context;)V

    invoke-virtual {p2, p3}, Lcom/batch/android/e/c0;->a(Lcom/batch/android/e/c0$b;)Lcom/batch/android/e/c0;

    return-void
.end method
