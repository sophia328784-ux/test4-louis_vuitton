.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$5;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$5;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$5;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Lkotlin/reflect/KCallable;->isSuspend()Z

    move-result v2

    add-int/2addr v2, v1

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->h:Lkotlin/Lazy;

    invoke-interface {v1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v5, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KParameter;

    invoke-interface {v6}, Lkotlin/reflect/KParameter;->e()Lkotlin/reflect/KParameter$Kind;

    move-result-object v7

    sget-object v8, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v7, v8, :cond_0

    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->I(Lkotlin/reflect/KParameter;)I

    move-result v6

    goto :goto_1

    :cond_0
    move v6, v4

    :goto_1
    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    move-object p0, v0

    check-cast p0, Ljava/lang/Iterable;

    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    move v5, v4

    goto :goto_3

    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v5, v4

    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KParameter;

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->e()Lkotlin/reflect/KParameter$Kind;

    move-result-object v1

    sget-object v6, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    if-ne v1, v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    if-ltz v5, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->s0()V

    throw v3

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1f

    div-int/lit8 v5, v5, 0x20

    add-int p0, v2, v5

    add-int/lit8 p0, p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KParameter;

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->F()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    move-result-object v6

    sget-object v7, Lkotlin/reflect/jvm/internal/UtilKt;->a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->a()Lkotlin/reflect/KClassifier;

    move-result-object v6

    instance-of v7, v6, Lkotlin/reflect/jvm/internal/KClassImpl;

    if-eqz v7, :cond_7

    check-cast v6, Lkotlin/reflect/jvm/internal/KClassImpl;

    goto :goto_5

    :cond_7
    move-object v6, v3

    :goto_5
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Lkotlin/reflect/jvm/internal/KClassImpl;->X()Lkotlin/reflect/jvm/internal/impl/km/KmClass;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, v6, Lkotlin/reflect/jvm/internal/impl/km/KmClass;->m:Lkotlin/reflect/jvm/internal/impl/km/KmType;

    goto :goto_6

    :cond_8
    move-object v6, v3

    :goto_6
    if-eqz v6, :cond_9

    goto :goto_8

    :cond_9
    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v6

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/internal/KTypeBase;->j()Ljava/lang/reflect/Type;

    move-result-object v7

    if-eqz v7, :cond_a

    goto :goto_7

    :cond_a
    invoke-static {v1, v4}, Lkotlin/reflect/TypesJVMKt;->b(Lkotlin/reflect/KType;Z)Ljava/lang/reflect/Type;

    move-result-object v7

    :goto_7
    invoke-static {v7}, Lkotlin/reflect/jvm/internal/UtilKt;->d(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v6

    goto :goto_4

    :cond_b
    :goto_8
    invoke-interface {v1}, Lkotlin/reflect/KParameter;->n()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getIndex()I

    move-result v6

    invoke-interface {v1}, Lkotlin/reflect/KParameter;->getType()Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->G(Lkotlin/reflect/KType;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p0, v6

    goto :goto_4

    :cond_c
    move v0, v4

    :goto_9
    if-ge v0, v5, :cond_d

    add-int v1, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_d
    return-object p0
.end method
