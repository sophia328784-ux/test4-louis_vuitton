.class final synthetic Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$onCreate$1$1$5$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
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


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->D:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/perfectcorp/perfectlib/PerfectEffect;->SKIN_SMOOTH:Lcom/perfectcorp/perfectlib/PerfectEffect;

    const/16 v1, 0x1e

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;->t:Lcom/perfectcorp/perfectlib/VtoApplier;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$configureSkinSmoothEffect$1;

    invoke-direct {v2, p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity$configureSkinSmoothEffect$1;-><init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/BeautyVtoActivity;)V

    invoke-virtual {v1, v0, v2}, Lcom/perfectcorp/perfectlib/VtoApplier;->setIntensities(Ljava/util/Map;Lcom/perfectcorp/perfectlib/VtoApplier$ApplyCallback;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
