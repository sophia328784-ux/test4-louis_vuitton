.class public abstract Landroidx/paging/ViewportHint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/paging/ViewportHint$Access;,
        Landroidx/paging/ViewportHint$Initial;,
        Landroidx/paging/ViewportHint$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00080\u0018\u00002\u00020\u0001:\u0002\u0002\u0003\u0082\u0001\u0002\u0004\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Landroidx/paging/ViewportHint;",
        "",
        "Access",
        "Initial",
        "Landroidx/paging/ViewportHint$Access;",
        "Landroidx/paging/ViewportHint$Initial;",
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
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/ViewportHint;->a:I

    iput p2, p0, Landroidx/paging/ViewportHint;->b:I

    iput p3, p0, Landroidx/paging/ViewportHint;->c:I

    iput p4, p0, Landroidx/paging/ViewportHint;->d:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/paging/LoadType;)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/paging/ViewportHint$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroidx/paging/ViewportHint;->b:I

    return p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget p0, p0, Landroidx/paging/ViewportHint;->a:I

    return p0

    :cond_2
    const-string p0, "Cannot get presentedItems for loadType: REFRESH"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/paging/ViewportHint;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/paging/ViewportHint;

    iget v1, p1, Landroidx/paging/ViewportHint;->a:I

    iget v3, p0, Landroidx/paging/ViewportHint;->a:I

    if-ne v3, v1, :cond_2

    iget v1, p0, Landroidx/paging/ViewportHint;->b:I

    iget v3, p1, Landroidx/paging/ViewportHint;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroidx/paging/ViewportHint;->c:I

    iget v3, p1, Landroidx/paging/ViewportHint;->c:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroidx/paging/ViewportHint;->d:I

    iget p1, p1, Landroidx/paging/ViewportHint;->d:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Landroidx/paging/ViewportHint;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    iget v1, p0, Landroidx/paging/ViewportHint;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    iget v0, p0, Landroidx/paging/ViewportHint;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/paging/ViewportHint;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
