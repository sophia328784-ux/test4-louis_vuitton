.class public final synthetic Lv2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;I)V
    .locals 0

    iput p2, p0, Lv2;->b:I

    iput-object p1, p0, Lv2;->c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lv2;->b:I

    const/4 v1, 0x2

    iget-object p0, p0, Lv2;->c:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-nez p2, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Lw2;

    invoke-direct {v0, p0, v2}, Lw2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez p2, :cond_3

    if-ne v4, v1, :cond_4

    :cond_3
    new-instance v4, Lw2;

    invoke-direct {v4, p0, v3}, Lw2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v4, p1, v2}, Lcom/vuitton/android/presentation/screen/authentication/landing/components/AccountActivationLandingComposableKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-object v0, Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;->p:Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_6

    move v2, v3

    :cond_6
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v2}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_7

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lv2;

    invoke-direct {p2, p0, v3}, Lv2;-><init>(Lcom/vuitton/android/presentation/screen/authentication/landing/AccountActivationLandingActivity;I)V

    const p0, -0x442d04c2

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

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
