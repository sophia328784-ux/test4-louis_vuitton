.class Lcom/batch/android/q/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

.field final synthetic b:Lcom/batch/android/q/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/f;Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/q/f$b;->b:Lcom/batch/android/q/f;

    iput-object p2, p0, Lcom/batch/android/q/f$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/q/i;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inbox fetch success (new notifications) ----\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InboxFetcher"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/q/f$b;->b:Lcom/batch/android/q/f;

    const/4 v2, 0x1

    invoke-static {v0, p1, v2}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;Lcom/batch/android/q/i;Z)Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/batch/android/q/f$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    iget-object v4, p0, Lcom/batch/android/q/f$b;->b:Lcom/batch/android/q/f;

    invoke-static {v4, v0}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v4, p1, Lcom/batch/android/q/i;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-boolean p1, p1, Lcom/batch/android/q/i;->a:Z

    xor-int/2addr p1, v2

    invoke-interface {v3, v0, v4, p1}, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;->onFetchSuccess(Ljava/util/List;ZZ)V
    :try_end_0
    .catch Lcom/batch/android/q/f$e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to handle inbox fetch response"

    invoke-static {v1, v0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/f$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    invoke-virtual {p1}, Lcom/batch/android/q/f$e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/batch/android/q/f$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method
