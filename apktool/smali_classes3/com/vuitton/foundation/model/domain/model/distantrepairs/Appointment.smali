.class public final Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0093\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;",
        "",
        "",
        "appointmentId",
        "Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;",
        "appointmentType",
        "availabilityId",
        "email",
        "firstName",
        "lastName",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;",
        "dispatchRegionCode",
        "phoneNumber",
        "phoneNumberPrefix",
        "phoneNumberCountry",
        "phoneNumberType",
        "salutation",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;",
        "careServiceId",
        "civilityCode",
        "",
        "subscribedInNewsletter",
        "reasonId",
        "selectionId",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/String;

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:Ljava/lang/String;

.field public final q:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    const/high16 v0, 0x10000

    and-int v0, p18, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move-object/from16 v18, v0

    goto :goto_0

    :cond_0
    move-object/from16 v18, p17

    :goto_0
    const/16 v19, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    move-object/from16 v17, p16

    .line 73
    invoke-direct/range {v1 .. v19}, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;-><init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    move-object/from16 v0, p11

    move-object/from16 v1, p12

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p16

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p6 .. p10}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, v2, v3, v4}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    iput-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    move/from16 p1, p15

    iput-boolean p1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    iput-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode$Companion;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    return v2

    :cond_12
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode$Companion;

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

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
    .locals 6

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/DispatchRegionCode;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId;->Companion:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceId$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Appointment(appointmentId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", appointmentType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->b:Lcom/vuitton/foundation/model/domain/model/osa/AppointmentType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", availabilityId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", email="

    const-string v3, ", firstName="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->d:Ljava/lang/String;

    invoke-static {v1, v4, v2, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", lastName="

    const-string v3, ", dispatchRegionCode="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->f:Ljava/lang/String;

    invoke-static {v1, v4, v2, v5, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ", phoneNumber="

    const-string v3, ", phoneNumberPrefix="

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->h:Ljava/lang/String;

    invoke-static {v1, v0, v2, v4, v3}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", phoneNumberCountry="

    const-string v2, ", phoneNumberType="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->j:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", salutation="

    const-string v2, ", careServiceId="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->l:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", civilityCode="

    const-string v2, ", subscribedInNewsletter="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->m:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->n:Ljava/lang/String;

    invoke-static {v1, v3, v0, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", reasonId="

    const-string v2, ", selectionId="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->p:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->o:Z

    invoke-static {v0, v3, v2, v1, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v0, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/distantrepairs/Appointment;->q:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
