.class final Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;
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
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;

.field public final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->d:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->b:Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;

    iget-object v0, p2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->z:Ljava/util/LinkedHashSet;

    iget-object p2, p2, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl;->c:Lcom/vuitton/foundation/logger/Logger;

    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;->b:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResult;->a:Ljava/util/UUID;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->SUCCEEDED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->c:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;->FAILED:Lcom/vuitton/foundation/model/domain/model/spotlight/WorkInfoResultState;

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/SpotlightViewModelImpl$preCacheVideo$1$1$1$1;->d:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
