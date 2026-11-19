.class public final synthetic Lcom/perfectcorp/perfectlib/o2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

.field public final synthetic e:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

.field public final synthetic f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic g:I

.field public final synthetic h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILcom/perfectcorp/perfectlib/DownloadCacheStrategy;Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ILcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;I)V
    .locals 0

    iput p8, p0, Lcom/perfectcorp/perfectlib/o2;->b:I

    iput-object p1, p0, Lcom/perfectcorp/perfectlib/o2;->i:Ljava/lang/Object;

    iput p2, p0, Lcom/perfectcorp/perfectlib/o2;->c:I

    iput-object p3, p0, Lcom/perfectcorp/perfectlib/o2;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iput-object p4, p0, Lcom/perfectcorp/perfectlib/o2;->e:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iput-object p5, p0, Lcom/perfectcorp/perfectlib/o2;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput p6, p0, Lcom/perfectcorp/perfectlib/o2;->g:I

    iput-object p7, p0, Lcom/perfectcorp/perfectlib/o2;->h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Lcom/perfectcorp/perfectlib/o2;->b:I

    const/4 v1, 0x4

    iget v2, p0, Lcom/perfectcorp/perfectlib/o2;->g:I

    iget-object v3, p0, Lcom/perfectcorp/perfectlib/o2;->i:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    move-object v5, v3

    check-cast v5, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;

    move-object v7, p1

    check-cast v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget p1, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/perfectcorp/perfectlib/e1;

    const/4 v11, 0x4

    iget v6, p0, Lcom/perfectcorp/perfectlib/o2;->c:I

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/o2;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/o2;->e:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object v10, p0, Lcom/perfectcorp/perfectlib/o2;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct/range {v4 .. v11}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v4}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object p1, v5, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p0

    iget-object p1, v5, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    iget-object p1, v7, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sget v3, Lcom/perfectcorp/perfectlib/PhotoMakeupInternal;->n:I

    new-instance v3, Lcom/perfectcorp/perfectlib/s0;

    invoke-direct {v3, v5, v2, p1, v1}, Lcom/perfectcorp/perfectlib/s0;-><init>(Ljava/lang/Object;ILjava/lang/Object;I)V

    new-instance v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {v1, p0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p0, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {v1, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance v1, Lcom/perfectcorp/perfectlib/z0;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/perfectcorp/perfectlib/z0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v2, p0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Lcom/perfectcorp/perfectlib/u2;

    const/4 v1, 0x1

    invoke-direct {p0, v5, p1, v0, v1}, Lcom/perfectcorp/perfectlib/u2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    return-object p0

    :pswitch_0
    move-object v4, v3

    check-cast v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;

    move-object v6, p1

    check-cast v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    sget-object p1, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/perfectcorp/perfectlib/e1;

    const/4 v10, 0x1

    iget v5, p0, Lcom/perfectcorp/perfectlib/o2;->c:I

    iget-object v7, p0, Lcom/perfectcorp/perfectlib/o2;->d:Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;

    iget-object v8, p0, Lcom/perfectcorp/perfectlib/o2;->e:Lcom/perfectcorp/perfectlib/VtoApplier$DownloadAndApplyCallback;

    iget-object v9, p0, Lcom/perfectcorp/perfectlib/o2;->f:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    invoke-direct/range {v3 .. v10}, Lcom/perfectcorp/perfectlib/e1;-><init>(Ljava/lang/Object;ILjava/lang/Object;Lcom/perfectcorp/perfectlib/DownloadCacheStrategy;Ljava/lang/Object;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->a:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    iget-object v0, v4, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->c:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p1

    iget-object v0, v6, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    sget-object v3, Lcom/perfectcorp/perfectlib/MakeupCamInternal;->n:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v3, Lcom/perfectcorp/perfectlib/w1;

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/o2;->h:Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;

    invoke-direct {v3, v4, v2, v0, p0}, Lcom/perfectcorp/perfectlib/w1;-><init>(Lcom/perfectcorp/perfectlib/MakeupCamInternal;ILjava/lang/String;Lcom/perfectcorp/perfectlib/VtoApplier$FunStickerActionHintCallback;)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p0, p1, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/schedulers/Schedulers;->c:Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->i(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/u;

    move-result-object p0

    new-instance p1, Lcom/perfectcorp/perfectlib/a0;

    invoke-direct {p1, v4, v0, v1}, Lcom/perfectcorp/perfectlib/a0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
