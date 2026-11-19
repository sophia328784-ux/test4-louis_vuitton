.class public final Landroidx/collection/SparseArrayKt$keyIterator$1;
.super Lkotlin/collections/IntIterator;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\n\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "androidx/collection/SparseArrayKt$keyIterator$1",
        "Lkotlin/collections/IntIterator;",
        "collection"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public b:I

.field public final synthetic c:Landroidx/collection/SparseArrayCompat;


# direct methods
.method public constructor <init>(Landroidx/collection/SparseArrayCompat;)V
    .locals 0

    iput-object p1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->c:Landroidx/collection/SparseArrayCompat;

    invoke-direct {p0}, Lkotlin/collections/IntIterator;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->b:I

    iget-object p0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->c:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->e()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final nextInt()I
    .locals 2

    iget v0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->b:I

    iget-object p0, p0, Landroidx/collection/SparseArrayKt$keyIterator$1;->c:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p0, v0}, Landroidx/collection/SparseArrayCompat;->c(I)I

    move-result p0

    return p0
.end method
