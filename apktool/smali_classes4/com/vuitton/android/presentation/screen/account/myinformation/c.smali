.class public final synthetic Lcom/vuitton/android/presentation/screen/account/myinformation/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

.field public final synthetic c:Landroidx/navigation3/runtime/NavBackStack;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;

.field public final synthetic e:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->c:Landroidx/navigation3/runtime/NavBackStack;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->d:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->e:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationRoute$EditPassword;

    move-object v4, p2

    check-cast v4, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 p1, p2, 0x11

    const/16 p3, 0x10

    const/4 v0, 0x1

    if-eq p1, p3, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    and-int/2addr p2, v0

    invoke-interface {v4, p2, p1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->c:Landroidx/navigation3/runtime/NavBackStack;

    invoke-interface {v4, p1}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v4, p3}, Landroidx/compose/runtime/Composer;->K(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p2, v0

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Ly0;

    const/16 p2, 0xd

    invoke-direct {v0, p1, p3, p2}, Ly0;-><init>(Landroidx/navigation3/runtime/NavBackStack;Lkotlin/jvm/functions/Function0;I)V

    invoke-interface {v4, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->b:Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_3

    if-ne p2, v1, :cond_4

    :cond_3
    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationNavDisplayKt$MyInformationNavDisplay$1$3$2$1;

    const-string v10, "savePasswordChanges(Ljava/lang/String;Ljava/lang/String;)V"

    const/4 v11, 0x0

    const/4 v6, 0x2

    const-class v8, Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;

    const-string v9, "savePasswordChanges"

    invoke-direct/range {v5 .. v11}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    move-object p2, v5

    :cond_4
    check-cast p2, Lkotlin/reflect/KFunction;

    move-object v2, p2

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/c;->e:Lkotlin/jvm/functions/Function1;

    move-object v1, v0

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/account/myinformation/components/edition/EditPasswordComposableKt;->a(Lcom/vuitton/android/presentation/screen/account/myinformation/MyInformationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
