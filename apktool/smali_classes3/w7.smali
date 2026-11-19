.class public final synthetic Lw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;ZI)V
    .locals 0

    iput p3, p0, Lw7;->b:I

    iput-object p1, p0, Lw7;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    iput-boolean p2, p0, Lw7;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lw7;->b:I

    iget-boolean v1, p0, Lw7;->d:Z

    iget-object p0, p0, Lw7;->c:Lcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    invoke-static {p1, v0, p0, v1}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->d(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Landroid/util/Pair;

    sget-object v0, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v2}, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->d(Ljava/util/List;ZLcom/perfectcorp/perfectlib/internal/DownloadTaskCancelable;Z)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;

    move-result-object p0

    invoke-static {p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lv7;

    const/16 v4, 0xa

    invoke-direct {v3, v4}, Lv7;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMap(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v3, Lv7;

    const/16 v4, 0xb

    invoke-direct {v3, v4}, Lv7;-><init>(I)V

    invoke-virtual {v0, v3}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->map(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    if-eqz v1, :cond_0

    new-instance v1, Ln2;

    const/4 v3, 0x3

    invoke-direct {v1, p1, v3}, Ln2;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->z(Ljava/util/concurrent/Callable;)V

    :cond_0
    invoke-static {p0}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->f(Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/f;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->mergeWith(Lcom/perfectcorp/thirdparty/io/reactivex/ObservableSource;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    new-instance p1, La8;

    invoke-direct {p1, v2}, La8;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList(Ljava/util/concurrent/Callable;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p0

    sget-object p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    invoke-direct {v0, p0, p1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance p0, Ln7;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ln7;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->doFinally(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Action;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
