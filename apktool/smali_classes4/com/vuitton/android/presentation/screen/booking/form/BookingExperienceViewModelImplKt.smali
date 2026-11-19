.class public abstract Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;
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
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImpl;

    sget-object v1, Lkotlin/jvm/internal/Reflection;->a:Lkotlin/jvm/internal/ReflectionFactory;

    invoke-virtual {v1, v0}, Lkotlin/jvm/internal/ReflectionFactory;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->B()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->a:Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 8

    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    invoke-static {v2}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingMapperKt;->b(Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    const/16 v7, 0xfdf

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->b(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/booking/form/BookingExperienceViewModelImplKt;->c(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 12

    check-cast p0, Ljava/lang/Iterable;

    instance-of v0, p0, Ljava/util/Collection;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-boolean v3, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->l:Z

    if-eqz v3, :cond_2

    move v0, v1

    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v4, v1

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    if-eqz v4, :cond_3

    if-nez v0, :cond_3

    move v8, v1

    goto :goto_2

    :cond_3
    move v8, v2

    :goto_2
    iget-boolean v5, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->g:Z

    if-nez v5, :cond_4

    iget-object v5, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;->isCompleted()Z

    move-result v5

    if-nez v5, :cond_4

    move v4, v2

    :cond_4
    const/4 v10, 0x0

    const/16 v11, 0xf7f

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v3
.end method

.method public static final c(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 11

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    instance-of v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Calendar;->b:Ljava/time/LocalDateTime;

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    if-eqz v1, :cond_0

    move-object v4, v1

    goto :goto_2

    :cond_3
    move-object v4, v2

    :goto_2
    if-nez v4, :cond_4

    return-object p0

    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->k:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;

    instance-of v5, v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    if-eqz v5, :cond_5

    check-cast v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    move-object v10, v3

    goto :goto_4

    :cond_5
    move-object v10, v2

    :goto_4
    if-nez v10, :cond_6

    goto :goto_6

    :cond_6
    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->a:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    iget-object v6, v6, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    invoke-virtual {v6}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_5

    :cond_8
    move-object v5, v2

    :goto_5
    check-cast v5, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    if-nez v5, :cond_9

    new-instance v3, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v6, v5

    invoke-direct/range {v3 .. v9}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v3

    :cond_9
    const/4 v3, 0x5

    invoke-static {v10, v5, v2, v3}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;->b(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$Slot;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xbff

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-static/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;->a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;ZZLcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;ZI)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleUiModel;

    move-result-object v1

    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    return-object v0
.end method
