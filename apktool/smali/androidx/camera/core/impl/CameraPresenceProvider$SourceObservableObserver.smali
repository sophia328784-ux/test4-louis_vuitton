.class final Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/camera/core/impl/Observable$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/impl/CameraPresenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SourceObservableObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/camera/core/impl/Observable$Observer<",
        "Ljava/util/List<",
        "+",
        "Landroidx/camera/core/CameraIdentifier;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;",
        "Landroidx/camera/core/impl/Observable$Observer;",
        "",
        "Landroidx/camera/core/CameraIdentifier;",
        "<init>",
        "(Landroidx/camera/core/impl/CameraPresenceProvider;)V",
        "camera-core_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Landroidx/camera/core/impl/CameraPresenceProvider;


# direct methods
.method public constructor <init>(Landroidx/camera/core/impl/CameraPresenceProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 10

    check-cast p1, Ljava/util/List;

    const-string v0, "CameraPresencePrvdr"

    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object v1, v1, Landroidx/camera/core/impl/CameraPresenceProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_a

    :cond_0
    iget-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object v1, v1, Landroidx/camera/core/impl/CameraPresenceProvider;->c:Landroidx/camera/core/impl/CameraFactory;

    if-nez v1, :cond_1

    goto/16 :goto_a

    :cond_1
    const/16 v2, 0xa

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v4}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v3, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    :cond_3
    :try_start_0
    invoke-interface {v1, v3}, Landroidx/camera/core/impl/CameraPresenceMonitor;->e(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraFactory;->d()Ljava/util/LinkedHashSet;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroidx/camera/core/CameraIdentifier;->c:Landroidx/camera/core/CameraIdentifier$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    invoke-static {v3, v4, v4}, Landroidx/camera/core/CameraIdentifier$Companion;->a(Ljava/lang/String;Ljava/lang/String;Landroidx/camera/core/impl/Identifier;)Landroidx/camera/core/CameraIdentifier;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->g:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_a

    :cond_5
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->B0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v4, v5}, Lkotlin/collections/SetsKt;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v5

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v3, v4}, Lkotlin/collections/SetsKt;->d(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v8}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const/4 v7, 0x5

    :try_start_1
    move-object v8, v3

    check-cast v8, Ljava/lang/Iterable;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v9}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroidx/camera/core/impl/CameraPresenceProvider;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->d:Landroidx/camera/core/impl/CameraRepository;

    const/4 v9, 0x3

    if-eqz v8, :cond_8

    invoke-static {v9, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    invoke-virtual {v8, v6}, Landroidx/camera/core/impl/CameraRepository;->d(Ljava/util/List;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    :cond_8
    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    invoke-static {v9, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    invoke-interface {v9, v6}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->d(Ljava/util/List;)V

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    iput-object v1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->g:Ljava/util/List;

    move-object v1, v5

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v6}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->d:Landroidx/camera/core/impl/CameraRepository;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v8, :cond_a

    goto :goto_5

    :cond_a
    :try_start_2
    invoke-virtual {v8, v6}, Landroidx/camera/core/impl/CameraRepository;->f(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v6

    invoke-interface {v6}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v6}, Landroidx/camera/core/impl/CameraPresenceProvider;->c(Landroidx/camera/core/impl/CameraInfoInternal;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_0
    :try_start_3
    invoke-static {v7, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_5

    :cond_b
    invoke-virtual {p0, v5, v3}, Landroidx/camera/core/impl/CameraPresenceProvider;->a(Ljava/util/Set;Ljava/util/Set;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    invoke-static {v0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v2}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->n(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/InternalCameraPresenceListener;

    :try_start_4
    invoke-interface {v2, v1}, Landroidx/camera/core/impl/InternalCameraPresenceListener;->d(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v1}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->d:Landroidx/camera/core/impl/CameraRepository;

    if-nez v2, :cond_e

    goto :goto_8

    :cond_e
    :try_start_5
    invoke-virtual {v2, v1}, Landroidx/camera/core/impl/CameraRepository;->f(Ljava/lang/String;)Landroidx/camera/core/impl/CameraInternal;

    move-result-object v1

    invoke-interface {v1}, Landroidx/camera/core/impl/CameraInternal;->k()Landroidx/camera/core/impl/CameraInfoInternal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1}, Landroidx/camera/core/impl/CameraPresenceProvider;->c(Landroidx/camera/core/impl/CameraInfoInternal;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_8

    :catch_3
    invoke-static {v7, v0}, Landroidx/camera/core/Logger;->c(ILjava/lang/String;)Z

    goto :goto_8

    :cond_f
    check-cast v5, Ljava/lang/Iterable;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/camera/core/CameraIdentifier;

    invoke-virtual {v0}, Landroidx/camera/core/CameraIdentifier;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/camera/core/impl/CameraPresenceProvider;->b(Ljava/lang/String;)V

    goto :goto_9

    :catch_4
    invoke-static {v0}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->e:Landroidx/camera/core/impl/Observable;

    if-eqz p0, :cond_10

    invoke-interface {p0}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_10
    :goto_a
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider$SourceObservableObserver;->a:Landroidx/camera/core/impl/CameraPresenceProvider;

    iget-object p1, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "CameraPresencePrvdr"

    invoke-static {p1}, Landroidx/camera/core/Logger;->b(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/camera/core/impl/CameraPresenceProvider;->e:Landroidx/camera/core/impl/Observable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroidx/camera/core/impl/Observable;->a()Lcom/google/common/util/concurrent/ListenableFuture;

    :cond_1
    :goto_0
    return-void
.end method
