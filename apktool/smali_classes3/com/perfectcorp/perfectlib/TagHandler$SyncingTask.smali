.class Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/perfectlib/TagHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SyncingTask"
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

.field public final c:Lcom/perfectcorp/common/utility/EventPublisher;

.field public final d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Lcom/perfectcorp/common/utility/EventPublisher;Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->a:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->b:Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/completable/b;

    iput-object p2, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->c:Lcom/perfectcorp/common/utility/EventPublisher;

    new-instance p2, Ler0;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3}, Ler0;-><init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    invoke-static {p2}, Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposables;->a(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/TagHandler$SyncingTask;->d:Lcom/perfectcorp/thirdparty/io/reactivex/disposables/Disposable;

    return-void
.end method
