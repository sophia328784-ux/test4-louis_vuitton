.class public final synthetic Lcom/vuitton/android/presentation/screen/account/myinformation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/a;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v4, p1

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object p2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;->r:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v0, :cond_0

    move p2, v2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    and-int/2addr p1, v2

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/a;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    new-instance p2, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$onCreate$1$1$1$1;

    const/4 p0, 0x0

    invoke-direct {p2, v7, p0}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p2, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p1, p2}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    new-array p0, v2, [Landroidx/navigation3/runtime/NavKey;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;->INSTANCE:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$MyInfo;

    aput-object p1, p0, v1

    invoke-static {p0, v4}, Landroidx/navigation3/runtime/RememberNavBackStackKt;->a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;

    move-result-object p0

    iget-object p1, v7, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p1}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    if-ne p2, v0, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$onCreate$1$1$2$1;

    const-string v10, "finish()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    const-string v9, "finish"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v5

    :cond_4
    check-cast p2, Lkotlin/reflect/KFunction;

    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity$onCreate$1$1$3$1;

    const-string v10, "setFlagSecure(Z)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationActivity;

    const-string v9, "setFlagSecure"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v5

    :cond_6
    check-cast p2, Lkotlin/reflect/KFunction;

    move-object v3, p2

    check-cast v3, Lkotlin/jvm/functions/Function1;

    sget-object p1, Landroidx/navigation3/runtime/NavBackStack;->Companion:Landroidx/navigation3/runtime/NavBackStack$Companion;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt;->a(Landroidx/navigation3/runtime/NavBackStack;Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_7
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
