.class public final synthetic Lcom/vuitton/android/presentation/screen/options/settings/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/b;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/b;->c:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/animation/AnimatedContentScope;

    move-object/from16 v2, p2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    move-object/from16 v8, p3

    check-cast v8, Landroidx/compose/runtime/Composer;

    move-object/from16 v3, p4

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const v1, 0x7f140676

    invoke-static {v8, v1}, Landroidx/compose/ui/res/StringResources_androidKt;->c(Landroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/options/settings/b;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v5, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_0

    if-ne v2, v5, :cond_1

    :cond_0
    new-instance v2, Lsd0;

    const/4 v1, 0x1

    invoke-direct {v2, v3, v1}, Lsd0;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;I)V

    invoke-interface {v8, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v2, Lkotlin/jvm/functions/Function0;

    iget-object v11, v0, Lcom/vuitton/android/presentation/screen/options/settings/b;->c:Landroidx/navigation/NavHostController;

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_2

    if-ne v1, v5, :cond_3

    :cond_2
    new-instance v9, Lcom/vuitton/android/presentation/screen/options/settings/SettingsNavHostKt$SettingsNavHost$6$1$4$2$1;

    const-string v14, "popBackStack()Z"

    const/16 v15, 0x8

    const/4 v10, 0x0

    const-class v12, Landroidx/navigation/NavHostController;

    const-string v13, "popBackStack"

    invoke-direct/range {v9 .. v15}, Lkotlin/jvm/internal/AdaptedFunctionReference;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v8, v9}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v9

    :cond_3
    move-object v6, v1

    check-cast v6, Lkotlin/jvm/functions/Function0;

    invoke-interface {v8, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v8, v11}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_4

    if-ne v1, v5, :cond_5

    :cond_4
    new-instance v1, Ljm0;

    const/16 v0, 0x15

    invoke-direct {v1, v3, v11, v0}, Ljm0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v8, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_5
    move-object v7, v1

    check-cast v7, Lkotlin/jvm/functions/Function0;

    const/4 v9, 0x0

    move-object v5, v2

    invoke-static/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditMyInfoComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
