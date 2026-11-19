.class public final Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/runtime/composer/GroupSourceInformation;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;",
        "Landroidx/compose/runtime/composer/GroupSourceInformation;",
        "",
        "key",
        "",
        "sourceInformation",
        "dataStartOffset",
        "<init>",
        "(ILjava/lang/String;I)V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:I

.field public d:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->a:I

    iput-object p2, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->b:Ljava/lang/String;

    iput p3, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->c:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->c:I

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final f(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z
    .locals 5

    iget-object p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->f(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public final g()Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move-object v3, v1

    :goto_1
    instance-of v0, v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    if-eqz v0, :cond_2

    move-object v1, v3

    check-cast v1, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->g()Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method public final getKey()I
    .locals 0

    iget p0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->a:I

    return p0
.end method

.method public final h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;

    if-eqz v4, :cond_1

    if-eq v3, p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    instance-of v4, v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    if-eqz v4, :cond_2

    check-cast v3, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;

    invoke-virtual {v3, p1}, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->h(Landroidx/compose/runtime/composer/gapbuffer/GapAnchor;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/runtime/composer/gapbuffer/GapGroupSourceInformation;->d:Ljava/util/ArrayList;

    const/4 p0, 0x0

    return p0

    :cond_4
    return v1
.end method
