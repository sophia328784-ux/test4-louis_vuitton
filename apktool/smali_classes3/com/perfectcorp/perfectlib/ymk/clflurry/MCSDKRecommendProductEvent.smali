.class public final Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent;
.super Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;",
            ")V"
        }
    .end annotation

    const-string v0, "MCSDK_recommend_product"

    const-string v1, "2"

    invoke-direct {p0, v0, v1}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->a()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "type"

    invoke-static {p2}, Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;->a(Lcom/perfectcorp/perfectlib/ymk/clflurry/MCSDKRecommendProductEvent$Type;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "operation"

    const-string v1, "product_recommend"

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "^"

    invoke-static {p2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "product_id"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/perfectcorp/perfectlib/ymk/clflurry/BaseEvent;->c(Ljava/util/Map;)V

    return-void
.end method
