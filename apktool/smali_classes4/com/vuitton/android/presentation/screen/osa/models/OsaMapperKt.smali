.class public abstract Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt$WhenMappings;
    }
.end annotation

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
.method public static final a(Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;)Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt$WhenMappings;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;->IN_STORE:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;->DISTANT:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    return-object p0
.end method

.method public static final b(Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;)Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSAKt;->a(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v3, Lkotlin/Pair;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/osa/models/AutomationTagsOSAKt;->a(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lkotlin/Pair;->c:Ljava/lang/Object;

    move-object v4, p0

    check-cast v4, Ljava/lang/String;

    :cond_1
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final c(Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    sget-object v0, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v4, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    iget-object v0, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    iget-object v6, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    iget-object v7, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    if-eqz v7, :cond_2

    sget-object v8, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt$WhenMappings;->a:[I

    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    sget-object v7, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->IN_STORE:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :cond_1
    sget-object v7, Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;->DISTANT:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    sget-object v8, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v6, v8}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v10

    invoke-static {v6, v10}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v0

    invoke-static {v5, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    iget-object v5, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    if-eqz v5, :cond_3

    new-instance v11, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    iget-object v12, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->a:Ljava/lang/String;

    iget-object v13, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->b:Ljava/lang/String;

    iget-object v14, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->c:Ljava/lang/String;

    iget-object v15, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->d:Ljava/lang/String;

    iget-object v2, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->e:Ljava/lang/String;

    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->f:Ljava/lang/String;

    move-object/from16 v16, v2

    move-object/from16 v17, v5

    invoke-direct/range {v11 .. v17}, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    iget-object v2, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    if-eqz v2, :cond_4

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/osa/models/OsaMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;)Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    move-result-object v2

    move-object v12, v2

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    const/4 v12, 0x0

    :goto_2
    iget-object v13, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    iget-boolean v14, v1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    move-object v5, v7

    move-object v7, v8

    move-object v8, v6

    move-object v6, v9

    move-object v9, v0

    invoke-direct/range {v3 .. v14}, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->c:Lkotlin/Result$Companion;

    new-instance v3, Lkotlin/Result$Failure;

    invoke-direct {v3, v0}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    :goto_4
    invoke-static {v3}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v0, v0, Ljava/time/DateTimeException;

    if-eqz v0, :cond_5

    const-string v0, "InvalidDate"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/vuitton/foundation/logger/LegacyLogger;->a:Lcom/vuitton/foundation/logger/LegacyLogger;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v4}, Lcom/vuitton/foundation/logger/LegacyLogger;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v3
.end method
