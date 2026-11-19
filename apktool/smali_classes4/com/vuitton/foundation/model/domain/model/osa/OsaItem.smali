.class public final Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;",
        "",
        "",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;",
        "appointmentType",
        "Ljava/time/Instant;",
        "endDateTime",
        "startDateTime",
        "timeZone",
        "Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;",
        "storeInformation",
        "Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;",
        "reason",
        "availabilityId",
        "",
        "isVirtualStudioAppointment",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;Ljava/lang/String;Z)V",
        "domain"
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

.field public final b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

.field public final c:Ljava/time/Instant;

.field public final d:Ljava/time/Instant;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

.field public final g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

.field public final h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/time/Instant;Ljava/time/Instant;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    iget-boolean p1, p1, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    if-eq p0, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/time/Instant;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/time/Instant;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    if-nez v3, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OsaItem(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appointmentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->c:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->d:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", storeInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->f:Lcom/vuitton/foundation/model/domain/model/osa/StoreInformationItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->g:Lcom/vuitton/foundation/model/domain/model/osa/OsaReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", availabilityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtualStudioAppointment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/foundation/model/domain/model/osa/OsaItem;->i:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
