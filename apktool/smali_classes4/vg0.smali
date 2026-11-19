.class public final synthetic Lvg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lvg0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;IB)V
    .locals 0

    .line 9
    iput p2, p0, Lvg0;->b:I

    iput-object p1, p0, Lvg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lvg0;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object p0, p0, Lvg0;->c:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;

    const/4 v3, 0x1

    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    invoke-static {v3}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->I(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

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

    if-eqz p2, :cond_1

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    invoke-virtual {p0, p1, v2}, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->I(Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sget-object v0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;->t:Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$Companion;

    and-int/lit8 v0, p2, 0x3

    if-eq v0, v1, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    and-int/2addr p2, v3

    invoke-interface {p1, p2, v0}, Landroidx/compose/runtime/Composer;->p(IZ)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    new-instance p2, Lvg0;

    invoke-direct {p2, p0, v3, v2}, Lvg0;-><init>(Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity;IB)V

    const p0, 0x60fd4924

    invoke-static {p0, p2, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->b(ILkotlin/Function;Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    move-result-object p0

    const/16 p2, 0x30

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/vuitton/android/designkit/ui/theme/ThemeKt;->a(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_3

    :cond_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->D()V

    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
