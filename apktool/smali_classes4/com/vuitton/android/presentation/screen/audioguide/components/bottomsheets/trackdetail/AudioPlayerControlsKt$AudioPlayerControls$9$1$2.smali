.class final Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$9$1$2;
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
.field public final synthetic b:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$9$1$2;->b:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lkotlin/Pair;

    iget-object p2, p1, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget-object p1, p1, Lkotlin/Pair;->c:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    if-eqz p2, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;

    invoke-direct {p1, v0, v1}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TooltipContent$Timecode;-><init>(J)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/AudioPlayerControlsKt$AudioPlayerControls$9$1$2;->b:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
