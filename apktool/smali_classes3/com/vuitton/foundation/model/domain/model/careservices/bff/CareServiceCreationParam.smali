.class public final Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0086\u0008\u0018\u00002\u00020\u0001BI\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0006\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;",
        "appointment",
        "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;",
        "phone",
        "",
        "email",
        "issueDescription",
        "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;",
        "contactMethod",
        "",
        "imageList",
        "postalCode",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;Ljava/util/List;Ljava/lang/String;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

.field public final b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;",
            "Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    iput-object p6, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    iput-object p7, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    invoke-static {v3, v2, v1}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    invoke-static {v3, v2, v1}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CareServiceCreationParam(appointment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->a:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceAppointment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->b:Lcom/vuitton/foundation/model/domain/model/account/PhoneNumber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", issueDescription="

    const-string v2, ", contactMethod="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->e:Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceContactMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", postalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/careservices/bff/CareServiceCreationParam;->g:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
