.class public final synthetic Ls2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;I)V
    .locals 0

    iput p2, p0, Ls2;->b:I

    iput-object p1, p0, Ls2;->c:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Ls2;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Ls2;->c:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;

    const/4 v2, 0x2

    const/4 v3, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->q:Landroidx/lifecycle/ViewModelLazy;

    invoke-virtual {p2}, Landroidx/lifecycle/ViewModelLazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez v0, :cond_1

    if-ne v3, v4, :cond_2

    :cond_1
    new-instance v3, Lw1;

    invoke-direct {v3, p0, v2}, Lw1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v3}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_3

    if-ne v2, v4, :cond_4

    :cond_3
    new-instance v2, Lc1;

    const/4 v0, 0x3

    invoke-direct {v2, p0, v0}, Lc1;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {p2, v3, v2, p1, v1}, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/components/AccountActivationComposableKt;->a(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationViewModel;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;->r:Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v2, :cond_6

    move v1, v3

    :cond_6
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v1}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Ls2;

    invoke-direct {p2, p0, v3}, Ls2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/accountactivation/AccountActivationActivity;I)V

    const p0, 0x2325644a

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
