.class public final Landroidx/navigation/internal/NavGraphImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/navigation/internal/NavGraphImpl;",
        "",
        "Landroidx/navigation/NavGraph;",
        "graph",
        "<init>",
        "(Landroidx/navigation/NavGraph;)V",
        "navigation-common_release"
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
.field public final a:Landroidx/navigation/NavGraph;

.field public final b:Landroidx/collection/SparseArrayCompat;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavGraph;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    new-instance p1, Landroidx/collection/SparseArrayCompat;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Landroidx/collection/SparseArrayCompat;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/navigation/NavDestination;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v1, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    iget-object v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "Destinations must have an id or route. Call setId(), setRoute(), or include an android:id or app:route in your navigation XML."

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    iget-object v2, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    iget-object v3, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v3, v3, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    const-string v4, "Destination "

    if-eqz v3, :cond_3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p0, " cannot have the same route as graph "

    invoke-static {v4, p1, p0, v2}, Ltg0;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_3
    :goto_1
    iget-object v0, v2, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-eq v1, v0, :cond_7

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v1}, Landroidx/collection/SparseArrayCompat;->b(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination;

    if-ne v0, p1, :cond_4

    return-void

    :cond_4
    iget-object v1, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    :cond_5
    iput-object v2, p1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    iget-object v0, p1, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v0, v0, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    invoke-virtual {p0, v0, p1}, Landroidx/collection/SparseArrayCompat;->d(ILjava/lang/Object;)V

    return-void

    :cond_6
    const-string p0, "Destination already has a parent set. Call NavGraph.remove() to remove the previous parent."

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-void

    :cond_7
    const-string p0, " cannot have the same id as graph "

    invoke-static {v4, p1, p0, v2}, Ltg0;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(I)Landroidx/navigation/NavDestination;
    .locals 3

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2, v1}, Landroidx/navigation/internal/NavGraphImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/collection/SparseArrayKt$valueIterator$1;

    invoke-direct {v1, v0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroidx/navigation/NavDestination;

    iget-object v4, v3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v4, v4, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v3, v3, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    invoke-virtual {v3, p1}, Landroidx/navigation/internal/NavDestinationImpl;->a(Ljava/lang/String;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :cond_2
    :goto_0
    check-cast v1, Landroidx/navigation/NavDestination;

    if-nez v1, :cond_5

    if-eqz p2, :cond_4

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    iget-object p0, p0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v2

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroidx/navigation/internal/NavGraphImpl;->c(Ljava/lang/String;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v2

    :cond_5
    return-object v1
.end method

.method public final d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;
    .locals 5

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->b:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v0, p1}, Landroidx/collection/SparseArrayCompat;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    invoke-static {v1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    iget-object v4, p3, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    if-eqz p4, :cond_6

    new-instance v1, Landroidx/collection/SparseArrayKt$valueIterator$1;

    invoke-direct {v1, v0}, Landroidx/collection/SparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/SparseArrayCompat;)V

    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->b(Ljava/util/Iterator;)Lkotlin/sequences/ConstrainedOnceSequence;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/sequences/ConstrainedOnceSequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/navigation/NavDestination;

    instance-of v3, v1, Landroidx/navigation/NavGraph;

    if-eqz v3, :cond_4

    invoke-virtual {v1, p2}, Landroidx/navigation/NavDestination;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v1, Landroidx/navigation/NavGraph;

    const/4 v3, 0x1

    iget-object v1, v1, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {v1, p1, p0, p3, v3}, Landroidx/navigation/internal/NavGraphImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    :cond_5
    move-object v1, v2

    :cond_6
    :goto_2
    if-nez v1, :cond_8

    iget-object v0, p0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p2}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p2, Landroidx/navigation/NavGraph;->h:Landroidx/navigation/internal/NavGraphImpl;

    invoke-virtual {p2, p1, p0, p3, p4}, Landroidx/navigation/internal/NavGraphImpl;->d(ILandroidx/navigation/NavDestination;Landroidx/navigation/NavDestination;Z)Landroidx/navigation/NavDestination;

    move-result-object p0

    return-object p0

    :cond_7
    return-object v2

    :cond_8
    return-object v1
.end method

.method public final e(Landroidx/navigation/NavDestination$DeepLinkMatch;Landroidx/navigation/NavDeepLinkRequest;ZLandroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;
    .locals 5

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavDestination;

    invoke-static {v2, p4}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2, p2}, Landroidx/navigation/NavDestination;->i(Landroidx/navigation/NavDeepLinkRequest;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    iget-object v1, p0, Landroidx/navigation/NavDestination;->d:Landroidx/navigation/NavGraph;

    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    invoke-virtual {v1, p4}, Landroidx/navigation/NavGraph;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-virtual {v1, p2, p0}, Landroidx/navigation/NavGraph;->p(Landroidx/navigation/NavDeepLinkRequest;Landroidx/navigation/NavDestination;)Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object v3

    :cond_3
    filled-new-array {p1, v0, v3}, [Landroidx/navigation/NavDestination$DeepLinkMatch;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/ArraysKt;->v([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->R(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavDestination$DeepLinkMatch;

    return-object p0
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    iget-object v1, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->e:I

    if-eq p1, v1, :cond_1

    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroidx/navigation/internal/NavGraphImpl;->g(Ljava/lang/String;)V

    :cond_0
    iput p1, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    iput-object v1, p0, Landroidx/navigation/internal/NavGraphImpl;->d:Ljava/lang/String;

    return-void

    :cond_1
    const-string p0, "Start destination "

    const-string v1, " cannot use the same id as the graph "

    invoke-static {p0, p1, v1, v0}, Llc0;->m(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/navigation/internal/NavGraphImpl;->a:Landroidx/navigation/NavGraph;

    iget-object v1, v0, Landroidx/navigation/NavDestination;->c:Landroidx/navigation/internal/NavDestinationImpl;

    iget-object v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->f:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Lkotlin/text/StringsKt;->w(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroidx/navigation/NavDestination;->g:Landroidx/navigation/NavDestination$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android-app://androidx.navigation/"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    iput v0, p0, Landroidx/navigation/internal/NavGraphImpl;->c:I

    iput-object p1, p0, Landroidx/navigation/internal/NavGraphImpl;->e:Ljava/lang/String;

    return-void

    :cond_1
    const-string p0, "Cannot have an empty start destination route"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p0, "Start destination "

    const-string v1, " cannot use the same route as the graph "

    invoke-static {p0, p1, v1, v0}, Ltg0;->h(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
