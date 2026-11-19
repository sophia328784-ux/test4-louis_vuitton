.class final Lkotlinx/collections/immutable/ImmutableList$SubList;
.super Lkotlin/collections/AbstractList;
.source "SourceFile"

# interfaces
.implements Lkotlinx/collections/immutable/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/collections/immutable/ImmutableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/collections/AbstractList<",
        "TE;>;",
        "Lkotlinx/collections/immutable/ImmutableList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0002\u0018\u0000*\u0004\u0008\u0001\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00010\u00022\u0008\u0012\u0004\u0012\u00028\u00010\u0003B%\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/collections/immutable/ImmutableList$SubList;",
        "E",
        "Lkotlinx/collections/immutable/ImmutableList;",
        "Lkotlin/collections/AbstractList;",
        "source",
        "",
        "fromIndex",
        "toIndex",
        "<init>",
        "(Lkotlinx/collections/immutable/ImmutableList;II)V",
        "kotlinx-collections-immutable"
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
.field public final c:Lkotlinx/collections/immutable/ImmutableList;

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Lkotlinx/collections/immutable/ImmutableList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/collections/immutable/ImmutableList<",
            "+TE;>;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->c:Lkotlinx/collections/immutable/ImmutableList;

    iput p2, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->d:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p2, p3, p1}, Lkotlinx/collections/immutable/internal/ListImplementation;->c(III)V

    sub-int/2addr p3, p2

    iput p3, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->e:I

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    iget p0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->e:I

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->e:I

    invoke-static {p1, v0}, Lkotlinx/collections/immutable/internal/ListImplementation;->a(II)V

    iget v0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->d:I

    add-int/2addr v0, p1

    iget-object p0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->c:Lkotlinx/collections/immutable/ImmutableList;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final subList(II)Ljava/util/List;
    .locals 2

    iget v0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->e:I

    invoke-static {p1, p2, v0}, Lkotlinx/collections/immutable/internal/ListImplementation;->c(III)V

    new-instance v0, Lkotlinx/collections/immutable/ImmutableList$SubList;

    iget v1, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->d:I

    add-int/2addr p1, v1

    add-int/2addr v1, p2

    iget-object p0, p0, Lkotlinx/collections/immutable/ImmutableList$SubList;->c:Lkotlinx/collections/immutable/ImmutableList;

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/collections/immutable/ImmutableList$SubList;-><init>(Lkotlinx/collections/immutable/ImmutableList;II)V

    return-object v0
.end method
