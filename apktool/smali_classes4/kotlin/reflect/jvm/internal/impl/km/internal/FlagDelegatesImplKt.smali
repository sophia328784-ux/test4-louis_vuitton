.class public abstract Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$classBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$constructorBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$functionBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final d(Lkotlin/reflect/KMutableProperty1;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->p:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->a()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->a()Lkotlin/enums/EnumEntries;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/MemberKind;->b()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-void
.end method

.method public static final e(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->e:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->a()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->a()Lkotlin/enums/EnumEntries;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/Modality;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/Modality;->b()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-object v2
.end method

.method public static final f(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyAccessorBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final g(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$propertyBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final h(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeAliasBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final i(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$typeBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-object v0
.end method

.method public static final j(Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;->b:Lkotlin/reflect/jvm/internal/impl/km/internal/FlagDelegatesImplKt$valueParameterBooleanFlag$1;

    invoke-direct {v0, v1, p0}, Lkotlin/reflect/jvm/internal/impl/km/internal/BooleanFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;)V

    return-void
.end method

.method public static final k(Lkotlin/reflect/KMutableProperty1;)Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags;->d:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->a()Lkotlin/enums/EnumEntries;

    move-result-object v1

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->a()Lkotlin/enums/EnumEntries;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/km/Visibility;

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/km/Visibility;->b()Lkotlin/reflect/jvm/internal/impl/km/internal/FlagImpl;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;

    invoke-direct {v2, p0, v0, v1, v3}, Lkotlin/reflect/jvm/internal/impl/km/internal/EnumFlagDelegate;-><init>(Lkotlin/reflect/KMutableProperty1;Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/Flags$FlagField;Lkotlin/enums/EnumEntries;Ljava/util/List;)V

    return-object v2
.end method
