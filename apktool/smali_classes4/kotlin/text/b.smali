.class public final synthetic Lkotlin/text/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/b;->b:Ljava/util/List;

    iput-boolean p2, p0, Lkotlin/text/b;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v2, p1

    check-cast v2, Ljava/lang/CharSequence;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lkotlin/text/b;->b:Ljava/util/List;

    check-cast p2, Ljava/util/Collection;

    iget-boolean v5, p0, Lkotlin/text/b;->c:Z

    const/4 p0, 0x0

    const/4 v9, 0x0

    if-nez v5, :cond_2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    check-cast p2, Ljava/lang/Iterable;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v2, p2, p1, p0, v0}, Lkotlin/text/StringsKt;->v(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result p0

    if-gez p0, :cond_1

    :cond_0
    move-object p1, v9

    goto/16 :goto_4

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    new-instance v0, Lkotlin/ranges/IntRange;

    if-gez p1, :cond_3

    move p1, p0

    :cond_3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-direct {v0, p1, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    instance-of p0, v2, Ljava/lang/String;

    iget p1, v0, Lkotlin/ranges/IntProgression;->d:I

    iget v10, v0, Lkotlin/ranges/IntProgression;->c:I

    iget v0, v0, Lkotlin/ranges/IntProgression;->b:I

    if-eqz p0, :cond_9

    if-lez p1, :cond_4

    if-le v0, v10, :cond_5

    :cond_4
    if-gez p1, :cond_0

    if-gt v10, v0, :cond_0

    :cond_5
    move v7, v0

    :goto_0
    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->D(Ljava/lang/String;IZLjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_7
    move-object v0, v9

    :goto_1
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    if-eq v7, v10, :cond_0

    add-int/2addr v7, p1

    goto :goto_0

    :cond_9
    if-lez p1, :cond_a

    if-le v0, v10, :cond_b

    :cond_a
    if-gez p1, :cond_0

    if-gt v10, v0, :cond_0

    :cond_b
    move v3, v0

    :goto_2
    move-object p0, p2

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt__StringsKt;->f(Ljava/lang/CharSequence;ILjava/lang/CharSequence;IIZ)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    :cond_d
    move-object v6, v9

    :goto_3
    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, p0, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    if-eq v3, v10, :cond_0

    add-int/2addr v3, p1

    goto :goto_2

    :goto_4
    if-eqz p1, :cond_f

    iget-object p0, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Lkotlin/Pair;

    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_f
    return-object v9
.end method
