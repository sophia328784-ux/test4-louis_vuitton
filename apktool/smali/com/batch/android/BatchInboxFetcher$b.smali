.class Lcom/batch/android/BatchInboxFetcher$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchInboxFetcher;->fetchNextPage(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

.field final synthetic b:Lcom/batch/android/BatchInboxFetcher;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchInboxFetcher;Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/BatchInboxFetcher$b;->b:Lcom/batch/android/BatchInboxFetcher;

    iput-object p2, p0, Lcom/batch/android/BatchInboxFetcher$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V
    .locals 0

    invoke-interface {p0, p1, p2}, Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;->onFetchSuccess(Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/batch/android/BatchInboxFetcher$b;->a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/BatchInboxFetcher$b;->a(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFetchFailure(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher$b;->b:Lcom/batch/android/BatchInboxFetcher;

    invoke-static {v0}, Lcom/batch/android/BatchInboxFetcher;->a(Lcom/batch/android/BatchInboxFetcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    new-instance v1, Lcom/batch/android/m;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2, p0}, Lcom/batch/android/m;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFetchSuccess(Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher$b;->b:Lcom/batch/android/BatchInboxFetcher;

    invoke-static {v0}, Lcom/batch/android/BatchInboxFetcher;->a(Lcom/batch/android/BatchInboxFetcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher$b;->a:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    new-instance v1, Lcom/batch/android/o;

    invoke-direct {v1, p0, p1, p2}, Lcom/batch/android/o;-><init>(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
