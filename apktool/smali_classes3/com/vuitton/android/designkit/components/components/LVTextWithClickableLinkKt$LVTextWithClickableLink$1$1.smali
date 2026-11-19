.class final Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;
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
.field public final synthetic a:Landroidx/compose/ui/text/TextLayoutResult;

.field public final synthetic b:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutResult;Landroidx/compose/ui/text/AnnotatedString;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->a:Landroidx/compose/ui/text/TextLayoutResult;

    iput-object p2, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->b:Landroidx/compose/ui/text/AnnotatedString;

    iput-object p3, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->c:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    new-instance v4, Ljx;

    const/16 v0, 0x9

    iget-object v1, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->a:Landroidx/compose/ui/text/TextLayoutResult;

    iget-object v2, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->b:Landroidx/compose/ui/text/AnnotatedString;

    iget-object p0, p0, Lcom/vuitton/android/designkit/components/components/LVTextWithClickableLinkKt$LVTextWithClickableLink$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-direct {v4, v1, v2, p0, v0}, Ljx;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v6, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

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
