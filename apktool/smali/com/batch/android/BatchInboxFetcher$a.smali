.class Lcom/batch/android/BatchInboxFetcher$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/batch/android/BatchInboxFetcher;->fetchNewNotifications(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

.field final synthetic b:Lcom/batch/android/BatchInboxFetcher;


# direct methods
.method public constructor <init>(Lcom/batch/android/BatchInboxFetcher;Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/batch/android/BatchInboxFetcher$a;->b:Lcom/batch/android/BatchInboxFetcher;

    iput-object p2, p0, Lcom/batch/android/BatchInboxFetcher$a;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-interface {p0, p1}, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;->onFetchFailure(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;->onFetchSuccess(Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic b(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/batch/android/BatchInboxFetcher$a;->a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/batch/android/BatchInboxFetcher$a;->a(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onFetchFailure(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher$a;->b:Lcom/batch/android/BatchInboxFetcher;

    invoke-static {v0}, Lcom/batch/android/BatchInboxFetcher;->a(Lcom/batch/android/BatchInboxFetcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher$a;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    new-instance v1, Lcom/batch/android/m;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Lcom/batch/android/m;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFetchSuccess(Ljava/util/List;ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/batch/android/BatchInboxNotificationContent;",
            ">;ZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/batch/android/BatchInboxFetcher$a;->b:Lcom/batch/android/BatchInboxFetcher;

    invoke-static {v0}, Lcom/batch/android/BatchInboxFetcher;->a(Lcom/batch/android/BatchInboxFetcher;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/batch/android/BatchInboxFetcher$a;->a:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    new-instance v1, Lcom/batch/android/n;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/batch/android/n;-><init>(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
