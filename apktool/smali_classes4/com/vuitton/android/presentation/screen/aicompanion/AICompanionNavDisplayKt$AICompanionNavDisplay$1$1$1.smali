.class final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$1$1$1;
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
.field public final synthetic b:Landroidx/navigation3/runtime/NavBackStack;


# direct methods
.method public constructor <init>(Landroidx/navigation3/runtime/NavBackStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$1$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlin/Unit;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionNavDisplayKt$AICompanionNavDisplay$1$1$1;->b:Landroidx/navigation3/runtime/NavBackStack;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->N(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/navigation3/runtime/NavKey;

    sget-object p2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Onboarding;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;->INSTANCE:Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionRoutes$Chat;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Lcom/vuitton/android/presentation/extensions/Nav3ExtKt;->a(Landroidx/navigation3/runtime/NavBackStack;Landroidx/navigation3/runtime/NavKey;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
