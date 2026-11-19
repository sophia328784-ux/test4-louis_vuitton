.class public final synthetic Lcom/vuitton/android/presentation/screen/account/lvpass/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/a;->b:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    move-object/from16 p1, p2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->s:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$Companion;

    and-int/lit8 v0, p1, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p1, v3

    invoke-interface {v6, p1, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v9, p0, Lcom/vuitton/android/presentation/screen/account/lvpass/a;->b:Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr p0, v1

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne v1, v3, :cond_2

    :cond_1
    new-instance v1, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$onCreate$1$1$1$1$1;

    const/4 p0, 0x0

    invoke-direct {v1, v9, p1, p0}, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$onCreate$1$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v6, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v6, v0, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    iget-object p0, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;

    iget-object p0, v9, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;->r:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez p0, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    new-instance v7, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity$onCreate$1$1$1$2$1;

    const-string v12, "setBrightness(Z)V"

    const/4 v13, 0x0

    const/4 v8, 0x1

    const-class v10, Lcom/vuitton/android/presentation/screen/account/lvpass/LVPassActivity;

    const-string v11, "setBrightness"

    invoke-direct/range {v7 .. v13}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v7}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v4, v7

    :cond_4
    check-cast v4, Lkotlin/reflect/KFunction;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr p0, v5

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    const/4 v7, 0x7

    if-nez p0, :cond_5

    if-ne v5, v3, :cond_6

    :cond_5
    new-instance v5, Lt30;

    invoke-direct {v5, v9, p1, v7}, Lt30;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v6, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_6
    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, v9}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v8

    if-nez p0, :cond_7

    if-ne v8, v3, :cond_8

    :cond_7
    new-instance v8, Lx60;

    invoke-direct {v8, v9, v2}, Lx60;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v6, v8}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v8, Lkotlin/jvm/functions/Function0;

    invoke-interface {v6, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez p0, :cond_9

    if-ne v2, v3, :cond_a

    :cond_9
    new-instance v2, Lef;

    invoke-direct {v2, p1, v7}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-interface {v6, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    check-cast v2, Lkotlin/jvm/functions/Function1;

    const/4 v7, 0x0

    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    move-object v4, v8

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/account/lvpass/components/QRCodeComposableKt;->b(Lcom/vuitton/android/presentation/screen/account/lvpass/QRCodeViewModel;Lcom/vuitton/android/presentation/screen/account/userworldwideid/UserWorldwideIdViewModel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_b
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
