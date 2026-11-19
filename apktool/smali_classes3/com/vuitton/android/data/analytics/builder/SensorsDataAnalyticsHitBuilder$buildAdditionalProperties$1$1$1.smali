.class final Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;
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
        "Ljava/lang/CharSequence;",
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


# static fields
.field public static final b:Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;->b:Lcom/vuitton/android/data/analytics/builder/SensorsDataAnalyticsHitBuilder$buildAdditionalProperties$1$1$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;

    iget-object p0, p1, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method
