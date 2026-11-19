.class final Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt$ServicesComposable$2$1$1;
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
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt$ServicesComposable$2$1$1;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    check-cast p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent;

    sget-object p2, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToMyExperiences;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToMyExperiencesPage;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;

    if-eqz p2, :cond_2

    new-instance v0, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;

    check-cast p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;->a:Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;

    sget-object v6, Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;->CUSTOMER_SERVICES:Lcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;

    iget-boolean v8, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesNavigationEvent$ToOsa;->b:Z

    const/16 v9, 0x5e

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToOsaPage;-><init>(Lcom/vuitton/android/presentation/screen/osa/OsaRoutesName;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/osa/models/OsaOriginScreen;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :goto_0
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/services/components/ServicesComposableKt$ServicesComposable$2$1$1;->b:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p0, p1}, Lcom/vuitton/android/platform/extensions/IntentExtensionKt;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :cond_2
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0
.end method
