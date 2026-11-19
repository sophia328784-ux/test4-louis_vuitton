.class public final Lcom/perfectcorp/common/network/RequestTask$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perfectcorp/common/network/RequestTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/perfectcorp/common/network/HttpRequestProvider;

.field public final b:Lcom/perfectcorp/common/network/ResponseConverter;

.field public c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

.field public d:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

.field public final e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/common/network/HttpRequestProvider;Lcom/perfectcorp/common/network/ResponseConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/perfectcorp/common/network/HttpRequestProvider;",
            "Lcom/perfectcorp/common/network/ResponseConverter<",
            "TResult;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;->NORMAL:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask$Builder;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$TaskPriority;

    sget-object v0, Lcom/perfectcorp/common/network/RequestTask$RequestMethod;->GET:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask$Builder;->d:Lcom/perfectcorp/common/network/RequestTask$RequestMethod;

    sget-object v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList;->c:Lcom/perfectcorp/thirdparty/com/google/common/collect/bz;

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/common/network/RequestTask$Builder;->e:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableList$Builder;

    const-string v0, "urlUtils can\'t be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/perfectcorp/common/network/HttpRequestProvider;

    iput-object p1, p0, Lcom/perfectcorp/common/network/RequestTask$Builder;->a:Lcom/perfectcorp/common/network/HttpRequestProvider;

    const-string p1, "responseConverter can\'t be null"

    invoke-static {p2, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Lcom/perfectcorp/common/network/ResponseConverter;

    iput-object p2, p0, Lcom/perfectcorp/common/network/RequestTask$Builder;->b:Lcom/perfectcorp/common/network/ResponseConverter;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/common/network/NetworkTaskManager;Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;
    .locals 5

    const/4 v0, 0x3

    const-string v1, "RequestTask"

    const-string v2, "[startWithResponseWrapper] start"

    invoke-static {v0, v1, v2}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/perfectcorp/common/network/RequestTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/common/network/RequestTask;-><init>(Lcom/perfectcorp/common/network/RequestTask$Builder;B)V

    const-string p0, "[startWithResponseWrapper] requestRx"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "[requestRx] start"

    invoke-static {p0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    const-string p0, "[requestFuture] start"

    invoke-static {p0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    iget-object p0, p1, Lcom/perfectcorp/common/network/NetworkTaskManager;->b:Lcom/perfectcorp/common/network/h;

    iget-object v3, p1, Lcom/perfectcorp/common/network/NetworkTaskManager;->c:Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;

    invoke-interface {p0, v3}, Lcom/perfectcorp/common/network/h;->a(Lcom/perfectcorp/common/network/NetworkTaskManager$InitRequestHandler;)Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    const-string v3, "[requestFuture] chain future"

    invoke-static {v3}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/perfectcorp/common/guava/FluentFuture;->a(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/ListenableFuture;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    new-instance v3, Lcom/perfectcorp/common/network/i;

    invoke-direct {v3, p1, v2}, Lcom/perfectcorp/common/network/i;-><init>(Lcom/perfectcorp/common/network/NetworkTaskManager;Lcom/perfectcorp/common/network/RequestTask;)V

    invoke-virtual {p0, v3}, Lcom/perfectcorp/common/guava/FluentFuture;->c(Lcom/perfectcorp/thirdparty/com/google/common/util/concurrent/i;)Lcom/perfectcorp/common/guava/FluentFuture;

    move-result-object p0

    const-string p1, "[requestFuture] end"

    invoke-static {p1}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    const-string p1, "[requestRx] fromFuture"

    invoke-static {p1}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    sget p1, Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;->a:I

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p1, p0, v2, v3, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/f;-><init>(Ljava/util/concurrent/Future;JLjava/util/concurrent/TimeUnit;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i;

    invoke-direct {p0, p1, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/flowable/i;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/Flowable;Ljava/lang/Object;)V

    new-instance p1, Llc0;

    const/16 v2, 0x19

    invoke-direct {p1, v2}, Llc0;-><init>(I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;

    invoke-direct {v2, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/w;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    const-string p0, "[requestRx] end"

    invoke-static {p0}, Lcom/perfectcorp/common/network/NetworkTaskManager$DebugLog;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v2, p2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v2

    :cond_0
    const-string p0, "[startWithResponseWrapper] end"

    invoke-static {v0, v1, p0}, Lcom/perfectcorp/common/utility/Log;->g(ILjava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method
