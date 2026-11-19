.class public final synthetic Lcom/vuitton/android/presentation/screen/account/editavatar/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/a;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;->q:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    and-int/2addr p2, v2

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/account/editavatar/a;->b:Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    iget-object p0, v6, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;->p:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p0}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;

    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity$onCreate$1$1$1$1;

    const-string v9, "onBackClicked()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-class v7, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    const-string v8, "onBackClicked"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v0, v4

    :cond_2
    check-cast v0, Lkotlin/reflect/KFunction;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    new-instance v4, Lpv;

    invoke-direct {v4, v6, v2}, Lpv;-><init>(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {p0, v0, v4, p1, v3}, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-interface {p1, v6}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p0, :cond_5

    if-ne p2, v1, :cond_6

    :cond_5
    new-instance v4, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity$onCreate$1$1$3$1;

    const-string v9, "onBackClicked()V"

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-class v7, Lcom/vuitton/android/presentation/screen/account/editavatar/EditAvatarActivity;

    const-string v8, "onBackClicked"

    invoke-direct/range {v4 .. v10}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v4

    :cond_6
    check-cast p2, Lkotlin/reflect/KFunction;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {v3, p2, p1, v3, v2}, Landroidx/activity/compose/BackHandlerKt;->a(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    goto :goto_1

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
