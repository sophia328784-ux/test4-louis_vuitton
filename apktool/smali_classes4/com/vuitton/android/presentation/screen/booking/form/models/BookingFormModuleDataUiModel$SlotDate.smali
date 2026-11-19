.class public final Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlotDate"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;",
        "",
        "Ljava/time/LocalDateTime;",
        "date",
        "",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;",
        "morningSlots",
        "afternoonSlots",
        "",
        "selectedSlotId",
        "<init>",
        "(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V",
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
.field public final a:Ljava/time/LocalDateTime;

.field public final b:Ljava/util/List;

.field public final c:Ljava/util/List;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$TimeSlot;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;-><init>(Ljava/time/LocalDateTime;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->d:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotDate(date="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->a:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", morningSlots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", afternoonSlots="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedSlotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$SlotDate;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
