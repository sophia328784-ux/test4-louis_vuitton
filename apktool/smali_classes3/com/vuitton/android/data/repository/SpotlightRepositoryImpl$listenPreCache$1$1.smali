.class final Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1$1;
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
.field public final synthetic b:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1$1;->b:Lkotlinx/coroutines/flow/FlowCollector;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroidx/work/WorkInfo;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;

    iget-object v1, p1, Landroidx/work/WorkInfo;->a:Ljava/util/UUID;

    iget-object p1, p1, Landroidx/work/WorkInfo;->b:Landroidx/work/WorkInfo$State;

    sget-object v2, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$WhenMappings;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    packed-switch p1, :pswitch_data_0

    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->CANCELLED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->BLOCKED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    goto :goto_0

    :pswitch_2
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->FAILED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    goto :goto_0

    :pswitch_3
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->SUCCEEDED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    goto :goto_0

    :pswitch_4
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->RUNNING:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    goto :goto_0

    :pswitch_5
    sget-object p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->ENQUEUED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;-><init>(Ljava/util/UUID;Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;)V

    iget-object p0, p0, Lcom/vuitton/android/data/repository/SpotlightRepositoryImpl$listenPreCache$1$1;->b:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
