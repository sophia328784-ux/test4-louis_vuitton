.class final Lcom/google/android/gms/internal/fido/zzcv;
.super Lcom/google/android/gms/internal/fido/zzck;
.source "SourceFile"


# static fields
.field public static final h:Lcom/google/android/gms/internal/fido/zzcv;


# instance fields
.field public final transient g:Lcom/google/android/gms/internal/fido/zzcc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcv;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcc;->c:Lcom/google/android/gms/internal/fido/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzct;->f:Lcom/google/android/gms/internal/fido/zzcc;

    sget-object v2, Lcom/google/android/gms/internal/fido/zzcq;->b:Lcom/google/android/gms/internal/fido/zzcq;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    sput-object v0, Lcom/google/android/gms/internal/fido/zzcv;->h:Lcom/google/android/gms/internal/fido/zzcv;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/fido/zzck;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcc;->a([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v1, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 6

    instance-of v0, p1, Lcom/google/android/gms/internal/fido/zzcp;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/fido/zzcp;

    invoke-interface {p1}, Lcom/google/android/gms/internal/fido/zzcp;->d0()Ljava/util/Set;

    move-result-object p1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fido/zzdb;->a(Ljava/util/Comparator;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fido/zzcc;->r(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    check-cast p0, Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbu;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbu;->next()Ljava/lang/Object;

    move-result-object v4

    :goto_0
    :try_start_0
    invoke-interface {v1, v4, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbu;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzbu;->next()Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_4
    if-nez v5, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_6
    :goto_1
    return v0

    :cond_7
    :goto_2
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final descendingIterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcc;->n()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fido/zzcc;->r(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    iget-object v3, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/fido/zzdb;->a(Ljava/util/Comparator;Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/fido/zzcc;->r(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object p1

    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/fido/zzbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzbu;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzbu;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_6
    :goto_1
    return v1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcv;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final f()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzby;->f()I

    move-result p0

    return p0
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzby;->h()I

    move-result p0

    return p0
.end method

.method public final higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i()Lcom/google/android/gms/internal/fido/zzdc;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fido/zzcc;->r(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/fido/zzcc;->r(I)Lcom/google/android/gms/internal/fido/zzdd;

    move-result-object p0

    return-object p0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lb21;->x()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m()[Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzby;->m()[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q()Lcom/google/android/gms/internal/fido/zzcc;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final v(Ljava/lang/Object;Z)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p2, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0

    :cond_1
    not-int p0, p0

    return p0
.end method

.method public final x(Ljava/lang/Object;Z)I
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v0, p1, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p0

    if-ltz p0, :cond_1

    if-eqz p2, :cond_0

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    not-int p0, p0

    return p0
.end method

.method public final z(II)Lcom/google/android/gms/internal/fido/zzcv;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    if-ge p1, p2, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->o(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    invoke-direct {v1, p1, p0}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    return-object v1

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzck;->u(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    return-object p0
.end method
