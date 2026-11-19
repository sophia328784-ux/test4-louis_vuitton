.class public final synthetic Luv0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/perfectcorp/perfectlib/PerfectEffect;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/ShadeFinderData;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/PerfectEffect;ZLjava/util/concurrent/atomic/AtomicReference;Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luv0;->b:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iput-boolean p2, p0, Luv0;->c:Z

    iput-object p3, p0, Luv0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Luv0;->e:Lcom/perfectcorp/perfectlib/ShadeFinderData;

    iput-object p5, p0, Luv0;->f:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    iput-object p6, p0, Luv0;->g:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    new-instance v0, La8;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, La8;-><init>(I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/c;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object v0

    new-instance v1, Luc0;

    const/4 v2, 0x1

    iget-object v3, p0, Luv0;->b:Lcom/perfectcorp/perfectlib/PerfectEffect;

    iget-object v4, p0, Luv0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v5, p0, Luv0;->e:Lcom/perfectcorp/perfectlib/ShadeFinderData;

    iget-object v6, p0, Luv0;->f:Lcom/perfectcorp/perfectlib/ShadeFinderDeltaE;

    iget-boolean v7, p0, Luv0;->c:Z

    invoke-direct/range {v1 .. v7}, Luc0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v2, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lpv0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lpv0;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object v0

    invoke-static {}, Lcom/perfectcorp/thirdparty/io/reactivex/android/schedulers/AndroidSchedulers;->a()Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object v0

    new-instance v2, Ltv0;

    const/4 v3, 0x0

    iget-object p0, p0, Luv0;->g:Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;

    invoke-direct {v2, p0, v3}, Ltv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    new-instance v3, Ltv0;

    invoke-direct {v3, p0, v1}, Ltv0;-><init>(Lcom/perfectcorp/perfectlib/RecommendationHandler$GetRecommendedResultCallback;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    invoke-direct {p0, v2, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-object p0
.end method
