.class public abstract Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lkotlin/Lazy;

.field public static final b:Lkotlin/Lazy;

.field public static final c:Lkotlin/Lazy;

.field public static final d:Lkotlin/Lazy;

.field public static final e:Lkotlin/Lazy;

.field public static final f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

.field public static final g:Lkotlin/Lazy;

.field public static final h:Lkotlin/Lazy;

.field public static final i:Lkotlin/Lazy;

.field public static final j:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lfa0;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->b:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->c:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->d:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x17

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->e:Lkotlin/Lazy;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    const-string v6, ""

    sget-object v7, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;->NORMAL:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;

    const-string v2, "sampleId"

    const-string v4, "Sample Name"

    const-string v5, "Sample Description"

    invoke-direct/range {v1 .. v7}, Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleState;)V

    sput-object v1, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->f:Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;

    new-instance v0, Lfa0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->g:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->h:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->i:Lkotlin/Lazy;

    new-instance v0, Lfa0;

    const/16 v1, 0x1b

    invoke-direct {v0, v1}, Lfa0;-><init>(I)V

    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->j:Lkotlin/Lazy;

    return-void
.end method

.method public static a()Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;
    .locals 23

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->g:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;

    new-instance v4, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    const-wide v5, 0x40c1940000000000L    # 9000.0

    const-string v0, "900\u20ac"

    const-string v7, "\u20ac"

    invoke-direct {v4, v5, v6, v0, v7}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, "natoque"

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->O(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    new-instance v10, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;

    const-wide v5, 0x408f400000000000L    # 1000.0

    const-string v0, "1000\u20ac"

    invoke-direct {v10, v5, v6, v0, v7}, Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;-><init>(DLjava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;

    const-string v5, "disclaimer"

    invoke-direct {v0, v5}, Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel$Text;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;

    const-string v6, "Type"

    const-string v7, "Hot stamping"

    invoke-direct {v5, v6, v7}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Text;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;

    const-string v7, "Color"

    const-string v9, "#123456"

    invoke-direct {v6, v7, v9}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization$Color;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemCustomization;

    const/4 v9, 0x0

    aput-object v5, v7, v9

    const/4 v5, 0x1

    aput-object v6, v7, v5

    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    new-array v5, v5, [Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier;

    sget-object v6, Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier$Reason;->b:Lcom/vuitton/android/presentation/screen/orders/models/FieldIdentifier$Reason;

    aput-object v6, v5, v9

    invoke-static {v5}, Lkotlin/collections/SetsKt;->e([Ljava/lang/Object;)Ljava/util/LinkedHashSet;

    move-result-object v20

    const/16 v21, 0x80

    const/16 v22, 0x0

    const/4 v5, 0x0

    const-string v6, "Sac Keepall"

    const-string v7, "M41414"

    const/4 v9, 0x0

    const/4 v11, 0x1

    const-string v12, "possit"

    const-string v13, "tristique"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, v0

    invoke-direct/range {v1 .. v22}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/TimelineUiModel;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/orders/models/PriceItemUiModel;ILjava/lang/String;Ljava/lang/String;ZZLcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/util/List;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v1
.end method

.method public static final b()Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;
    .locals 9

    new-instance v0, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/orders/models/MocksKt;->a()Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v1

    sget-object v2, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;->a(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Lkotlin/collections/EmptyList;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object v1

    const/16 v7, 0x38

    const/4 v8, 0x0

    const-string v2, "locationId"

    const-string v3, "shippingGroupId"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/orders/models/OrderReturnOrExchangeItemUiModel;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/orders/models/OrderReturnReasonUiModel;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
