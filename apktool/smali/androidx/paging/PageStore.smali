.class public final Landroidx/paging/PageStore;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/paging/PlaceholderPaddedList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/PageStore$Companion;,
        Landroidx/paging/PageStore$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/paging/PlaceholderPaddedList<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\u000fB+\u0012\u0012\u0010\u0006\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00028\u00000\u00050\u0004\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bB\u0017\u0008\u0016\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u000c\u00a2\u0006\u0004\u0008\n\u0010\u000e\u00a8\u0006\u0010"
    }
    d2 = {
        "Landroidx/paging/PageStore;",
        "",
        "T",
        "Landroidx/paging/PlaceholderPaddedList;",
        "",
        "Landroidx/paging/TransformablePage;",
        "pages",
        "",
        "placeholdersBefore",
        "placeholdersAfter",
        "<init>",
        "(Ljava/util/List;II)V",
        "Landroidx/paging/PageEvent$Insert;",
        "insertEvent",
        "(Landroidx/paging/PageEvent$Insert;)V",
        "Companion",
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


# static fields
.field public static final e:Landroidx/paging/PageStore$Companion;

.field public static final f:Landroidx/paging/PageStore;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/paging/PageStore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/paging/PageStore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/paging/PageStore;->e:Landroidx/paging/PageStore$Companion;

    new-instance v0, Landroidx/paging/PageStore;

    sget-object v1, Landroidx/paging/PageEvent$Insert;->g:Landroidx/paging/PageEvent$Insert$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/paging/PageEvent$Insert;->h:Landroidx/paging/PageEvent$Insert;

    invoke-direct {v0, v1}, Landroidx/paging/PageStore;-><init>(Landroidx/paging/PageEvent$Insert;)V

    sput-object v0, Landroidx/paging/PageStore;->f:Landroidx/paging/PageStore;

    return-void
.end method

.method public constructor <init>(Landroidx/paging/PageEvent$Insert;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/paging/PageEvent$Insert<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->b:Ljava/util/List;

    .line 51
    iget v1, p1, Landroidx/paging/PageEvent$Insert;->c:I

    .line 52
    iget p1, p1, Landroidx/paging/PageEvent$Insert;->d:I

    .line 53
    invoke-direct {p0, v0, v1, p1}, Landroidx/paging/PageStore;-><init>(Ljava/util/List;II)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/paging/TransformablePage<",
            "TT;>;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    iget-object v1, v1, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iput v0, p0, Landroidx/paging/PageStore;->b:I

    iput p2, p0, Landroidx/paging/PageStore;->c:I

    iput p3, p0, Landroidx/paging/PageStore;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageStore;->b:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageStore;->c:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Landroidx/paging/PageStore;->d:I

    return p0
.end method

.method public final d(I)Landroidx/paging/ViewportHint$Access;
    .locals 11

    iget v0, p0, Landroidx/paging/PageStore;->c:I

    sub-int v0, p1, v0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/TransformablePage;

    iget-object v3, v3, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->F(Ljava/util/List;)I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    iget-object v2, v2, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/paging/TransformablePage;

    iget v3, p0, Landroidx/paging/PageStore;->c:I

    sub-int v7, p1, v3

    invoke-virtual {p0}, Landroidx/paging/PageStore;->getSize()I

    move-result v3

    sub-int/2addr v3, p1

    iget p1, p0, Landroidx/paging/PageStore;->d:I

    sub-int/2addr v3, p1

    const/4 p1, 0x1

    add-int/lit8 v8, v3, -0x1

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    iget-object v2, v2, Landroidx/paging/TransformablePage;->a:[I

    invoke-static {v2}, Lkotlin/collections/ArraysKt;->M([I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0}, Landroidx/paging/PageStore;->f()I

    move-result v10

    new-instance v4, Landroidx/paging/ViewportHint$Access;

    iget v5, v1, Landroidx/paging/TransformablePage;->c:I

    iget-object p0, v1, Landroidx/paging/TransformablePage;->d:Ljava/util/List;

    if-eqz p0, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v1

    invoke-virtual {v1, v0}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v0

    :cond_1
    move v6, v0

    invoke-direct/range {v4 .. v10}, Landroidx/paging/ViewportHint$Access;-><init>(IIIIII)V

    return-object v4
.end method

.method public final e(I)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    iget-object v2, v2, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, p1, :cond_0

    goto :goto_1

    :cond_0
    sub-int/2addr p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/TransformablePage;

    iget-object p0, p0, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f()I
    .locals 4

    iget-object p0, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->M(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/paging/TransformablePage;

    iget-object p0, p0, Landroidx/paging/TransformablePage;->a:[I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    aget v0, p0, v0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt v2, v1, :cond_2

    :goto_0
    aget v3, p0, v2

    if-ge v0, v3, :cond_1

    move v0, v3

    :cond_1
    if-eq v2, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final g(Landroidx/paging/PageEvent;)Landroidx/paging/PagingDataEvent;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/paging/PageEvent$Insert;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/paging/PageStore;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    check-cast p1, Landroidx/paging/PageEvent$Insert;

    iget-object v0, p1, Landroidx/paging/PageEvent$Insert;->b:Ljava/util/List;

    move-object v4, v0

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/paging/TransformablePage;

    iget-object v7, v7, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    :cond_0
    iget-object v5, p1, Landroidx/paging/PageEvent$Insert;->a:Landroidx/paging/LoadType;

    sget-object v7, Landroidx/paging/PageStore$WhenMappings;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v7, v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_5

    const/4 v7, 0x2

    if-eq v5, v7, :cond_3

    const/4 v2, 0x3

    if-ne v5, v2, :cond_2

    iget v1, p0, Landroidx/paging/PageStore;->d:I

    iget v2, p0, Landroidx/paging/PageStore;->b:I

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v5, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v0, p0, Landroidx/paging/PageStore;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Landroidx/paging/PageStore;->b:I

    iget p1, p1, Landroidx/paging/PageEvent$Insert;->d:I

    iput p1, p0, Landroidx/paging/PageStore;->d:I

    iget p1, p0, Landroidx/paging/PageStore;->c:I

    add-int/2addr p1, v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/paging/TransformablePage;

    iget-object v3, v3, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    iget p0, p0, Landroidx/paging/PageStore;->d:I

    new-instance v2, Landroidx/paging/PagingDataEvent$Append;

    invoke-direct {v2, p1, v0, p0, v1}, Landroidx/paging/PagingDataEvent$Append;-><init>(ILjava/util/List;II)V

    return-object v2

    :cond_2
    invoke-static {}, Lv40;->g()V

    return-object v1

    :cond_3
    iget v1, p0, Landroidx/paging/PageStore;->c:I

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    iget v0, p0, Landroidx/paging/PageStore;->b:I

    add-int/2addr v0, v6

    iput v0, p0, Landroidx/paging/PageStore;->b:I

    iget p1, p1, Landroidx/paging/PageEvent$Insert;->c:I

    iput p1, p0, Landroidx/paging/PageStore;->c:I

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/paging/TransformablePage;

    iget-object v2, v2, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_4
    iget p0, p0, Landroidx/paging/PageStore;->c:I

    new-instance v0, Landroidx/paging/PagingDataEvent$Prepend;

    invoke-direct {v0, p1, p0, v1}, Landroidx/paging/PagingDataEvent$Prepend;-><init>(Ljava/util/List;II)V

    return-object v0

    :cond_5
    const-string p0, "Paging received a refresh event in the middle of an actively loading generation\nof PagingData. If you see this exception, it is most likely a bug in the library.\nPlease file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1

    :cond_6
    instance-of v0, p1, Landroidx/paging/PageEvent$Drop;

    if-eqz v0, :cond_b

    check-cast p1, Landroidx/paging/PageEvent$Drop;

    new-instance v0, Lkotlin/ranges/IntRange;

    iget v1, p1, Landroidx/paging/PageEvent$Drop;->b:I

    iget v4, p1, Landroidx/paging/PageEvent$Drop;->d:I

    iget v5, p1, Landroidx/paging/PageEvent$Drop;->c:I

    invoke-direct {v0, v1, v5}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v3, v2

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/paging/TransformablePage;

    iget-object v6, v5, Landroidx/paging/TransformablePage;->a:[I

    array-length v7, v6

    move v8, v2

    :goto_4
    if-ge v8, v7, :cond_7

    aget v9, v6, v8

    invoke-virtual {v0, v9}, Lkotlin/ranges/IntRange;->m(I)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v5, v5, Landroidx/paging/TransformablePage;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v3, v5

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_9
    iget v0, p0, Landroidx/paging/PageStore;->b:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/paging/PageStore;->b:I

    iget-object p1, p1, Landroidx/paging/PageEvent$Drop;->a:Landroidx/paging/LoadType;

    sget-object v1, Landroidx/paging/LoadType;->PREPEND:Landroidx/paging/LoadType;

    if-ne p1, v1, :cond_a

    iget p1, p0, Landroidx/paging/PageStore;->c:I

    iput v4, p0, Landroidx/paging/PageStore;->c:I

    new-instance p0, Landroidx/paging/PagingDataEvent$DropPrepend;

    invoke-direct {p0, v3, v4, p1}, Landroidx/paging/PagingDataEvent$DropPrepend;-><init>(III)V

    return-object p0

    :cond_a
    iget p1, p0, Landroidx/paging/PageStore;->d:I

    iput v4, p0, Landroidx/paging/PageStore;->d:I

    new-instance v1, Landroidx/paging/PagingDataEvent$DropAppend;

    iget p0, p0, Landroidx/paging/PageStore;->c:I

    add-int/2addr p0, v0

    invoke-direct {v1, p0, v3, v4, p1}, Landroidx/paging/PagingDataEvent$DropAppend;-><init>(IIII)V

    return-object v1

    :cond_b
    const-string p0, "Paging received an event to process StaticList or LoadStateUpdate while\nprocessing Inserts and Drops. If you see this exception, it is most\nlikely a bug in the library. Please file a bug so we can fix it at:\nhttps://issuetracker.google.com/issues/new?component=413106"

    invoke-static {p0}, Lmd;->k(Ljava/lang/String;)V

    return-object v1
.end method

.method public final getSize()I
    .locals 2

    iget v0, p0, Landroidx/paging/PageStore;->c:I

    iget v1, p0, Landroidx/paging/PageStore;->b:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/paging/PageStore;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget v0, p0, Landroidx/paging/PageStore;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Landroidx/paging/PageStore;->e(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroidx/paging/PageStore;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " placeholders), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/paging/PageStore;->d:I

    const-string v0, " placeholders)]"

    invoke-static {p0, v0, v1}, La;->i(ILjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
