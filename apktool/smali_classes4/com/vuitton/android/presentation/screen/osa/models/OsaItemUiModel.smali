.class public final Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\u0006\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;",
        "",
        "",
        "id",
        "Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;",
        "appointmentType",
        "Ljava/time/LocalDateTime;",
        "gmtEndDateTime",
        "gmtStartDateTime",
        "localStoreEndDateTime",
        "localStoreStartDateTime",
        "timeZone",
        "Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;",
        "storeInformation",
        "Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;",
        "reason",
        "availabilityId",
        "",
        "isVirtualStudioAppointment",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Ljava/lang/String;Z)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

.field public final c:Ljava/time/LocalDateTime;

.field public final d:Ljava/time/LocalDateTime;

.field public final e:Ljava/time/LocalDateTime;

.field public final f:Ljava/time/LocalDateTime;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

.field public final i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

.field public final j:Ljava/lang/String;

.field public final k:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->c:Ljava/time/LocalDateTime;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->e:Ljava/time/LocalDateTime;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->c:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->c:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->e:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->e:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->c:Ljava/time/LocalDateTime;

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->e:Ljava/time/LocalDateTime;

    invoke-virtual {v3}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    invoke-virtual {v0}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsaItemUiModel(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->b:Lcom/vuitton/android/presentation/screen/osa/models/AppointmentTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gmtEndDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->c:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gmtStartDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->d:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localStoreEndDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->e:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", localStoreStartDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->f:Ljava/time/LocalDateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->h:Lcom/vuitton/android/presentation/screen/osa/models/StoreInformationItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->i:Lcom/vuitton/android/presentation/screen/osa/reasons/models/OsaReasonUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availabilityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualStudioAppointment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/osa/models/OsaItemUiModel;->k:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
