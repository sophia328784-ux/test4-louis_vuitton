.class public interface abstract Landroidx/compose/animation/SharedTransitionScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LookaheadScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/SharedTransitionScope$OverlayClip;,
        Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;,
        Landroidx/compose/animation/SharedTransitionScope$ResizeMode;,
        Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;,
        Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008g\u0018\u00002\u00020\u0001:\u0005\u0002\u0003\u0004\u0005\u0006\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\u0007\u00c0\u0006\u0001"
    }
    d2 = {
        "Landroidx/compose/animation/SharedTransitionScope;",
        "Landroidx/compose/ui/layout/LookaheadScope;",
        "PlaceholderSize",
        "ResizeMode",
        "OverlayClip",
        "SharedContentState",
        "SharedContentConfig",
        "animation"
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
.method public static B(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/animation/SharedTransitionScope$SharedContentState;
    .locals 2

    const p2, 0x2fba2c32

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const p2, -0x8e0bbe4

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->L(I)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/animation/SharedTransitionDefaults$SharedContentConfig;->a:Landroidx/compose/animation/SharedTransitionDefaults$SharedContentConfig;

    if-nez p2, :cond_0

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v0, p2, :cond_1

    :cond_0
    new-instance v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    invoke-direct {v0, p0, v1}, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;-><init>(Ljava/lang/Object;Landroidx/compose/animation/SharedTransitionScope$SharedContentConfig;)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;

    iget-object p0, v0, Landroidx/compose/animation/SharedTransitionScope$SharedContentState;->b:Landroidx/compose/runtime/MutableState;

    check-cast p0, Landroidx/compose/runtime/SnapshotMutableStateImpl;

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SnapshotMutableStateImpl;->setValue(Ljava/lang/Object;)V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->F()V

    return-object v0
.end method

.method public static synthetic e(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;
    .locals 1

    new-instance v0, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;

    invoke-direct {v0, p0}, Landroidx/compose/animation/SharedTransitionScope$skipToLookaheadSize$1;-><init>(Landroidx/compose/animation/SharedTransitionScope;)V

    invoke-interface {p0, p1, v0}, Landroidx/compose/animation/SharedTransitionScope;->l(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;)Landroidx/compose/ui/Modifier;
    .locals 1

    sget-object v0, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;->a:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/animation/SharedTransitionScopeKt;->b:Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;

    invoke-interface {p0, p1, p2, p3, v0}, Landroidx/compose/animation/SharedTransitionScope;->h(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method

.method public static u(Landroidx/compose/animation/SharedTransitionScope;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/ScaleToBoundsImpl;I)Landroidx/compose/ui/Modifier;
    .locals 11

    and-int/lit8 v0, p7, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 p4, 0x0

    invoke-static {v2, p4, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->f(Landroidx/compose/animation/core/FiniteAnimationSpec;FI)Landroidx/compose/animation/EnterTransition;

    move-result-object p4

    :cond_0
    move-object v7, p4

    and-int/lit8 p4, p7, 0x8

    if-eqz p4, :cond_1

    invoke-static {v2, v1}, Landroidx/compose/animation/EnterExitTransitionKt;->h(Landroidx/compose/animation/core/FiniteAnimationSpec;I)Landroidx/compose/animation/ExitTransition;

    move-result-object p4

    move-object v8, p4

    goto :goto_0

    :cond_1
    move-object/from16 v8, p5

    :goto_0
    sget-object p4, Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize;->a:Landroidx/compose/animation/SharedTransitionScope$PlaceholderSize$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v10, Landroidx/compose/animation/SharedTransitionScopeKt;->b:Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v10}, Landroidx/compose/animation/SharedTransitionScope;->z(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/ScaleToBoundsImpl;Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract h(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract j()Z
.end method

.method public abstract l(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;
.end method

.method public abstract z(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/SharedTransitionScope$SharedContentState;Landroidx/compose/animation/AnimatedVisibilityScope;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Landroidx/compose/animation/ScaleToBoundsImpl;Landroidx/compose/animation/SharedTransitionScopeKt$ParentClip$1;)Landroidx/compose/ui/Modifier;
.end method
