.class final Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

.field public final synthetic c:Landroidx/navigation/NavHostController;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;Landroidx/navigation/NavHostController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1$1;->c:Landroidx/navigation/NavHostController;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlin/Result;

    iget-object p1, p1, Lkotlin/Result;->b:Ljava/lang/Object;

    instance-of p1, p1, Lkotlin/Result$Failure;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1$1;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->J0()V

    sget-object p1, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Confirmation;->INSTANCE:Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentRoutes$Confirmation;

    const/4 p2, 0x0

    const/4 v0, 0x6

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentBffComposableKt$AssessmentBffComposable$2$1$1;->c:Landroidx/navigation/NavHostController;

    invoke-static {p0, p1, p2, v0}, Landroidx/navigation/NavController;->d(Landroidx/navigation/NavController;Ljava/lang/Object;Landroidx/navigation/NavOptions;I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
