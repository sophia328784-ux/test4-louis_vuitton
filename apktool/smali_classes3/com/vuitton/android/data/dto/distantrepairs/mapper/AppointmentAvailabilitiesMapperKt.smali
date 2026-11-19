.class public abstract Lcom/vuitton/android/data/dto/distantrepairs/mapper/AppointmentAvailabilitiesMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "data"
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
.method public static final a(Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;)Ljava/util/ArrayList;
    .locals 14

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentAvailabilitiesDtoResponse;->b:Ljava/util/List;

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->d:Ljava/util/List;

    iget-object v8, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->c:Ljava/lang/String;

    iget-object v9, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_1
    iget-object v10, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->c:Ljava/lang/String;

    iget-object v11, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->a:Ljava/lang/String;

    check-cast v2, Ljava/lang/Iterable;

    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v2, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;

    move-object v5, v4

    iget-object v4, v5, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;->b:Ljava/lang/String;

    const-string v7, ""

    move-object v6, v5

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    check-cast v9, Ljava/lang/Iterable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v9, v13}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v3

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;

    move-object v5, v4

    iget-object v4, v5, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/android/data/dto/distantrepairs/SlotDto;->b:Ljava/lang/String;

    const-string v7, ""

    move-object v6, v5

    invoke-direct/range {v3 .. v8}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/RepairTimeSlot;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v7, v1, Lcom/vuitton/android/data/dto/distantrepairs/StoreSlotInfoDto;->b:Ljava/lang/String;

    move-object v5, v2

    new-instance v2, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;

    move-object v3, v10

    move-object v6, v11

    move-object v4, v12

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/StoreSlots;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    return-object v0
.end method
