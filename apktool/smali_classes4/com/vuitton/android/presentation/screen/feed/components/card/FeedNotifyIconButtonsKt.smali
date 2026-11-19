.class public abstract Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/feed/components/card/FeedNotifyIconButtonsKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "FeedEventBellIconButton"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, 0x17c5438f

    invoke-interface {p4, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 p0, p5, 0x6

    if-nez p0, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, p5

    goto :goto_1

    :cond_2
    move p0, p5

    :goto_1
    and-int/lit8 p4, p5, 0x30

    if-nez p4, :cond_4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    invoke-virtual {v6, p4}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result p4

    if-eqz p4, :cond_3

    const/16 p4, 0x20

    goto :goto_2

    :cond_3
    const/16 p4, 0x10

    :goto_2
    or-int/2addr p0, p4

    :cond_4
    and-int/lit16 p4, p5, 0x180

    if-nez p4, :cond_6

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->b(Z)Z

    move-result p4

    if-eqz p4, :cond_5

    const/16 p4, 0x100

    goto :goto_3

    :cond_5
    const/16 p4, 0x80

    :goto_3
    or-int/2addr p0, p4

    :cond_6
    and-int/lit16 p4, p5, 0xc00

    if-nez p4, :cond_8

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_7

    const/16 p4, 0x800

    goto :goto_4

    :cond_7
    const/16 p4, 0x400

    :goto_4
    or-int/2addr p0, p4

    :cond_8
    and-int/lit16 p4, p0, 0x493

    const/16 v0, 0x492

    if-eq p4, v0, :cond_9

    const/4 p4, 0x1

    goto :goto_5

    :cond_9
    const/4 p4, 0x0

    :goto_5
    and-int/lit8 v0, p0, 0x1

    invoke-virtual {v6, v0, p4}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p4

    if-eqz p4, :cond_a

    sget-object p4, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p4, Lfy;

    invoke-direct {p4, p2, p1}, Lfy;-><init>(ZLcom/vuitton/android/designkit/ui/theme/LVColorScheme;)V

    const v0, -0x1beb7c4f

    invoke-static {v0, p4, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 p4, p0, 0x9

    and-int/lit8 p4, p4, 0xe

    const/high16 v0, 0x180000

    or-int/2addr p4, v0

    shl-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x70

    or-int v7, p4, p0

    const/16 v8, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p3

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_6

    :cond_a
    move-object v0, p3

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_6
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_b

    move-object v5, v0

    new-instance v0, Lzr;

    const/4 v2, 0x2

    move-object v4, p1

    move v6, p2

    move-object v3, v1

    move v1, p5

    invoke-direct/range {v0 .. v6}, Lzr;-><init>(IILjava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Z)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_b
    return-void
.end method

.method public static final b(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 9

    if-eqz p0, :cond_0

    const-string v0, "FeedLiveCalendarIconButton"

    invoke-static {p0, v0}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    move-object v1, p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const p0, -0x50ae4452

    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v6

    and-int/lit8 p0, p4, 0x6

    if-nez p0, :cond_2

    invoke-virtual {v6, v1}, Landroidx/compose/runtime/GapComposer;->K(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    :goto_0
    or-int/2addr p0, p4

    goto :goto_1

    :cond_2
    move p0, p4

    :goto_1
    and-int/lit8 p3, p4, 0x30

    if-nez p3, :cond_4

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-virtual {v6, p3}, Landroidx/compose/runtime/GapComposer;->d(I)Z

    move-result p3

    if-eqz p3, :cond_3

    const/16 p3, 0x20

    goto :goto_2

    :cond_3
    const/16 p3, 0x10

    :goto_2
    or-int/2addr p0, p3

    :cond_4
    and-int/lit16 p3, p4, 0x180

    if-nez p3, :cond_6

    invoke-virtual {v6, p2}, Landroidx/compose/runtime/GapComposer;->y(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/16 p3, 0x100

    goto :goto_3

    :cond_5
    const/16 p3, 0x80

    :goto_3
    or-int/2addr p0, p3

    :cond_6
    and-int/lit16 p3, p0, 0x93

    const/16 v0, 0x92

    if-eq p3, v0, :cond_7

    const/4 p3, 0x1

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    :goto_4
    and-int/lit8 v0, p0, 0x1

    invoke-virtual {v6, v0, p3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result p3

    if-eqz p3, :cond_8

    sget-object p3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p3, Lc;

    const/16 v0, 0x1b

    invoke-direct {p3, p1, v0}, Lc;-><init>(Ljava/lang/Object;I)V

    const v0, -0x50a091b4

    invoke-static {v0, p3, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object v5

    shr-int/lit8 p3, p0, 0x6

    and-int/lit8 p3, p3, 0xe

    const/high16 v0, 0x180000

    or-int/2addr p3, v0

    shl-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x70

    or-int v7, p3, p0

    const/16 v8, 0x3c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    invoke-static/range {v0 .. v8}, Landroidx/compose/material3/IconButtonKt;->a(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/material3/IconButtonColors;Landroidx/compose/ui/graphics/Shape;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    goto :goto_5

    :cond_8
    move-object v0, p2

    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_5
    invoke-virtual {v6}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p0

    if-eqz p0, :cond_9

    move-object v3, v0

    new-instance v0, Lv1;

    const/16 v5, 0xe

    move-object v2, p1

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lv1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;II)V

    iput-object v0, p0, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_9
    return-void
.end method
