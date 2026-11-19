.class public final Landroidx/paging/FlattenedPageEventStorage;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/FlattenedPageEventStorage$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0001\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Landroidx/paging/FlattenedPageEventStorage;",
        "",
        "T",
        "<init>",
        "()V",
        "paging-common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public final c:Lkotlin/collections/ArrayDeque;

.field public final d:Landroidx/paging/MutableLoadStateCollection;

.field public e:Landroidx/paging/LoadStates;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlin/collections/ArrayDeque;

    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->c:Lkotlin/collections/ArrayDeque;

    new-instance v0, Landroidx/paging/MutableLoadStateCollection;

    invoke-direct {v0}, Landroidx/paging/MutableLoadStateCollection;-><init>()V

    iput-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->d:Landroidx/paging/MutableLoadStateCollection;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/paging/PageEvent;)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/paging/FlattenedPageEventStorage;->f:Z

    instance-of v1, p1, Landroidx/paging/PageEvent$Insert;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v4, p0, Landroidx/paging/FlattenedPageEventStorage;->c:Lkotlin/collections/ArrayDeque;

    iget-object v5, p0, Landroidx/paging/FlattenedPageEventStorage;->d:Landroidx/paging/MutableLoadStateCollection;

    if-eqz v1, :cond_3

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->e:Landroidx/paging/LoadStates;

    iget v6, p1, Landroidx/paging/PageEvent$Insert;->c:I

    iget v7, p1, Landroidx/paging/PageEvent$Insert;->d:I

    iget-object v8, p1, Landroidx/paging/PageEvent$Insert;->b:Ljava/util/List;

    invoke-virtual {v5, v1}, Landroidx/paging/MutableLoadStateCollection;->b(Landroidx/paging/LoadStates;)V

    iget-object v1, p1, Landroidx/paging/PageEvent$Insert;->f:Landroidx/paging/LoadStates;

    iput-object v1, p0, Landroidx/paging/FlattenedPageEventStorage;->e:Landroidx/paging/LoadStates;

    iget-object p1, p1, Landroidx/paging/PageEvent$Insert;->a:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/FlattenedPageEventStorage$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    if-eq p1, v0, :cond_2

    if-eq p1, v2, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->clear()V

    iput v7, p0, Landroidx/paging/FlattenedPageEventStorage;->b:I

    iput v6, p0, Landroidx/paging/FlattenedPageEventStorage;->a:I

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v4, v8}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_1
    iput v7, p0, Landroidx/paging/FlattenedPageEventStorage;->b:I

    check-cast v8, Ljava/util/Collection;

    invoke-virtual {v4, v8}, Lkotlin/collections/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_2
    iput v6, p0, Landroidx/paging/FlattenedPageEventStorage;->a:I

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v0

    sget-object p1, Lkotlin/ranges/IntProgression;->e:Lkotlin/ranges/IntProgression$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lkotlin/ranges/IntProgression;

    const/4 v0, -0x1

    invoke-direct {p1, p0, v3, v0}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {p1}, Lkotlin/ranges/IntProgression;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    move-object p1, p0

    check-cast p1, Lkotlin/ranges/IntProgressionIterator;

    iget-boolean p1, p1, Lkotlin/ranges/IntProgressionIterator;->d:Z

    if-eqz p1, :cond_a

    move-object p1, p0

    check-cast p1, Lkotlin/collections/IntIterator;

    invoke-virtual {p1}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result p1

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4, p1}, Lkotlin/collections/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    instance-of v1, p1, Landroidx/paging/PageEvent$Drop;

    if-eqz v1, :cond_6

    check-cast p1, Landroidx/paging/PageEvent$Drop;

    iget-object v1, p1, Landroidx/paging/PageEvent$Drop;->a:Landroidx/paging/LoadType;

    iget v6, p1, Landroidx/paging/PageEvent$Drop;->d:I

    sget-object v7, Landroidx/paging/LoadState$NotLoading;->b:Landroidx/paging/LoadState$NotLoading$Companion;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/paging/LoadState$NotLoading;->d:Landroidx/paging/LoadState$NotLoading;

    invoke-virtual {v5, v1, v7}, Landroidx/paging/MutableLoadStateCollection;->c(Landroidx/paging/LoadType;Landroidx/paging/LoadState;)V

    sget-object v5, Landroidx/paging/FlattenedPageEventStorage$WhenMappings;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v5, v1

    if-eq v1, v0, :cond_5

    if-ne v1, v2, :cond_4

    iput v6, p0, Landroidx/paging/FlattenedPageEventStorage;->b:I

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result p0

    :goto_1
    if-ge v3, p0, :cond_a

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string p0, "Page drop type must be prepend or append"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_5
    iput v6, p0, Landroidx/paging/FlattenedPageEventStorage;->a:I

    invoke-virtual {p1}, Landroidx/paging/PageEvent$Drop;->a()I

    move-result p0

    :goto_2
    if-ge v3, p0, :cond_a

    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    instance-of v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    if-eqz v0, :cond_7

    check-cast p1, Landroidx/paging/PageEvent$LoadStateUpdate;

    iget-object v0, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->a:Landroidx/paging/LoadStates;

    invoke-virtual {v5, v0}, Landroidx/paging/MutableLoadStateCollection;->b(Landroidx/paging/LoadStates;)V

    iget-object p1, p1, Landroidx/paging/PageEvent$LoadStateUpdate;->b:Landroidx/paging/LoadStates;

    iput-object p1, p0, Landroidx/paging/FlattenedPageEventStorage;->e:Landroidx/paging/LoadStates;

    return-void

    :cond_7
    instance-of v0, p1, Landroidx/paging/PageEvent$StaticList;

    if-eqz v0, :cond_a

    check-cast p1, Landroidx/paging/PageEvent$StaticList;

    iget-object v0, p1, Landroidx/paging/PageEvent$StaticList;->b:Landroidx/paging/LoadStates;

    if-eqz v0, :cond_8

    invoke-virtual {v5, v0}, Landroidx/paging/MutableLoadStateCollection;->b(Landroidx/paging/LoadStates;)V

    :cond_8
    iget-object v0, p1, Landroidx/paging/PageEvent$StaticList;->c:Landroidx/paging/LoadStates;

    if-eqz v0, :cond_9

    iput-object v0, p0, Landroidx/paging/FlattenedPageEventStorage;->e:Landroidx/paging/LoadStates;

    :cond_9
    invoke-virtual {v4}, Lkotlin/collections/ArrayDeque;->clear()V

    iput v3, p0, Landroidx/paging/FlattenedPageEventStorage;->b:I

    iput v3, p0, Landroidx/paging/FlattenedPageEventStorage;->a:I

    new-instance p0, Landroidx/paging/TransformablePage;

    iget-object p1, p1, Landroidx/paging/PageEvent$StaticList;->a:Ljava/util/List;

    invoke-direct {p0, v3, p1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    invoke-virtual {v4, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 6

    iget-boolean v0, p0, Landroidx/paging/FlattenedPageEventStorage;->f:Z

    if-nez v0, :cond_0

    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroidx/paging/FlattenedPageEventStorage;->d:Landroidx/paging/MutableLoadStateCollection;

    invoke-virtual {v1}, Landroidx/paging/MutableLoadStateCollection;->d()Landroidx/paging/LoadStates;

    move-result-object v1

    iget-object v2, p0, Landroidx/paging/FlattenedPageEventStorage;->c:Lkotlin/collections/ArrayDeque;

    invoke-virtual {v2}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Landroidx/paging/PageEvent$Insert;->g:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->y0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    iget v4, p0, Landroidx/paging/FlattenedPageEventStorage;->a:I

    iget v5, p0, Landroidx/paging/FlattenedPageEventStorage;->b:I

    iget-object p0, p0, Landroidx/paging/FlattenedPageEventStorage;->e:Landroidx/paging/LoadStates;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v4, v5, v1, p0}, Landroidx/paging/PageEvent$Insert$Companion;->a(Ljava/util/List;IILandroidx/paging/LoadStates;Landroidx/paging/LoadStates;)Landroidx/paging/PageEvent$Insert;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_1
    new-instance v2, Landroidx/paging/PageEvent$LoadStateUpdate;

    iget-object p0, p0, Landroidx/paging/FlattenedPageEventStorage;->e:Landroidx/paging/LoadStates;

    invoke-direct {v2, v1, p0}, Landroidx/paging/PageEvent$LoadStateUpdate;-><init>(Landroidx/paging/LoadStates;Landroidx/paging/LoadStates;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
