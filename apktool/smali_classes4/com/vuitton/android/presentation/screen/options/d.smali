.class public final synthetic Lcom/vuitton/android/presentation/screen/options/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Landroid/content/Context;

.field public final synthetic f:Landroidx/activity/compose/ManagedActivityResultLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Landroidx/navigation/NavHostController;Lkotlin/jvm/functions/Function0;Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/d;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/d;->c:Landroidx/navigation/NavHostController;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/d;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/options/d;->e:Landroid/content/Context;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/options/d;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v9, p3

    check-cast v9, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/options/d;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_0

    if-ne v2, v10, :cond_1

    :cond_0
    new-instance v2, Lyj;

    const/16 v1, 0xb

    invoke-direct {v2, v4, v1}, Lyj;-><init>(Landroidx/navigation/NavHostController;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iget-object v11, p0, Lcom/vuitton/android/presentation/screen/options/d;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/options/d;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v2, v5

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v2, :cond_2

    if-ne v5, v10, :cond_3

    :cond_2
    new-instance v5, Lrh0;

    const/4 v2, 0x3

    invoke-direct {v5, v11, v3, v2}, Lrh0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_3
    move-object v12, v5

    check-cast v12, Lkotlin/jvm/functions/Function0;

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_4

    if-ne v3, v10, :cond_5

    :cond_4
    new-instance v2, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt$OptionsNavHost$5$1$6$3$1;

    const-string v7, "popBackStack()Z"

    const/16 v8, 0x8

    const/4 v3, 0x0

    const-class v5, Landroidx/navigation/NavHostController;

    const-string v6, "popBackStack"

    invoke-direct/range {v2 .. v8}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v3, v2

    :cond_5
    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/d;->e:Landroid/content/Context;

    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/d;->f:Landroidx/activity/compose/ManagedActivityResultLauncher;

    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_6

    if-ne v4, v10, :cond_7

    :cond_6
    new-instance v4, Lsh0;

    const/4 v3, 0x0

    invoke-direct {v4, v2, v0, v3}, Lsh0;-><init>(Landroid/content/Context;Landroidx/activity/compose/ManagedActivityResultLauncher;I)V

    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_7
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v10, 0x0

    move-object v3, v11

    const/16 v11, 0x20

    const/4 v8, 0x0

    move-object v4, v1

    move-object v5, v12

    invoke-static/range {v3 .. v11}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt;->b(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;II)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
