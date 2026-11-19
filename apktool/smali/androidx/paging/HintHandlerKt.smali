.class public abstract Landroidx/paging/HintHandlerKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "paging-common_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/paging/ViewportHint;Landroidx/paging/ViewportHint;Landroidx/paging/LoadType;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/ViewportHint$Initial;

    if-eqz v1, :cond_1

    instance-of v1, p0, Landroidx/paging/ViewportHint$Access;

    if-eqz v1, :cond_1

    return v0

    :cond_1
    instance-of v1, p0, Landroidx/paging/ViewportHint$Initial;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    instance-of v1, p1, Landroidx/paging/ViewportHint$Access;

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Landroidx/paging/ViewportHint;->c:I

    iget v3, p1, Landroidx/paging/ViewportHint;->c:I

    if-eq v1, v3, :cond_3

    return v0

    :cond_3
    iget v1, p0, Landroidx/paging/ViewportHint;->d:I

    iget v3, p1, Landroidx/paging/ViewportHint;->d:I

    if-eq v1, v3, :cond_4

    return v0

    :cond_4
    invoke-virtual {p1, p2}, Landroidx/paging/ViewportHint;->a(Landroidx/paging/LoadType;)I

    move-result p1

    invoke-virtual {p0, p2}, Landroidx/paging/ViewportHint;->a(Landroidx/paging/LoadType;)I

    move-result p0

    if-gt p1, p0, :cond_5

    return v2

    :cond_5
    return v0
.end method
