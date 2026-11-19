.class public abstract Lcom/google/android/gms/internal/fido/zzck;
.super Lcom/google/android/gms/internal/fido/zzcf;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lcom/google/android/gms/internal/fido/zzda;


# instance fields
.field public final transient e:Ljava/util/Comparator;

.field public transient f:Lcom/google/android/gms/internal/fido/zzck;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    return-void
.end method

.method public static u(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/fido/zzcq;->b:Lcom/google/android/gms/internal/fido/zzcq;

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcv;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcc;->c:Lcom/google/android/gms/internal/fido/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzct;->f:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/fido/zzcv;->h:Lcom/google/android/gms/internal/fido/zzcv;

    return-object p0
.end method


# virtual methods
.method public final addFirst(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    return-object p0
.end method

.method public final bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzck;->s()Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p0

    return-object p0
.end method

.method public abstract first()Ljava/lang/Object;
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzck;->first()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzck;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    check-cast p0, Lcom/google/android/gms/internal/fido/zzcv;

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/android/gms/internal/fido/zzcv;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0
.end method

.method public abstract last()Ljava/lang/Object;
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final s()Lcom/google/android/gms/internal/fido/zzck;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzck;->f:Lcom/google/android/gms/internal/fido/zzck;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/fido/zzcv;

    iget-object v1, v0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v1}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lcom/google/android/gms/internal/fido/zzck;->u(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/fido/zzcv;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcc;->n()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/fido/zzck;->f:Lcom/google/android/gms/internal/fido/zzck;

    iput-object p0, v0, Lcom/google/android/gms/internal/fido/zzck;->f:Lcom/google/android/gms/internal/fido/zzck;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fido/zzck;->t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/fido/zzck;->t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p0

    return-object p0
.end method

.method public final t(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzck;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lct0;->c()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    check-cast p0, Lcom/google/android/gms/internal/fido/zzcv;

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    .line 24
    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lcom/google/android/gms/internal/fido/zzcv;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0
.end method
