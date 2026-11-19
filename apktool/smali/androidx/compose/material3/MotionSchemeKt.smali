.class public abstract Landroidx/compose/material3/MotionSchemeKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material3/MotionSchemeKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "material3"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/material3/tokens/MotionSchemeKeyTokens;Landroidx/compose/runtime/Composer;)Landroidx/compose/animation/core/FiniteAnimationSpec;
    .locals 1

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v0, Landroidx/compose/material3/MaterialThemeKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/material3/MotionScheme;

    sget-object v0, Landroidx/compose/material3/MotionSchemeKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->d()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->e()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->b()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->c()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->a()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-interface {p1}, Landroidx/compose/material3/MotionScheme;->f()Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
