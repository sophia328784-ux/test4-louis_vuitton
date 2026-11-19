.class public final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->e:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->f:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoRoutes$ShadeFinderResult;

    move-object v5, p2

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    if-eq p1, p3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p2, v0

    invoke-interface {v5, p2, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;

    invoke-interface {v5, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->f:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v5, p2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p3

    or-int/2addr p1, p3

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->g:Lkotlin/jvm/functions/Function0;

    invoke-interface {v5, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p1, v1

    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_1

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v1, p1, :cond_2

    :cond_1
    new-instance v1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$2$5$1$1;

    invoke-direct {v1, v0, p2, p3}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoNavDisplayKt$BeautyVtoNavDisplay$2$5$1$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;)V

    invoke-interface {v5, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    move-object v4, v1

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->c:Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->d:Lkotlin/jvm/functions/Function0;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/c;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/shadefinder/ShadeFinderResultComposableKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoViewModel;Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-interface {v5}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
