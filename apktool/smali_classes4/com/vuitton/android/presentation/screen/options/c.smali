.class public final synthetic Lcom/vuitton/android/presentation/screen/options/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/c;->b:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/c;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/c;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/animation/AnimatedContentScope;

    check-cast p2, Landroidx/navigation/NavBackStackEntry;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Integer;

    invoke-static {p4, p1, p2}, La;->x(Ljava/lang/Integer;Landroidx/compose/animation/AnimatedContentScope;Landroidx/navigation/NavBackStackEntry;)V

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/c;->c:Landroidx/navigation/NavHostController;

    invoke-interface {p3, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_0

    sget-object p1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne p2, p1, :cond_1

    :cond_0
    new-instance v0, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$5$1$1;

    const-string v5, "popBackStack()Z"

    const/16 v6, 0x8

    const/4 v1, 0x0

    const-class v3, Landroidx/navigation/NavHostController;

    const-string v4, "popBackStack"

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v0

    :cond_1
    check-cast p2, Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/options/c;->b:Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/options/c;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {p4, p2, p0, p3, p1}, Lcom/vuitton/android/presentation/screen/options/appinfo/components/AppInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
