.class public final Landroidx/paging/ItemSnapshotList;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0002B)\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0003\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Landroidx/paging/ItemSnapshotList;",
        "T",
        "Lkotlin/collections/AbstractList;",
        "",
        "placeholdersBefore",
        "placeholdersAfter",
        "",
        "items",
        "<init>",
        "(IILjava/util/List;)V",
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
.field public final c:I

.field public final d:I

.field public final e:Ljava/util/List;


# direct methods
.method public constructor <init>(IILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/paging/ItemSnapshotList;->c:I

    iput p2, p0, Landroidx/paging/ItemSnapshotList;->d:I

    iput-object p3, p0, Landroidx/paging/ItemSnapshotList;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 2

    iget-object v0, p0, Landroidx/paging/ItemSnapshotList;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroidx/paging/ItemSnapshotList;->c:I

    add-int/2addr v0, v1

    iget p0, p0, Landroidx/paging/ItemSnapshotList;->d:I

    add-int/2addr v0, p0

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Landroidx/paging/ItemSnapshotList;->c:I

    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v2, p0, Landroidx/paging/ItemSnapshotList;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v1

    if-ge p1, v3, :cond_1

    if-gt v1, p1, :cond_1

    sub-int/2addr p1, v1

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroidx/paging/ItemSnapshotList;->f()I

    move-result v1

    if-ge p1, v1, :cond_2

    if-gt v2, p1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "Illegal attempt to access index "

    const-string v1, " in ItemSnapshotList of size "

    invoke-static {p1, v0, v1}, Lfc;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/paging/ItemSnapshotList;->f()I

    move-result p0

    invoke-static {p1, p0}, Lno0;->s(Ljava/lang/StringBuilder;I)V

    const/4 p0, 0x0

    return-object p0
.end method
