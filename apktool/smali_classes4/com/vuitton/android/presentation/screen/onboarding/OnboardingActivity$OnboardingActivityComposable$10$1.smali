.class final synthetic Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$10$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/vuitton/android/core/type/SystemIcons;",
        "Lcom/vuitton/android/core/type/SystemIcons;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/core/type/SystemIcons;

    iget-boolean p1, p1, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    check-cast p2, Lcom/vuitton/android/core/type/SystemIcons;

    iget-boolean p2, p2, Lcom/vuitton/android/core/type/SystemIcons;->a:Z

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Landroidx/activity/ComponentActivity;

    invoke-static {p0, p1, p2}, Lcom/vuitton/android/presentation/compose/components/EdgeToEdgeKt;->a(Landroidx/activity/ComponentActivity;ZZ)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
