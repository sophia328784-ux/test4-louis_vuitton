.class public abstract Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/RepairTimeSlotMapperKt;
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
.method public static final a(Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;)Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/RepairTimeSlotMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;)Ljava/lang/Object;

    move-result-object v3

    instance-of v5, v3, Lkotlin/Result$Failure;

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    check-cast v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v4, :cond_0

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;

    invoke-static {v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/mappers/RepairTimeSlotMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lkotlin/Result$Failure;

    if-eqz v6, :cond_4

    move-object v5, v4

    :cond_4
    check-cast v5, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    if-eqz v5, :cond_3

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;->e:Ljava/lang/String;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/StoreSlotsUiModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->u(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;->c:Ljava/lang/String;

    const-string v4, "Z"

    const-string v5, ""

    invoke-static {v0, v4, v5}, Lkotlin/text/StringsKt;->J(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;->d:Ljava/lang/String;

    iget-object v6, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;->e:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lkotlin/Result;

    invoke-direct {p0, v1}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of p0, v0, Ljava/util/concurrent/CancellationException;

    if-nez p0, :cond_1

    new-instance p0, Lkotlin/Result$Failure;

    invoke-direct {p0, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    new-instance v0, Lkotlin/Result;

    invoke-direct {v0, p0}, Lkotlin/Result;-><init>(Ljava/lang/Object;)V

    move-object p0, v0

    :goto_1
    check-cast p0, Lkotlin/Result;

    iget-object p0, p0, Lkotlin/Result;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    throw v0
.end method
