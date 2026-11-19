.class public final synthetic Lcom/batch/android/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/n;->b:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    iput-object p2, p0, Lcom/batch/android/n;->c:Ljava/util/List;

    iput-boolean p3, p0, Lcom/batch/android/n;->d:Z

    iput-boolean p4, p0, Lcom/batch/android/n;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-boolean v0, p0, Lcom/batch/android/n;->d:Z

    iget-boolean v1, p0, Lcom/batch/android/n;->e:Z

    iget-object v2, p0, Lcom/batch/android/n;->b:Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;

    iget-object p0, p0, Lcom/batch/android/n;->c:Ljava/util/List;

    invoke-static {v2, p0, v0, v1}, Lcom/batch/android/BatchInboxFetcher$a;->b(Lcom/batch/android/BatchInboxFetcher$OnNewNotificationsFetchedListener;Ljava/util/List;ZZ)V

    return-void
.end method
