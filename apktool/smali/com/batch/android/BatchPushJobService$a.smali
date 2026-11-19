.class Lcom/batch/android/BatchPushJobService$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/batch/android/BatchPushJobService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/job/JobService;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/batch/android/BatchPushJobService$a;->a:Landroid/os/Bundle;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/batch/android/BatchPushJobService$a;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/batch/android/BatchPushJobService$a;->c:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 100
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/batch/android/BatchPushJobService$a;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 7

    const-string p1, "Unexpected error: job parameters vanished"

    const-string v0, "Push notification display job finished successfully"

    iget-object v1, p0, Lcom/batch/android/BatchPushJobService$a;->b:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobService;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "BatchPushJobService"

    if-nez v1, :cond_1

    const-string p0, "JobService vanished before a push notification could be presented with it."

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/batch/android/BatchPushJobService$a;->c:Landroid/app/job/JobParameters;

    if-nez v4, :cond_2

    const-string p0, "JobParameters vanished before a push notification could be presented with them."

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    iget-object v4, p0, Lcom/batch/android/BatchPushJobService$a;->a:Landroid/os/Bundle;

    if-nez v4, :cond_3

    const-string p0, "Unexpected error: missing push data"

    invoke-static {v3, p0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_3
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v1, v4}, Lcom/batch/android/e;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/batch/android/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/batch/android/BatchPushJobService$a;->c:Landroid/app/job/JobParameters;

    if-eqz p0, :cond_4

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_0
    move-exception v4

    :try_start_1
    const-string v6, "Error while handing notification"

    invoke-static {v3, v6, v4}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p0, p0, Lcom/batch/android/BatchPushJobService$a;->c:Landroid/app/job/JobParameters;

    if-eqz p0, :cond_4

    :goto_1
    invoke-virtual {v1, p0, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    invoke-static {v3, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v3, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Lcom/batch/android/j;->a()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    iget-object p0, p0, Lcom/batch/android/BatchPushJobService$a;->c:Landroid/app/job/JobParameters;

    if-eqz p0, :cond_5

    invoke-virtual {v1, p0, v5}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    invoke-static {v3, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-static {v3, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    throw v2
.end method
