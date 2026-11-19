.class final Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;
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

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Landroidx/compose/foundation/pager/PagerState;

.field public final synthetic e:Landroidx/compose/runtime/MutableIntState;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroid/content/Context;Landroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableIntState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->b:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->d:Landroidx/compose/foundation/pager/PagerState;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->e:Landroidx/compose/runtime/MutableIntState;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->e:Landroidx/compose/runtime/MutableIntState;

    invoke-interface {p2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->b:Lkotlin/jvm/functions/Function1;

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;->NEXT:Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/IntState;->f()I

    move-result v0

    if-ge p1, v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;->PREVIOUS:Lcom/vuitton/android/presentation/screen/portal/PortalSwipeType;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2, p1}, Landroidx/compose/runtime/MutableIntState;->i(I)V

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->d:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p2}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/components/PortalSliderComponentKt$PortalSliderComponent$1$1$2;->c:Landroid/content/Context;

    const p2, 0x7f140376

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lcom/vuitton/android/presentation/utils/AccessibilityUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
