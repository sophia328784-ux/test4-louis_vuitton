.class final Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;
.super Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;


# static fields
.field public static final synthetic J:I


# instance fields
.field public final A:Ljava/util/ArrayList;

.field public final B:Ljava/util/ArrayList;

.field public volatile C:D

.field public final D:Z

.field public final E:Ljava/lang/String;

.field public final F:Z

.field public final G:Z

.field public final H:Z

.field public final I:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;


# direct methods
.method public constructor <init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$b;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->A:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object p0, v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/d;->a:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iput-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->I:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v2, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v3, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    iget-wide v4, v2, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->j:J

    invoke-direct {v0, v3, v4, v5}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->A:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->B:Ljava/util/ArrayList;

    new-instance v3, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;

    iget-object v4, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->b:Ljava/lang/String;

    iget-wide v5, v1, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b$a;->a:J

    invoke-direct {v3, v4, v5, v6}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$d;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->D:Z

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->c:Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;

    iget-object v0, v0, Lcom/perfectcorp/perfectlib/ph/database/ymk/makeup/b;->d:Ljava/lang/String;

    :goto_1
    iput-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->E:Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->D:Z

    const-string v0, ""

    goto :goto_1

    :goto_2
    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->g:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->F:Z

    iget-boolean v0, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->h:Z

    iput-boolean v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->G:Z

    iget-boolean p1, p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$c;->i:Z

    iput-boolean p1, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->H:Z

    return-void
.end method


# virtual methods
.method public final c()D
    .locals 2

    iget-wide v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->C:D

    return-wide v0
.end method

.method public final j(Lcom/perfectcorp/common/network/NetworkTaskManager;)V
    .locals 4

    iget-object v0, p0, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;->A:Ljava/util/ArrayList;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/common/collect/Lists;->b(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->fromIterable(Ljava/lang/Iterable;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->concatMapSingle(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/functions/Functions;->a:Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;

    invoke-virtual {v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->flatMapIterable(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->toList()Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object p0, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->c:Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;

    iput-object p1, v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/e;->b:Lcom/perfectcorp/common/network/NetworkTaskManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;

    invoke-direct {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/m;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    new-instance v0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;

    new-instance v1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;

    invoke-direct {v1, p0, v2}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;I)V

    new-instance v2, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/m;-><init>(Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/c$a;I)V

    invoke-direct {v0, v1, v2}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/observers/ConsumerSingleObserver;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Consumer;)V

    invoke-virtual {p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/Single;->a(Lcom/perfectcorp/thirdparty/io/reactivex/f;)V

    return-void
.end method
