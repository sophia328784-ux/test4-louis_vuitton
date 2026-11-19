.class public abstract Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt$WhenMappings;
    }
.end annotation

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


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "F92"

    const-string v1, "L48"

    const-string v2, "UE4"

    const-string v3, "J91"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;)Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;
    .locals 15

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->b:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    sget-object v3, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt$WhenMappings;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;->DISTANT:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    goto :goto_0

    :cond_0
    invoke-static {}, Lv40;->g()V

    return-object v2

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;->IN_STORE:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    :goto_0
    move-object v3, v2

    move-object v2, v0

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    iget-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget-object v4, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v4, Lkotlin/Result$Failure;

    invoke-direct {v4, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_2
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-eqz v4, :cond_3

    move-object v0, v3

    :cond_3
    move-object v4, v0

    check-cast v4, Ljava/time/Instant;

    :try_start_1
    iget-object v0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/Instant;->parse(Ljava/lang/CharSequence;)Ljava/time/Instant;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    sget-object v5, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v5, Lkotlin/Result$Failure;

    invoke-direct {v5, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v5

    :goto_3
    instance-of v5, v0, Lkotlin/Result$Failure;

    if-eqz v5, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Ljava/time/Instant;

    iget-object v5, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->e:Ljava/lang/String;

    const-string v6, ""

    if-nez v5, :cond_5

    move-object v5, v6

    :cond_5
    iget-object v7, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    if-eqz v7, :cond_b

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    iget-object v9, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->a:Ljava/lang/String;

    iget-object v10, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->b:Ljava/lang/String;

    if-nez v10, :cond_6

    move-object v10, v6

    :cond_6
    iget-object v11, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->d:Ljava/lang/String;

    if-nez v11, :cond_7

    move-object v11, v6

    :cond_7
    iget-object v12, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->e:Ljava/lang/String;

    if-nez v12, :cond_8

    move-object v12, v6

    :cond_8
    iget-object v13, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->f:Ljava/lang/String;

    if-nez v13, :cond_9

    move-object v13, v6

    :cond_9
    iget-object v7, v7, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->c:Ljava/lang/String;

    if-nez v7, :cond_a

    move-object v14, v6

    goto :goto_4

    :cond_a
    move-object v14, v7

    :goto_4
    invoke-direct/range {v8 .. v14}, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_5

    :cond_b
    move-object v6, v3

    :goto_5
    iget-object v7, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->g:Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;

    if-eqz v7, :cond_c

    new-instance v3, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    iget-object v8, v7, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;->a:Ljava/lang/String;

    iget-object v7, v7, Lcom/vuitton/android/data/dto/osa/twist/OsaReasonDto;->b:Ljava/lang/String;

    invoke-direct {v3, v8, v7}, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object v7, v3

    iget-object v8, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->h:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->i:Ljava/lang/Boolean;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_6
    move v9, p0

    move-object v3, v4

    move-object v4, v0

    goto :goto_7

    :cond_d
    const/4 p0, 0x0

    goto :goto_6

    :goto_7
    new-instance v0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static final c(Ljava/util/List;)Ljava/util/List;
    .locals 4

    if-eqz p0, :cond_4

    check-cast p0, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    sget-object v3, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    iget-object v2, v2, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;->f:Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;

    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/vuitton/android/data/dto/osa/twist/AppointmentStoreDto;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->u(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;

    invoke-static {v1}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->b(Lcom/vuitton/android/data/dto/osa/twist/AppointmentItemDto;)Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-object p0

    :cond_4
    sget-object p0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    return-object p0
.end method

.method public static final d(Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;)Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->DISTANT:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;->IN_STORE:Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    return-object p0
.end method

.method public static final e(Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;)Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;

    move-object v2, v1

    iget-object v1, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    move-object v3, v2

    iget-object v2, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-static {v4}, Lcom/vuitton/android/data/dto/osa/mapper/AppointmentsMapperKt;->d(Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;)Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;

    move-result-object v4

    move-object v5, v3

    move-object v3, v4

    iget-object v4, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    move-object v6, v5

    iget-object v5, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    move-object v7, v6

    iget-object v6, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    move-object v8, v7

    iget-object v7, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    move-object v9, v8

    iget-object v8, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    invoke-static {v10}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    invoke-static {v11}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/text/StringsKt;->E(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v11, v9

    move-object v9, v10

    iget-object v10, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    move-object v12, v11

    iget-object v11, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    move-object v13, v12

    iget-object v12, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    move-object v14, v13

    iget-boolean v13, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    iget-object v15, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    invoke-static {v15}, Lcom/vuitton/foundation/model/domain/extensions/StringKtExtKt;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v0, v0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v17, v15

    move-object v15, v0

    move-object v0, v14

    move-object/from16 v14, v17

    invoke-direct/range {v0 .. v16}, Lcom/vuitton/android/data/dto/distantrepairs/ConfirmAppointmentDtoRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/data/dto/distantrepairs/AppointmentTypeDto;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
