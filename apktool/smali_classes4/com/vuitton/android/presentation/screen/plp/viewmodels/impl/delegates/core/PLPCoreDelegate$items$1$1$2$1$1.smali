.class final Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/vuitton/foundation/model/domain/model/product/SkuId;",
        "Ljava/lang/Boolean;",
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


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate$items$1$1$2$1$1;->b:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/core/PLPCoreDelegate;->j:Ljava/util/LinkedHashMap;

    new-instance v0, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    invoke-direct {v0, p1}, Lcom/vuitton/foundation/model/domain/model/product/SkuId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
