.class final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt$VtoCameraButton$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/input/pointer/PointerInputEventHandler;


# annotations
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
.field public final synthetic a:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt$VtoCameraButton$1$1;->a:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v2, Lo51;

    const/4 v0, 0x2

    invoke-direct {v2, v0}, Lo51;-><init>(I)V

    new-instance v3, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt$VtoCameraButton$1$1$2;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt$VtoCameraButton$1$1;->a:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/VtoCameraButtonKt$VtoCameraButton$1$1$2;-><init>(Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x0

    const/16 v6, 0x9

    const/4 v1, 0x0

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/foundation/gestures/TapGestureDetectorKt;->e(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;I)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
