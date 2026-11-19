.class public Lcom/batch/android/BatchInboxFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;,
        Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;
    }
.end annotation


# instance fields
.field private a:Lcom/batch/android/q/f;

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/batch/android/q/f;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/batch/android/BatchInboxFetcher;->b:Landroid/os/Handler;

    iput-object p1, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    return-void
.end method

.method public static synthetic a(Lcom/batch/android/BatchInboxFetcher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->b:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public fetchNewNotifications(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/batch/android/BatchInboxFetcher$a;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/BatchInboxFetcher$a;-><init>(Lcom/batch/android/BatchInboxFetcher;Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V

    return-void
.end method

.method public fetchNextPage(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/batch/android/BatchInboxFetcher$b;

    invoke-direct {v0, p0, p1}, Lcom/batch/android/BatchInboxFetcher$b;-><init>(Lcom/batch/android/BatchInboxFetcher;Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V

    move-object p1, v0

    :cond_0
    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V

    return-void
.end method

.method public getFetchedNotifications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0}, Lcom/batch/android/q/f;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasMore()Z
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0}, Lcom/batch/android/q/f;->b()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public markAllAsRead()V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0}, Lcom/batch/android/q/f;->c()V

    return-void
.end method

.method public markAsDeleted(Lcom/batch/android/BatchInboxNotificationContent;)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->a(Lcom/batch/android/BatchInboxNotificationContent;)V

    return-void
.end method

.method public markAsRead(Lcom/batch/android/BatchInboxNotificationContent;)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->b(Lcom/batch/android/BatchInboxNotificationContent;)V

    return-void
.end method

.method public setFetchLimit(I)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->a(I)V

    return-void
.end method

.method public setFilterSilentNotifications(Z)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->a(Z)V

    return-void
.end method

.method public setHandlerOverride(Landroid/os/Handler;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/batch/android/BatchInboxFetcher;->b:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public setMaxPageSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher;->a:Lcom/batch/android/q/f;

    invoke-virtual {p0, p1}, Lcom/batch/android/q/f;->b(I)V

    return-void
.end method
