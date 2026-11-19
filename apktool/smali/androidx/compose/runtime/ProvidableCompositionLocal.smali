.class public abstract Landroidx/compose/runtime/ProvidableCompositionLocal;
.super Landroidx/compose/runtime/CompositionLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/CompositionLocal<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\'\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0002B\u0017\u0008\u0000\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/compose/runtime/ProvidableCompositionLocal;",
        "T",
        "Landroidx/compose/runtime/CompositionLocal;",
        "Lkotlin/Function0;",
        "defaultFactory",
        "<init>",
        "(Lkotlin/jvm/functions/Function0;)V",
        "runtime"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/runtime/CompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public final b(Landroidx/compose/runtime/ProvidedValue;Landroidx/compose/runtime/ValueHolder;)Landroidx/compose/runtime/ValueHolder;
    .locals 2

    instance-of p0, p2, Landroidx/compose/runtime/DynamicValueHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->f:Z

    if-eqz p0, :cond_3

    move-object v0, p2

    check-cast v0, Landroidx/compose/runtime/DynamicValueHolder;

    iget-object p0, v0, Landroidx/compose/runtime/DynamicValueHolder;->a:Landroidx/compose/runtime/MutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    instance-of p0, p2, Landroidx/compose/runtime/StaticValueHolder;

    if-eqz p0, :cond_2

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->b:Z

    if-nez p0, :cond_1

    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->g:Ljava/lang/Object;

    if-eqz p0, :cond_3

    :cond_1
    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->f:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p2, Landroidx/compose/runtime/StaticValueHolder;

    iget-object v1, p2, Landroidx/compose/runtime/StaticValueHolder;->a:Ljava/lang/Object;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_2
    instance-of p0, p2, Landroidx/compose/runtime/ComputedValueHolder;

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->e:Lkotlin/jvm/functions/Function1;

    check-cast p2, Landroidx/compose/runtime/ComputedValueHolder;

    iget-object v1, p2, Landroidx/compose/runtime/ComputedValueHolder;->a:Lkotlin/jvm/functions/Function1;

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v0, :cond_9

    iget-boolean p0, p1, Landroidx/compose/runtime/ProvidedValue;->f:Z

    iget-object p2, p1, Landroidx/compose/runtime/ProvidedValue;->d:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_6

    new-instance p0, Landroidx/compose/runtime/DynamicValueHolder;

    if-nez p2, :cond_5

    iget-object p2, p1, Landroidx/compose/runtime/ProvidedValue;->g:Ljava/lang/Object;

    iget-object p1, p1, Landroidx/compose/runtime/ProvidedValue;->c:Landroidx/compose/runtime/SnapshotMutationPolicy;

    if-nez p1, :cond_4

    sget-object p1, Landroidx/compose/runtime/StructuralEqualityPolicy;->a:Landroidx/compose/runtime/StructuralEqualityPolicy;

    :cond_4
    new-instance v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-direct {v0, p2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;-><init>(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)V

    move-object p2, v0

    :cond_5
    invoke-direct {p0, p2}, Landroidx/compose/runtime/DynamicValueHolder;-><init>(Landroidx/compose/runtime/MutableState;)V

    return-object p0

    :cond_6
    iget-object p0, p1, Landroidx/compose/runtime/ProvidedValue;->e:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_7

    new-instance p1, Landroidx/compose/runtime/ComputedValueHolder;

    invoke-direct {p1, p0}, Landroidx/compose/runtime/ComputedValueHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object p1

    :cond_7
    if-eqz p2, :cond_8

    new-instance p0, Landroidx/compose/runtime/DynamicValueHolder;

    invoke-direct {p0, p2}, Landroidx/compose/runtime/DynamicValueHolder;-><init>(Landroidx/compose/runtime/MutableState;)V

    return-object p0

    :cond_8
    new-instance p0, Landroidx/compose/runtime/StaticValueHolder;

    invoke-virtual {p1}, Landroidx/compose/runtime/ProvidedValue;->a()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/compose/runtime/StaticValueHolder;-><init>(Ljava/lang/Object;)V

    return-object p0

    :cond_9
    return-object v0
.end method

.method public abstract c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
.end method
