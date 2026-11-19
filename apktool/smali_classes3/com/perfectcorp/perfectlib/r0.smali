.class public final synthetic Lcom/perfectcorp/perfectlib/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic h:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILjava/util/ArrayList;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V
    .locals 0

    iput p7, p0, Lcom/perfectcorp/perfectlib/r0;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/r0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iput p2, p0, Lcom/perfectcorp/perfectlib/r0;->d:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/r0;->e:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/r0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/r0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p6, p0, Lcom/perfectcorp/perfectlib/r0;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/perfectcorp/perfectlib/r0;->b:I

    iget-object v1, p0, Lcom/perfectcorp/perfectlib/r0;->e:Ljava/util/ArrayList;

    check-cast p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;

    packed-switch v0, :pswitch_data_0

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/r0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    iget v4, p0, Lcom/perfectcorp/perfectlib/r0;->d:I

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object v2, p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/r0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/r0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v2, :cond_0

    new-instance p0, Lq2;

    const/4 v2, 0x4

    invoke-direct {p0, v2, v1}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v2, Lcom/perfectcorp/perfectlib/u0;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/u0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/v0;

    const/4 v9, 0x0

    iget-boolean v8, p0, Lcom/perfectcorp/perfectlib/r0;->h:Z

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/v0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/w0;

    const/4 v0, 0x0

    invoke-direct {p1, v4, v8, v1, v0}, Lcom/perfectcorp/perfectlib/w0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;ZLjava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_0
    iget-object v3, p0, Lcom/perfectcorp/perfectlib/r0;->c:Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;

    iget-object v0, v3, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->e:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    iget v4, p0, Lcom/perfectcorp/perfectlib/r0;->d:I

    invoke-virtual {v3, v4}, Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;->j(I)V

    iget-object v2, p1, Lcom/perfectcorp/thirdparty/io/reactivex/observables/GroupedObservable;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v5, p0, Lcom/perfectcorp/perfectlib/r0;->f:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v6, p0, Lcom/perfectcorp/perfectlib/r0;->g:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    if-eqz v2, :cond_1

    new-instance p0, Lq2;

    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lq2;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {p1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v2, Lcom/perfectcorp/perfectlib/u0;

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Lcom/perfectcorp/perfectlib/u0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p1, p0, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->observeOn(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    move-object v7, v6

    move-object v6, v5

    move v5, v4

    move-object v4, v2

    new-instance v2, Lcom/perfectcorp/perfectlib/v0;

    const/4 v9, 0x1

    iget-boolean v8, p0, Lcom/perfectcorp/perfectlib/r0;->h:Z

    invoke-direct/range {v2 .. v9}, Lcom/perfectcorp/perfectlib/v0;-><init>(Lcom/perfectcorp/perfectlib/HandVtoApplierImpl;Ljava/util/concurrent/atomic/AtomicReference;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/w0;

    const/4 v0, 0x1

    invoke-direct {p1, v4, v8, v1, v0}, Lcom/perfectcorp/perfectlib/w0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;ZLjava/util/ArrayList;I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    :goto_1
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
