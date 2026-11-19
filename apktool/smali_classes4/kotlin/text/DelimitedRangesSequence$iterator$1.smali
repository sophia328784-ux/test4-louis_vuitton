.class public final Lkotlin/text/DelimitedRangesSequence$iterator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlin/ranges/IntRange;",
        ">;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001\u00a8\u0006\u0003"
    }
    d2 = {
        "kotlin/text/DelimitedRangesSequence$iterator$1",
        "",
        "Lkotlin/ranges/IntRange;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:I

.field public c:I

.field public d:I

.field public e:Lkotlin/ranges/IntRange;

.field public f:I

.field public final synthetic g:Lkotlin/text/DelimitedRangesSequence;


# direct methods
.method public constructor <init>(Lkotlin/text/DelimitedRangesSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->g:Lkotlin/text/DelimitedRangesSequence;

    const/4 v0, -0x1

    iput v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    iget v0, p1, Lkotlin/text/DelimitedRangesSequence;->b:I

    iget-object p1, p1, Lkotlin/text/DelimitedRangesSequence;->a:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lkotlin/ranges/RangesKt;->d(III)I

    move-result p1

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    iput p1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->g:Lkotlin/text/DelimitedRangesSequence;

    iget-object v1, v0, Lkotlin/text/DelimitedRangesSequence;->a:Ljava/lang/CharSequence;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    const/4 v3, 0x0

    if-gez v2, :cond_0

    iput v3, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    return-void

    :cond_0
    iget v4, v0, Lkotlin/text/DelimitedRangesSequence;->c:I

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_1

    iget v7, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:I

    add-int/2addr v7, v6

    iput v7, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->f:I

    if-ge v7, v4, :cond_2

    :cond_1
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v2, v4, :cond_3

    :cond_2
    new-instance v0, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    goto :goto_0

    :cond_3
    iget-object v0, v0, Lkotlin/text/DelimitedRangesSequence;->d:Lkotlin/jvm/functions/Function2;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-nez v0, :cond_4

    new-instance v0, Lkotlin/ranges/IntRange;

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v1}, Lkotlin/text/StringsKt;->t(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    iput-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    iput v5, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v0, v0, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iget v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->j(II)Lkotlin/ranges/IntRange;

    move-result-object v2

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    add-int/2addr v1, v0

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->c:I

    if-nez v0, :cond_5

    move v3, v6

    :cond_5
    add-int/2addr v1, v3

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->d:I

    :goto_0
    iput v6, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a()V

    :cond_0
    iget p0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lkotlin/text/DelimitedRangesSequence$iterator$1;->a()V

    :cond_0
    iget v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->e:Lkotlin/ranges/IntRange;

    iput v1, p0, Lkotlin/text/DelimitedRangesSequence$iterator$1;->b:I

    return-object v0

    :cond_1
    invoke-static {}, Lb21;->x()V

    return-object v2
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
