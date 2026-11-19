.class public final synthetic Lcom/batch/android/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/batch/android/o;->b:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    iput-object p2, p0, Lcom/batch/android/o;->c:Ljava/util/List;

    iput-boolean p3, p0, Lcom/batch/android/o;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/batch/android/o;->c:Ljava/util/List;

    iget-boolean v1, p0, Lcom/batch/android/o;->d:Z

    iget-object p0, p0, Lcom/batch/android/o;->b:Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;

    invoke-static {p0, v0, v1}, Lcom/batch/android/BatchInboxFetcher$b;->b(Lcom/batch/android/BatchInboxFetcher$OnNextPageFetchedListener;Ljava/util/List;Z)V

    return-void
.end method
