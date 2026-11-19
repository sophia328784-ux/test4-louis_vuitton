.class public abstract Landroidx/compose/runtime/CompositionLocalKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "runtime"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 11

    const v0, -0x8ed3d8b

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    iget-object v0, p2, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    const/16 v2, 0xc9

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->b:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/compose/runtime/ValueHolder;

    :goto_0
    iget-object v3, p0, Landroidx/compose/runtime/ProvidedValue;->a:Landroidx/compose/runtime/CompositionLocal;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, p0, v2}, Landroidx/compose/runtime/CompositionLocal;->b(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v6, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    iget-boolean v2, p0, Landroidx/compose/runtime/ProvidedValue;->h:Z

    if-nez v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-interface {v1, v3, v5}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->l(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    :cond_3
    iput-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->J:Z

    :cond_4
    move v2, v8

    goto :goto_4

    :cond_5
    iget-object v6, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v9, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    iget-object v10, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b:[I

    invoke-virtual {v6, v9, v10}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->b(I[I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v9, p0, Landroidx/compose/runtime/ProvidedValue;->h:Z

    if-nez v9, :cond_a

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    :goto_1
    move-object v1, v6

    goto :goto_3

    :cond_a
    :goto_2
    invoke-interface {v1, v3, v5}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->l(Landroidx/compose/runtime/CompositionLocal;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    :goto_3
    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    if-nez v2, :cond_b

    if-eq v6, v1, :cond_4

    :cond_b
    move v2, v7

    :goto_4
    if-eqz v2, :cond_c

    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_c

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p0(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_c
    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/IntStack;->c(I)V

    iput-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    iput-object v1, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xca

    invoke-virtual {p2, v2, v3, v1, v8}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {p2, v8}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v7, v8

    :goto_5
    iput-boolean v7, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    iput-object v4, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lg2;

    const/16 v1, 0xb

    invoke-direct {v0, p0, p1, p3, v1}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_e
    return-void
.end method

.method public static final b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    const v0, 0x18bf8a0a

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object p2

    iget-object v0, p2, Landroidx/compose/runtime/GapComposer;->x:Landroidx/compose/runtime/IntStack;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->U()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v1

    const/16 v2, 0xc9

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->b:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v2, v3}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    iget-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    const/16 v3, 0xcc

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->a()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v2

    invoke-static {p0, v1, v2}, Landroidx/compose/runtime/CompositionLocalMapKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    invoke-interface {v1}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->i()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->d:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v3, v6}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    invoke-virtual {p2, v2}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iput-boolean v4, p2, Landroidx/compose/runtime/GapComposer;->J:Z

    :cond_0
    :goto_0
    move v2, v5

    goto :goto_2

    :cond_1
    iget-object v2, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v6, v2, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-virtual {v2, v6, v5}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v2, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object v6, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    iget v7, v6, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->g:I

    invoke-virtual {v6, v7, v4}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->h(II)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v6, Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-static {p0, v1, v6}, Landroidx/compose/runtime/CompositionLocalMapKt;->b([Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/PersistentCompositionLocalMap;Landroidx/compose/runtime/PersistentCompositionLocalMap;)Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v7

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->i()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    if-nez v8, :cond_3

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p2, Landroidx/compose/runtime/GapComposer;->l:I

    iget-object v3, p2, Landroidx/compose/runtime/GapComposer;->G:Landroidx/compose/runtime/composer/gapbuffer/SlotReader;

    invoke-virtual {v3}, Landroidx/compose/runtime/composer/gapbuffer/SlotReader;->s()I

    move-result v3

    add-int/2addr v3, v1

    iput v3, p2, Landroidx/compose/runtime/GapComposer;->l:I

    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-interface {v1}, Landroidx/compose/runtime/PersistentCompositionLocalMap;->builder()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroidx/compose/runtime/external/kotlinx/collections/immutable/implementations/immutableMap/PersistentHashMapBuilder;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Builder;->i()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    move-result-object v1

    sget-object v6, Landroidx/compose/runtime/ComposerKt;->d:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p2, v3, v6}, Landroidx/compose/runtime/GapComposer;->z0(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->k0()Ljava/lang/Object;

    invoke-virtual {p2, v7}, Landroidx/compose/runtime/GapComposer;->G0(Ljava/lang/Object;)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->y:Z

    if-nez v3, :cond_4

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v2, v4

    :goto_2
    if-eqz v2, :cond_5

    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->S:Z

    if-nez v3, :cond_5

    invoke-virtual {p2, v1}, Landroidx/compose/runtime/GapComposer;->p0(Landroidx/compose/runtime/PersistentCompositionLocalMap;)V

    :cond_5
    iget-boolean v3, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/IntStack;->c(I)V

    iput-boolean v2, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    iput-object v1, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    sget-object v2, Landroidx/compose/runtime/ComposerKt;->c:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/runtime/composer/GroupKind;->a:Landroidx/compose/runtime/composer/GroupKind$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0xca

    invoke-virtual {p2, v2, v3, v1, v5}, Landroidx/compose/runtime/GapComposer;->x0(Ljava/lang/Object;ILjava/lang/Object;I)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {p2, v5}, Landroidx/compose/runtime/GapComposer;->Z(Z)V

    invoke-virtual {v0}, Landroidx/compose/runtime/IntStack;->b()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v4, v5

    :goto_3
    iput-boolean v4, p2, Landroidx/compose/runtime/GapComposer;->w:Z

    const/4 v0, 0x0

    iput-object v0, p2, Landroidx/compose/runtime/GapComposer;->K:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    invoke-virtual {p2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lg2;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, p3, v1}, Lg2;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static c(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DynamicProvidableCompositionLocal;
    .locals 2

    new-instance v0, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    sget-object v1, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)V

    return-object v0
.end method
