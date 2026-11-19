.class public final Lcom/google/android/gms/internal/fido/zzcj;
.super Lcom/google/android/gms/internal/fido/zzcd;
.source "SourceFile"

# interfaces
.implements Ljava/util/NavigableMap;


# static fields
.field public static final g:Ljava/util/Comparator;

.field public static final h:Lcom/google/android/gms/internal/fido/zzcj;


# instance fields
.field public final transient d:Lcom/google/android/gms/internal/fido/zzcv;

.field public final transient e:Lcom/google/android/gms/internal/fido/zzcc;

.field public final transient f:Lcom/google/android/gms/internal/fido/zzcj;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/fido/zzcq;->b:Lcom/google/android/gms/internal/fido/zzcq;

    new-instance v1, Lcom/google/android/gms/internal/fido/zzcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/fido/zzck;->u(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/internal/fido/zzcc;->c:Lcom/google/android/gms/internal/fido/zzdd;

    sget-object v2, Lcom/google/android/gms/internal/fido/zzct;->f:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    sput-object v1, Lcom/google/android/gms/internal/fido/zzcj;->h:Lcom/google/android/gms/internal/fido/zzcj;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    iput-object p3, p0, Lcom/google/android/gms/internal/fido/zzcj;->f:Lcom/google/android/gms/internal/fido/zzcj;

    return-void
.end method

.method public static d(Ljava/util/TreeMap;)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 11

    invoke-virtual {p0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/internal/fido/zzcq;->b:Lcom/google/android/gms/internal/fido/zzcq;

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-eq v3, v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    instance-of v4, p0, Ljava/util/Collection;

    if-nez v4, :cond_3

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object p0, v4

    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/fido/zzcd;->c:[Ljava/util/Map$Entry;

    invoke-interface {p0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Map$Entry;

    array-length v4, p0

    if-eqz v4, :cond_c

    const/4 v5, 0x0

    if-eq v4, v1, :cond_7

    new-array v6, v4, [Ljava/lang/Object;

    new-array v7, v4, [Ljava/lang/Object;

    if-eqz v0, :cond_4

    :goto_2
    if-ge v2, v4, :cond_6

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fido/zzbv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v6, v2

    aput-object v0, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/fido/zzcg;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/fido/zzcg;-><init>(Ljava/util/Comparator;)V

    invoke-static {p0, v2, v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    aget-object v0, p0, v2

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v7, v2

    aget-object v2, v6, v2

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/fido/zzbv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-ge v1, v4, :cond_6

    add-int/lit8 v0, v1, -0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/google/android/gms/internal/fido/zzbv;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v6, v1

    aput-object v10, v7, v1

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/internal/fido/zzcq;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-eqz v8, :cond_5

    add-int/lit8 v1, v1, 0x1

    move-object v8, v9

    goto :goto_3

    :cond_5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Multiple entries with same key: "

    const-string v2, " and "

    invoke-static {v1, p0, v2, v0}, Lfc;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-object v5

    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/fido/zzcj;

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcv;

    invoke-static {v4, v6}, Lcom/google/android/gms/internal/fido/zzcc;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    invoke-static {v4, v7}, Lcom/google/android/gms/internal/fido/zzcc;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v1

    invoke-direct {p0, v0, v1, v5}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object p0

    :cond_7
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    new-instance v4, Lcom/google/android/gms/internal/fido/zzcj;

    new-instance v6, Lcom/google/android/gms/internal/fido/zzcv;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    move v7, v2

    :goto_4
    const-string v8, "at index "

    if-ge v7, v1, :cond_9

    aget-object v9, v0, v7

    if-eqz v9, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_8
    invoke-static {v7, v8}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v5

    :cond_9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/fido/zzcc;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    invoke-direct {v6, v0, v3}, Lcom/google/android/gms/internal/fido/zzcv;-><init>(Lcom/google/android/gms/internal/fido/zzcc;Ljava/util/Comparator;)V

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    :goto_5
    if-ge v2, v1, :cond_b

    aget-object v0, p0, v2

    if-eqz v0, :cond_a

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    invoke-static {v2, v8}, Lpq0;->k(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr81;->d(Ljava/lang/String;)V

    return-object v5

    :cond_b
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/fido/zzcc;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p0

    invoke-direct {v4, v6, p0, v5}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object v4

    :cond_c
    invoke-static {v3}, Lcom/google/android/gms/internal/fido/zzcj;->e(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/fido/zzcq;->b:Lcom/google/android/gms/internal/fido/zzcq;

    if-eq v0, p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/fido/zzcj;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzck;->u(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    sget-object v1, Lcom/google/android/gms/internal/fido/zzcc;->c:Lcom/google/android/gms/internal/fido/zzdd;

    sget-object v1, Lcom/google/android/gms/internal/fido/zzct;->f:Lcom/google/android/gms/internal/fido/zzcc;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object v0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/fido/zzcj;->h:Lcom/google/android/gms/internal/fido/zzcj;

    return-object p0
.end method


# virtual methods
.method public final ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcj;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcj;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    return-object p0
.end method

.method public final synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzck;->s()Lcom/google/android/gms/internal/fido/zzck;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->f:Lcom/google/android/gms/internal/fido/zzcj;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    if-eqz v0, :cond_1

    iget-object p0, v1, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    instance-of v0, p0, Lcom/google/android/gms/internal/fido/zzcs;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/fido/zzcs;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/fido/zzbw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/fido/zzbw;-><init>(Ljava/util/Comparator;)V

    move-object p0, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcs;->a()Lcom/google/android/gms/internal/fido/zzcs;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcj;->e(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/fido/zzck;->s()Lcom/google/android/gms/internal/fido/zzck;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/fido/zzcv;

    iget-object v2, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/fido/zzcc;->n()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    :cond_2
    return-object v0
.end method

.method public final f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->v(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/fido/zzcj;->i(II)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final firstEntry()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->c()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcf;->q()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final firstKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->first()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcj;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcj;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/internal/fido/zzcj;->f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcj;->h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0

    :cond_0
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "expected fromKey <= toKey but %s > %s"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/fido/zzbo;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    :catch_0
    :goto_0
    move p1, v1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/internal/fido/zzcv;->g:Lcom/google/android/gms/internal/fido/zzcc;

    iget-object v0, v0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {v2, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p1, v1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->x(Ljava/lang/Object;Z)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcj;->i(II)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcj;->f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcj;->firstEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcj;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final i(II)Lcom/google/android/gms/internal/fido/zzcj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

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
    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzck;->e:Ljava/util/Comparator;

    invoke-static {p0}, Lcom/google/android/gms/internal/fido/zzcj;->e(Ljava/util/Comparator;)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/fido/zzcj;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcv;->z(II)Lcom/google/android/gms/internal/fido/zzcv;

    move-result-object p0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcc;->o(II)Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcj;-><init>(Lcom/google/android/gms/internal/fido/zzcv;Lcom/google/android/gms/internal/fido/zzcc;Lcom/google/android/gms/internal/fido/zzcj;)V

    return-object v1
.end method

.method public final synthetic keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    return-object p0
.end method

.method public final lastEntry()Ljava/util/Map$Entry;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcd;->c()Lcom/google/android/gms/internal/fido/zzcf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/fido/zzcf;->q()Lcom/google/android/gms/internal/fido/zzcc;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final lastKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcv;->last()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->f(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/fido/zzcj;->lastEntry()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public final lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/fido/zzcj;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->d:Lcom/google/android/gms/internal/fido/zzcv;

    return-object p0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/fido/zzcj;->g(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/google/android/gms/internal/fido/zzcj;->g(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/fido/zzcj;->h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/fido/zzcj;->h(Ljava/lang/Object;Z)Lcom/google/android/gms/internal/fido/zzcj;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic values()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/fido/zzcj;->e:Lcom/google/android/gms/internal/fido/zzcc;

    return-object p0
.end method
