.class public interface abstract Landroidx/compose/runtime/Composer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/Composer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008v\u0018\u00002\u00020\u0001:\u0001\u0002\u0082\u0001\u0001\u0003\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0004\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/runtime/Composer;",
        "",
        "Companion",
        "Landroidx/compose/runtime/InternalComposer;",
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


# virtual methods
.method public abstract A(ILjava/lang/Object;)V
.end method

.method public abstract B()V
.end method

.method public abstract C(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract D()V
.end method

.method public abstract E(Landroidx/compose/runtime/RecomposeScope;)V
.end method

.method public abstract F()V
.end method

.method public G()I
    .locals 2

    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public abstract H()Landroidx/compose/runtime/GapComposer$CompositionContextImpl;
.end method

.method public abstract I()V
.end method

.method public abstract J()V
.end method

.method public abstract K(Ljava/lang/Object;)Z
.end method

.method public abstract L(I)V
.end method

.method public abstract a(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
.end method

.method public b(Z)Z
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->b(Z)Z

    move-result p0

    return p0
.end method

.method public c(F)Z
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->c(F)Z

    move-result p0

    return p0
.end method

.method public d(I)Z
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->d(I)Z

    move-result p0

    return p0
.end method

.method public e(J)Z
    .locals 0

    invoke-interface {p0, p1, p2}, Landroidx/compose/runtime/Composer;->e(J)Z

    move-result p0

    return p0
.end method

.method public abstract f()Z
.end method

.method public abstract g(Z)V
.end method

.method public abstract h(I)Landroidx/compose/runtime/GapComposer;
.end method

.method public abstract i()Z
.end method

.method public abstract j()Landroidx/compose/runtime/Applier;
.end method

.method public abstract k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
.end method

.method public abstract l()J
.end method

.method public abstract m()Lkotlin/coroutines/CoroutineContext;
.end method

.method public abstract n()Landroidx/compose/runtime/PersistentCompositionLocalMap;
.end method

.method public abstract o()V
.end method

.method public abstract p(IZ)Z
.end method

.method public abstract q(Ljava/lang/Object;)V
.end method

.method public abstract r()V
.end method

.method public abstract s(Landroidx/compose/runtime/MovableContent;Ljava/lang/Object;)V
.end method

.method public abstract t(Lkotlin/jvm/functions/Function0;)V
.end method

.method public abstract u()Landroidx/compose/runtime/RecomposeScopeImpl;
.end method

.method public abstract v()V
.end method

.method public abstract w(I)V
.end method

.method public abstract x()Ljava/lang/Object;
.end method

.method public y(Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public abstract z(Ljava/lang/Object;)V
.end method
