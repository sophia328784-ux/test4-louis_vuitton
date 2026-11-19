.class public final synthetic Lj60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/functions/Function4;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;I)V
    .locals 0

    iput p3, p0, Lj60;->b:I

    iput-object p1, p0, Lj60;->c:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lj60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lj60;->b:I

    const/4 v1, 0x6

    sget-object v2, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;->a:Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/TopBarActionScopeInstance;

    const/4 v3, 0x0

    const/16 v4, 0x10

    const/4 v5, 0x1

    iget-object v6, p0, Lj60;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object p0, p0, Lj60;->c:Lkotlin/jvm/functions/Function4;

    check-cast p1, Landroidx/compose/foundation/layout/RowScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v4, :cond_0

    move v3, v5

    :cond_0
    and-int/lit8 p1, p3, 0x1

    invoke-interface {p2, p1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v2, v6, p2, p1}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/designkit/ui/theme/molecules/topbar/LVMediumTopBarKt;->a:Landroidx/compose/animation/core/CubicBezierEasing;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p3, 0x11

    if-eq p1, v4, :cond_2

    move v3, v5

    :cond_2
    and-int/lit8 p1, p3, 0x1

    invoke-interface {p2, p1, v3}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v2, v6, p2, p1}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
