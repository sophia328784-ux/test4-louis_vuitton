.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;",
        "calendarAvailabilitiesUiModel",
        "",
        "isDatesLoading",
        "isSlotsLoading",
        "Ljava/time/LocalDate;",
        "selectedDate",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;",
        "calendarAppointmentUiModel",
        "isPreBookLoading",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;ZZLjava/time/LocalDate;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;Z)V",
        "presentation"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

.field public final c:Z

.field public final d:Z

.field public final e:Ljava/time/LocalDate;

.field public final f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;ZZLjava/time/LocalDate;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 53
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    .line 54
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->c:Z

    .line 55
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->d:Z

    .line 56
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->e:Ljava/time/LocalDate;

    .line 57
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    .line 58
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;ZZLjava/time/LocalDate;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v0

    :cond_0
    and-int/lit8 p9, p8, 0x4

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_2

    move p4, v0

    :cond_2
    and-int/lit8 p9, p8, 0x10

    const/4 v1, 0x0

    if-eqz p9, :cond_3

    move-object p5, v1

    :cond_3
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_4

    new-instance p6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    const/4 p9, 0x3

    invoke-direct {p6, v1, v1, p9, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_4
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_5

    move p7, v0

    :cond_5
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;ZZLjava/time/LocalDate;Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->e:Ljava/time/LocalDate;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->e:Ljava/time/LocalDate;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->g:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->c:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->e:Ljava/time/LocalDate;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/time/LocalDate;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistantRepairCalendarViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calendarAvailabilitiesUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAvailabilitiesUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isDatesLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSlotsLoading="

    const-string v2, ", selectedDate="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->e:Ljava/time/LocalDate;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", calendarAppointmentUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/CalendarAppointmentUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPreBookLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairCalendarViewState;->g:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
