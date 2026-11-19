.class public final synthetic Lpc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Ljava/util/concurrent/atomic/AtomicInteger;ILcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpc;->c:Ljava/lang/Object;

    iput-object p2, p0, Lpc;->d:Ljava/lang/Object;

    iput p3, p0, Lpc;->b:I

    iput-object p4, p0, Lpc;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput-object p1, p0, Lpc;->c:Ljava/lang/Object;

    iput-object p2, p0, Lpc;->d:Ljava/lang/Object;

    iput-object p3, p0, Lpc;->e:Ljava/lang/Object;

    iput p4, p0, Lpc;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lpc;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lpc;->d:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Landroidx/media3/exoplayer/source/LoadEventInfo;

    iget-object v1, p0, Lpc;->e:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroidx/media3/exoplayer/source/MediaLoadData;

    move-object v2, p1

    check-cast v2, Landroidx/media3/exoplayer/source/MediaSourceEventListener;

    iget v3, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->a:I

    iget-object v4, v0, Landroidx/media3/exoplayer/source/MediaSourceEventListener$EventDispatcher;->b:Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    iget v7, p0, Lpc;->b:I

    invoke-interface/range {v2 .. v7}, Landroidx/media3/exoplayer/source/MediaSourceEventListener;->z(ILandroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/source/LoadEventInfo;Landroidx/media3/exoplayer/source/MediaLoadData;I)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lpc;->c:Ljava/lang/Object;

    check-cast v0, Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iget-object v1, p0, Lpc;->d:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lpc;->e:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lcom/perfectcorp/perfectlib/RecommendationHandler$SyncServerCallback;

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    new-instance p1, Lsw0;

    const/4 v1, 0x2

    invoke-direct {p1, v3, v0, v1}, Lsw0;-><init>(Ljava/lang/String;Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object p1, Lcom/perfectcorp/perfectlib/ymk/utility/FileDownloader;->d:Lcom/perfectcorp/thirdparty/io/reactivex/internal/schedulers/d;

    invoke-virtual {v0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->j(Lcom/perfectcorp/thirdparty/io/reactivex/Scheduler;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/x;

    move-result-object p1

    new-instance v2, Luw0;

    const/4 v7, 0x0

    iget v5, p0, Lpc;->b:I

    invoke-direct/range {v2 .. v7}, Luw0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicInteger;ILjava/lang/Object;I)V

    invoke-virtual {p1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->f(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/j;

    move-result-object p0

    new-instance p1, Lh8;

    invoke-direct {p1, v3, v1}, Lh8;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/h;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    return-object v0
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    iget-object v0, p0, Lpc;->c:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lpc;->d:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lpc;->e:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x207

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->e(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_1

    iget v5, p1, Landroidx/core/graphics/Insets;->b:I

    iget p0, p0, Lpc;->b:I

    add-int/2addr p0, v5

    iput p0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iget p1, p1, Landroidx/core/graphics/Insets;->d:I

    add-int/2addr p0, p1

    iput p0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object p2
.end method
