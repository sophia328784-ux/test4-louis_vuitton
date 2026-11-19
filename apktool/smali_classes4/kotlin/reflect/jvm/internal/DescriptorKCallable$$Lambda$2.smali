.class Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKCallable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$2;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 8

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$2;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ReflectKCallableKt;->a(Lkotlin/reflect/jvm/internal/ReflectKCallable;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->u()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->h()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    new-instance v4, Lkotlin/reflect/jvm/internal/DescriptorKParameter;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v6, Lkotlin/reflect/KParameter$Kind;->VALUE:Lkotlin/reflect/KParameter$Kind;

    new-instance v7, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;

    invoke-direct {v7, v0, v3}, Lkotlin/reflect/jvm/internal/DescriptorKCallable$$Lambda$10;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;I)V

    invoke-direct {v4, p0, v5, v6, v7}, Lkotlin/reflect/jvm/internal/DescriptorKParameter;-><init>(Lkotlin/reflect/jvm/internal/DescriptorKCallable;ILkotlin/reflect/KParameter$Kind;Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->J()Z

    move-result p0

    if-eqz p0, :cond_2

    instance-of p0, v0, Lkotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaCallableMemberDescriptor;

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_2

    new-instance p0, Lkotlin/reflect/jvm/internal/DescriptorKCallable$_parameters$lambda$0$$inlined$sortBy$1;

    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable$_parameters$lambda$0$$inlined$sortBy$1;-><init>()V

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->m0(Ljava/util/Comparator;Ljava/util/List;)V

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1
.end method
