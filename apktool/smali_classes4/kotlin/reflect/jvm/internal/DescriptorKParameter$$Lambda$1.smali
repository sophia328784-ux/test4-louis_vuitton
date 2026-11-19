.class Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/DescriptorKParameter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->g:[Lkotlin/reflect/KProperty;

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$$Lambda$1;->b:Lkotlin/reflect/jvm/internal/DescriptorKParameter;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/ParameterDescriptor;

    move-result-object v0

    iget v1, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->c:I

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/DescriptorKParameter;->b:Lkotlin/reflect/jvm/internal/DescriptorKCallable;

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/UtilKt;->a:Lkotlin/reflect/jvm/internal/impl/name/FqName;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableDescriptor;->G()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;->E0()Lkotlin/reflect/jvm/internal/impl/descriptors/ReceiverParameterDescriptor;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;->e()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    move-result-object v2

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;->FAKE_OVERRIDE:Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor$Kind;

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/DescriptorKCallable;->H()Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/UtilKt;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Cannot determine receiver Java type of inherited declaration: "

    invoke-static {v0, p0}, Ld20;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v4

    :cond_2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/ReflectKCallable;->x()Lkotlin/reflect/jvm/internal/calls/Caller;

    move-result-object v0

    instance-of v2, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    const-string v3, "Expected at least 1 type for compound type"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/ReflectKCallableKt;->a(Lkotlin/reflect/jvm/internal/ReflectKCallable;)Z

    move-result p0

    if-eqz p0, :cond_3

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->d(I)Lkotlin/ranges/IntRange;

    move-result-object p0

    invoke-virtual {v0, v5}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->d(I)Lkotlin/ranges/IntRange;

    move-result-object v1

    iget v1, v1, Lkotlin/ranges/IntProgression;->c:I

    add-int/2addr v1, v4

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->b:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->a()Ljava/util/List;

    move-result-object v0

    new-instance v2, Lkotlin/ranges/IntRange;

    iget v6, p0, Lkotlin/ranges/IntProgression;->b:I

    sub-int/2addr v6, v1

    iget p0, p0, Lkotlin/ranges/IntProgression;->c:I

    sub-int/2addr p0, v1

    invoke-direct {v2, v6, p0}, Lkotlin/ranges/IntRange;-><init>(II)V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_3
    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;

    invoke-virtual {v0, v1}, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->d(I)Lkotlin/ranges/IntRange;

    move-result-object p0

    iget-object v0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller;->b:Lkotlin/reflect/jvm/internal/calls/Caller;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;Lkotlin/ranges/IntRange;)Ljava/util/List;

    move-result-object p0

    :goto_1
    check-cast p0, Ljava/util/Collection;

    new-array v0, v5, [Ljava/lang/reflect/Type;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    if-eqz v0, :cond_5

    if-eq v0, v4, :cond_4

    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$CompoundTypeImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKParameter$CompoundTypeImpl;-><init>([Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_4
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_5
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0, v3}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    instance-of p0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;

    if-eqz p0, :cond_9

    check-cast v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;

    iget-object p0, v0, Lkotlin/reflect/jvm/internal/calls/ValueClassAwareCaller$MultiFieldValueClassPrimaryConstructorCaller;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-array v0, v5, [Ljava/lang/Class;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Class;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/reflect/Type;

    array-length v0, p0

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    new-instance v0, Lkotlin/reflect/jvm/internal/DescriptorKParameter$CompoundTypeImpl;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/DescriptorKParameter$CompoundTypeImpl;-><init>([Ljava/lang/reflect/Type;)V

    return-object v0

    :cond_7
    invoke-static {p0}, Lkotlin/collections/ArraysKt;->Q([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0

    :cond_8
    new-instance p0, Lkotlin/jvm/KotlinReflectionNotSupportedError;

    invoke-direct {p0, v3}, Lkotlin/jvm/KotlinReflectionNotSupportedError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/calls/Caller;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    return-object p0
.end method
