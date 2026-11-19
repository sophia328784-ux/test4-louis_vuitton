.class public abstract Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt;
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


# direct methods
.method public static final a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt$toHotContentOrderItems$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemMapperKt$toHotContentOrderItems$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt;->o0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/orders/models/PurchasedOrderUiModel;->d:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    iget-object v4, v3, Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;->e:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v4, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    invoke-direct {v7, v3, v6}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-static {v2, v5}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_1
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem;Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;
    .locals 11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;->a:Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->e(Lcom/vuitton/foundation/model/domain/model/account/orders/Transaction;Z)Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;

    move-result-object v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$Order;->b:Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/orders/models/mappers/OrderMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/account/orders/TransactionItem;)Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;-><init>(Lcom/vuitton/android/presentation/screen/orders/models/TransactionUiModel;Lcom/vuitton/android/presentation/screen/orders/models/TransactionItemUiModel;)V

    return-object p1

    :cond_0
    instance-of v0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$StoreAppointment;->a:Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lkotlin/Result$Failure;

    if-eqz v0, :cond_1

    move-object p0, v1

    :cond_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    if-eqz p0, :cond_4

    new-instance v0, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    sget-object v4, Ljava/time/format/FormatStyle;->FULL:Ljava/time/format/FormatStyle;

    invoke-static {p1, v3, v4}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->h(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/time/LocalDateTime;Ljava/time/format/FormatStyle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->f:Ljava/lang/String;

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    invoke-direct {v0, v2, p1, v1}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$StoreAppointment;-><init>(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    instance-of p1, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    if-eqz p1, :cond_7

    new-instance p1, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;

    check-cast p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/hotcontent/HotContentItem$CareService;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->d:Ljava/lang/String;

    iget-object v8, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->f:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;

    iget-object v7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->e:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceHotContent;->g:Lcom/vuitton/foundation/model/domain/model/common/AssetImage;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lcom/vuitton/android/presentation/model/common/mapper/AssetMapperKt;->a(Lcom/vuitton/foundation/model/domain/model/common/AssetImage;)Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    move-result-object v1

    :cond_6
    move-object v9, v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAction;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p1, v2}, Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$CareService;-><init>(Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceHotContentUiModel;)V

    return-object p1

    :cond_7
    invoke-static {}, Lv40;->g()V

    return-object v1
.end method
