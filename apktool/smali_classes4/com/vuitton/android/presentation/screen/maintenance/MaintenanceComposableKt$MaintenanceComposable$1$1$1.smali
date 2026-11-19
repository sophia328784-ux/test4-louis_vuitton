.class final Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt$MaintenanceComposable$1$1$1;
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
.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt$MaintenanceComposable$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt$MaintenanceComposable$1$1$1;->c:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation;

    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToContactUs;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToContactUs;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToContactUs;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt$MaintenanceComposable$1$1$1;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToClientServices;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToClientServices;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceViewModel$Navigation$GoToClientServices;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/maintenance/MaintenanceComposableKt$MaintenanceComposable$1$1$1;->c:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_1
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
