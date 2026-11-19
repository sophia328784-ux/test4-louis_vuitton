.class public final synthetic Lcom/vuitton/android/presentation/screen/options/notifications/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/options/notifications/a;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/options/notifications/a;->c:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->q:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$Companion;

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/2addr v0, v3

    invoke-interface {v6, v0, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/options/notifications/a;->b:Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    iget-object v0, v9, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {v0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v1, :cond_1

    if-ne v2, v3, :cond_2

    :cond_1
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$onCreate$1$1$1$1;

    const-string v12, "navigateToPrivacyPolicy()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    const-string v11, "navigateToPrivacyPolicy"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v2, v7

    :cond_2
    check-cast v2, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v1, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$onCreate$1$1$2$1;

    const-string v12, "finish()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    const-string v11, "finish"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v7

    :cond_4
    check-cast v4, Lkotlin/reflect/KFunction;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez v1, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    new-instance v7, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity$onCreate$1$1$3$1;

    const-string v12, "navigateToLegalSettings()V"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const-class v10, Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesActivity;

    const-string v11, "navigateToLegalSettings"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v5, v7

    :cond_6
    check-cast v5, Lkotlin/reflect/KFunction;

    move-object v1, v2

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v7

    if-nez v2, :cond_7

    if-ne v7, v3, :cond_8

    :cond_7
    new-instance v7, Lx60;

    const/16 v2, 0x10

    invoke-direct {v7, v9, v2}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v2, v7

    check-cast v2, Lkotlin/jvm/functions/Function0;

    move-object v3, v4

    check-cast v3, Lkotlin/jvm/functions/Function0;

    move-object v4, v5

    check-cast v4, Lkotlin/jvm/functions/Function0;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/options/notifications/a;->c:Z

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/options/notifications/components/NotificationsPreferencesComposableKt;->b(Lcom/vuitton/android/presentation/screen/options/notifications/NotificationsPreferencesViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ZLandroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_9
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
