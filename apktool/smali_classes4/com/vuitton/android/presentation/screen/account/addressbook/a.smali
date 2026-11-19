.class public final synthetic Lcom/vuitton/android/presentation/screen/account/addressbook/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/a;->b:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

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

    sget-object p2, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->q:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$Companion;

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

    if-eqz p1, :cond_b

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p1, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    invoke-direct {p1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/addressbook/a;->b:Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p0, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    new-instance p2, Lc1;

    const/4 p0, 0x7

    invoke-direct {p2, v7, p0}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, p2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast p2, Lkotlin/jvm/functions/Function1;

    invoke-static {p1, p2, v4, v1}, Landroidx/activity/compose/ActivityResultRegistryKt;->a(Landroidx/activity/result/contract/ActivityResultContract;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Landroidx/activity/compose/ManagedActivityResultLauncher;

    move-result-object p0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_3

    if-ne v1, v0, :cond_4

    :cond_3
    new-instance v1, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$onCreate$1$1$1$1;

    const/4 p2, 0x0

    invoke-direct {v1, v7, p2}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$onCreate$1$1$1$1;-><init>(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;Lkotlin/coroutines/Continuation;)V

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v4, p1, v1}, Landroidx/compose/runtime/EffectsKt;->e(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    move-object p1, v0

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;->H()Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;

    move-result-object v0

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v1

    if-nez p2, :cond_5

    if-ne v1, p1, :cond_6

    :cond_5
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity$onCreate$1$1$2$1;

    const-string v10, "finish()V"

    const/4 v11, 0x0

    const/4 v6, 0x0

    const-class v8, Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookActivity;

    const-string v9, "finish"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object v1, v5

    :cond_6
    check-cast v1, Lkotlin/reflect/KFunction;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p2, v2

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x3

    if-nez p2, :cond_7

    if-ne v2, p1, :cond_8

    :cond_7
    new-instance v2, Ll0;

    invoke-direct {v2, v7, p0, v3}, Ll0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_8
    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v4, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr p2, v5

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_9

    if-ne v5, p1, :cond_a

    :cond_9
    new-instance v5, Lf0;

    invoke-direct {v5, v7, p0, v3}, Lf0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_a
    move-object v3, v5

    check-cast v3, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/addressbook/components/AddressBookComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/addressbook/AddressBookViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_b
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
