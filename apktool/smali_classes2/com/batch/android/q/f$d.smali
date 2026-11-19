.class Lcom/batch/android/q/f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/n1/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

.field final synthetic b:Lcom/batch/android/q/f;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/f;Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/q/f$d;->b:Lcom/batch/android/q/f;

    iput-object p2, p0, Lcom/batch/android/q/f$d;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/batch/android/q/i;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inbox fetch success (next page) ----\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InboxFetcher"

    invoke-static {v1, v0}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/batch/android/q/f$d;->b:Lcom/batch/android/q/f;

    invoke-static {v0}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, p1, v2}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;Lcom/batch/android/q/i;Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/batch/android/q/f$d;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    iget-object v4, p0, Lcom/batch/android/q/f$d;->b:Lcom/batch/android/q/f;

    invoke-static {v4, v0}, Lcom/batch/android/q/f;->a(Lcom/batch/android/q/f;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-boolean p1, p1, Lcom/batch/android/q/i;->a:Z

    xor-int/2addr p1, v3

    invoke-interface {v2, v0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchSuccess(Ljava/util/List;Z)V
    :try_end_0
    .catch Lcom/batch/android/q/f$e; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to handle inbox fetch response"

    invoke-static {v1, v0, p1}, Lcom/batch/android/e/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lcom/batch/android/q/f$d;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    invoke-virtual {p1}, Lcom/batch/android/q/f$e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/batch/android/q/f$d;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method
