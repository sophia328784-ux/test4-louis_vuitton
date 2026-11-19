.class public final Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;
.super Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;
.source "SourceFile"

# interfaces
.implements Lkotlinx/collections/immutable/ImmutableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList<",
        "TE;>;",
        "Lkotlinx/collections/immutable/ImmutableList<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0008\u0012\u0004\u0012\u00028\u00000\u0003:\u0001\tB\u0017\u0012\u000e\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0004\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\n"
    }
    d2 = {
        "Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;",
        "E",
        "Lkotlinx/collections/immutable/ImmutableList;",
        "Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;",
        "",
        "",
        "buffer",
        "<init>",
        "([Ljava/lang/Object;)V",
        "Companion",
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


# static fields
.field public static final d:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

.field public static final e:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;


# instance fields
.field public final c:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->d:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector$Companion;

    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;-><init>([Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->e:Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lkotlinx/collections/immutable/implementations/immutableList/AbstractPersistentList;-><init>()V

    iput-object p1, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    array-length p0, p1

    return-void
.end method


# virtual methods
.method public final f()I
    .locals 0

    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    array-length p0, p0

    return p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->f()I

    move-result v0

    invoke-static {p1, v0}, Lkotlinx/collections/immutable/internal/ListImplementation;->a(II)V

    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final h()Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;
    .locals 4

    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, p0, v3, v1, v2}, Lkotlinx/collections/immutable/implementations/immutableList/PersistentVectorBuilder;-><init>(Lkotlinx/collections/immutable/PersistentList;[Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/collections/ArraysKt;->E([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    invoke-static {p1, p0}, Lkotlin/collections/ArraysKt;->J(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->f()I

    move-result v0

    invoke-static {p1, v0}, Lkotlinx/collections/immutable/internal/ListImplementation;->b(II)V

    new-instance v0, Lkotlinx/collections/immutable/implementations/immutableList/BufferIterator;

    iget-object v1, p0, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->c:[Ljava/lang/Object;

    invoke-virtual {p0}, Lkotlinx/collections/immutable/implementations/immutableList/SmallPersistentVector;->f()I

    move-result p0

    invoke-direct {v0, v1, p1, p0}, Lkotlinx/collections/immutable/implementations/immutableList/BufferIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method
