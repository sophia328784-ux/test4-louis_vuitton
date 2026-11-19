.class public final Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u00002\u00020\u0001:\u0001\u0008B\u001b\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;",
        "",
        "",
        "Lkotlin/reflect/KTypeParameter;",
        "Lkotlin/reflect/KTypeProjection;",
        "substitution",
        "<init>",
        "(Ljava/util/Map;)V",
        "Companion",
        "kotlin-reflection"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

.field public static final c:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;


# instance fields
.field public final a:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->b:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor$Companion;

    new-instance v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;-><init>(Ljava/util/Map;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->c:Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lkotlin/reflect/KTypeParameter;",
            "Lkotlin/reflect/KTypeProjection;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->A()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_2

    :cond_2
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->H()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v3

    goto :goto_3

    :cond_3
    move-object v3, v1

    :goto_3
    const/4 v4, 0x0

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p0, v2}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p1

    iget-object v0, p1, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v2, :cond_4

    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->A()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v2, Lkotlin/reflect/KTypeProjection;

    iget-object p1, p1, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KVariance;

    invoke-direct {v2, p1, v0}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    move-object p1, v2

    :cond_5
    invoke-virtual {p0, v3}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    iget-object v0, p0, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v2, :cond_6

    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->H()Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v2, Lkotlin/reflect/KTypeProjection;

    iget-object p0, p0, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KVariance;

    invoke-direct {v2, p0, v0}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    move-object p0, v2

    :cond_7
    new-instance v0, Lkotlin/reflect/KTypeProjection;

    iget-object v2, p1, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KVariance;

    iget-object p1, p1, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v3, Lkotlin/reflect/jvm/internal/SystemPropertiesKt;->a:Z

    if-eqz v3, :cond_8

    new-instance v3, Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    iget-object p1, p1, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    check-cast p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/types/DescriptorKType;->c:Lkotlin/reflect/jvm/internal/impl/types/KotlinType;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/SimpleType;

    invoke-static {p1, p0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->a(Lkotlin/reflect/jvm/internal/impl/types/SimpleType;Lkotlin/reflect/jvm/internal/impl/types/SimpleType;)Lkotlin/reflect/jvm/internal/impl/types/UnwrappedType;

    move-result-object p0

    const/4 p1, 0x2

    invoke-direct {v3, p0, v1, p1, v1}, Lkotlin/reflect/jvm/internal/types/DescriptorKType;-><init>(Lkotlin/reflect/jvm/internal/impl/types/KotlinType;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_8
    sget-object v3, Lkotlin/reflect/jvm/internal/types/FlexibleKType;->f:Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;

    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    check-cast p0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0, v4, v1}, Lkotlin/reflect/jvm/internal/types/FlexibleKType$Companion;->a(Lkotlin/reflect/jvm/internal/types/AbstractKType;Lkotlin/reflect/jvm/internal/types/AbstractKType;ZLkotlin/jvm/functions/Function0;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v3

    :goto_6
    invoke-direct {v0, v2, v3}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v0

    :cond_9
    invoke-interface {p1}, Lkotlin/reflect/KType;->a()Lkotlin/reflect/KClassifier;

    move-result-object v2

    if-nez v2, :cond_a

    sget-object p0, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/KTypeProjection;

    if-eqz v3, :cond_13

    iget-object p0, v3, Lkotlin/reflect/KTypeProjection;->a:Lkotlin/reflect/KVariance;

    iget-object v2, v3, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    if-nez v2, :cond_b

    return-object v3

    :cond_b
    new-instance v3, Lkotlin/reflect/KTypeProjection;

    move-object v5, v2

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/types/model/RigidTypeMarker;

    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Z

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_d

    invoke-interface {v2}, Lkotlin/reflect/KType;->d()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_7

    :cond_c
    move v2, v4

    goto :goto_8

    :cond_d
    :goto_7
    move v2, v7

    :goto_8
    move-object v6, v5

    check-cast v6, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    invoke-virtual {v6, v2}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->G(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v2

    if-eqz v2, :cond_12

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_9

    :cond_e
    move-object v0, v1

    :goto_9
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->l()Z

    move-result v0

    if-ne v0, v7, :cond_f

    goto :goto_a

    :cond_f
    instance-of v0, v5, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    if-eqz v0, :cond_10

    move-object v1, v5

    check-cast v1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    :cond_10
    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->l()Z

    move-result v0

    if-ne v0, v7, :cond_11

    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Z

    move-result p1

    if-nez p1, :cond_11

    :goto_a
    move v4, v7

    :cond_11
    invoke-virtual {v2, v4}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->D(Z)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object v2

    :cond_12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, p0, v2}, Lkotlin/reflect/KTypeProjection;-><init>(Lkotlin/reflect/KVariance;Lkotlin/reflect/KType;)V

    return-object v3

    :cond_13
    sget-object v3, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-interface {p1}, Lkotlin/reflect/KType;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_14

    goto :goto_e

    :cond_14
    invoke-interface {p1}, Lkotlin/reflect/KType;->b()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkotlin/reflect/KTypeProjection;

    iget-object v6, v6, Lkotlin/reflect/KTypeProjection;->b:Lkotlin/reflect/KType;

    if-eqz v6, :cond_15

    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/types/KTypeSubstitutor;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object v6

    goto :goto_c

    :cond_15
    sget-object v6, Lkotlin/reflect/KTypeProjection;->c:Lkotlin/reflect/KTypeProjection$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Lkotlin/reflect/KTypeProjection;->d:Lkotlin/reflect/KTypeProjection;

    :goto_c
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_16
    invoke-interface {p1}, Lkotlin/reflect/KType;->d()Z

    move-result p0

    invoke-interface {p1}, Lkotlin/reflect/KAnnotatedElement;->getAnnotations()Ljava/util/List;

    move-result-object v4

    if-eqz v0, :cond_17

    check-cast p1, Lkotlin/reflect/jvm/internal/types/AbstractKType;

    goto :goto_d

    :cond_17
    move-object p1, v1

    :goto_d
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/types/AbstractKType;->h()Lkotlin/reflect/KClass;

    move-result-object v1

    :cond_18
    invoke-static {v2, v5, p0, v4, v1}, Lkotlin/reflect/full/KClassifiers;->d(Lkotlin/reflect/KClassifier;Ljava/util/List;ZLjava/util/List;Lkotlin/reflect/KClass;)Lkotlin/reflect/jvm/internal/types/AbstractKType;

    move-result-object p1

    :goto_e
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lkotlin/reflect/KTypeProjection$Companion;->a(Lkotlin/reflect/KType;)Lkotlin/reflect/KTypeProjection;

    move-result-object p0

    return-object p0
.end method
