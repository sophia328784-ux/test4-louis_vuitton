.class final Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
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


# instance fields
.field public final synthetic b:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$1$1$1;->b:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingRoutes;

    const/4 p2, 0x0

    const/4 v0, 0x6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/onboarding/OnboardingActivity$OnboardingActivityComposable$1$1$1;->b:Landroidx/navigation/NavHostController;

    invoke-static {p0, p1, p2, v0}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
