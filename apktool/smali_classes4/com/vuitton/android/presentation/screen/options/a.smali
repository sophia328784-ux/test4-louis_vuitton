.class public final synthetic Lcom/vuitton/android/presentation/screen/options/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/OptionsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/OptionsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/a;->b:Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->u:Lcom/vuitton/android/presentation/screen/options/OptionsActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v12, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-array v0, v4, [Landroidx/navigation/Navigator;

    invoke-static {v0, v12}, Landroidx/navigation/compose/NavHostControllerKt;->a([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;)Landroidx/navigation/NavHostController;

    move-result-object v0

    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/options/a;->b:Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->s:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;

    iget-object v1, v3, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->t:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    iget-object v13, v3, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;->p:Lcom/vuitton/android/presentation/PreprodRouter;

    if-eqz v13, :cond_d

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v14, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v14, :cond_2

    :cond_1
    new-instance v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity$onCreate$1$1$1$1;

    const-string v6, "finish()V"

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-class v4, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    const-string v5, "finish"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object v15, v2

    check-cast v15, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_3

    if-ne v2, v14, :cond_4

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity$onCreate$1$1$2$1;

    const-string v6, "onLogoutSuccess()V"

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-class v4, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    const-string v5, "onLogoutSuccess"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_4
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_5

    if-ne v2, v14, :cond_6

    :cond_5
    new-instance v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity$onCreate$1$1$3$1;

    const-string v6, "onDeeplinkClicked(Ljava/lang/String;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    const-string v5, "onDeeplinkClicked"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_6
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v17, v2

    check-cast v17, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_7

    if-ne v2, v14, :cond_8

    :cond_7
    new-instance v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity$onCreate$1$1$4$1;

    const-string v6, "onAppInfoClicked(Lcom/vuitton/android/presentation/screen/options/appinfo/models/AppInfo;)V"

    const/4 v7, 0x0

    const/4 v2, 0x1

    const-class v4, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    const-string v5, "onAppInfoClicked"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_8
    check-cast v2, Lkotlin/reflect/KFunction;

    move-object/from16 v18, v2

    check-cast v18, Lkotlin/jvm/functions/Function1;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_9

    if-ne v2, v14, :cond_a

    :cond_9
    new-instance v2, Lx60;

    const/16 v1, 0x13

    invoke-direct {v2, v3, v1}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object/from16 v19, v2

    check-cast v19, Lkotlin/jvm/functions/Function0;

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_b

    if-ne v2, v14, :cond_c

    :cond_b
    new-instance v1, Lcom/vuitton/android/presentation/screen/options/OptionsActivity$onCreate$1$1$6$1;

    const-string v6, "openAccessibilityStatement()V"

    const/4 v7, 0x0

    const/4 v2, 0x0

    const-class v4, Lcom/vuitton/android/presentation/screen/options/OptionsActivity;

    const-string v5, "openAccessibilityStatement"

    invoke-direct/range {v1 .. v7}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v1

    :cond_c
    check-cast v2, Lkotlin/reflect/KFunction;

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v5, v13

    const/4 v13, 0x0

    move-object v1, v8

    move-object v3, v10

    move-object v4, v11

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v10, v19

    move-object v11, v2

    move-object v2, v9

    move-object/from16 v9, v18

    invoke-static/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/options/OptionsNavHostKt;->a(Landroidx/navigation/NavHostController;Lcom/vuitton/android/presentation/screen/options/OptionsViewModel;Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;Lcom/vuitton/android/presentation/screen/options/appinfo/AppInfoViewModel;Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lcom/vuitton/android/presentation/PreprodRouter;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_d
    const-string v0, "preprodRouter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_e
    invoke-interface {v12}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method
