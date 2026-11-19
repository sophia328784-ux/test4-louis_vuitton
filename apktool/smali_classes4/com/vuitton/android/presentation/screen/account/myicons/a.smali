.class public final synthetic Lcom/vuitton/android/presentation/screen/account/myicons/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myicons/a;->b:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

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

    sget-object p2, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;->q:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$Companion;

    and-int/lit8 p2, p1, 0x3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    and-int/2addr p1, v1

    invoke-interface {v4, p1, p2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/myicons/a;->b:Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p1, p2, :cond_2

    :cond_1
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$onCreate$1$1$1$1;

    const-string v10, "getCurrentIcon()Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    const-string v9, "getCurrentIcon"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_2
    check-cast p1, Lkotlin/reflect/KFunction;

    move-object v0, p1

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_3

    if-ne p1, p2, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$onCreate$1$1$2$1;

    const-string v10, "finish()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    const-string v9, "finish"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_4
    check-cast p1, Lkotlin/reflect/KFunction;

    move-object v1, p1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_5

    if-ne p1, p2, :cond_6

    :cond_5
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity$onCreate$1$1$3$1;

    const-string v10, "onUpdateLauncherIcon(Lcom/vuitton/android/presentation/model/onboarding/IconLauncherType;)V"

    const/4 v11, 0x0

    const/4 v6, 0x1

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myicons/MyIconsActivity;

    const-string v9, "onUpdateLauncherIcon"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p1, v5

    :cond_6
    check-cast p1, Lkotlin/reflect/KFunction;

    move-object v2, p1

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_7

    if-ne p1, p2, :cond_8

    :cond_7
    new-instance p1, Ltb0;

    const/16 p0, 0x9

    invoke-direct {p1, v7, p0}, Ltb0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    move-object v3, p1

    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/myicons/components/MyIconsComposableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_9
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
