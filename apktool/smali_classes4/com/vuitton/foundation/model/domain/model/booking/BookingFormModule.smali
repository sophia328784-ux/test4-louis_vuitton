.class public final Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Be\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000c\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;",
        "",
        "",
        "id",
        "title",
        "subtitle",
        "description",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;",
        "disclaimer",
        "",
        "isOptional",
        "updateFormAfterEditing",
        "",
        "disruptedStepsAfterEditing",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;",
        "data",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

.field public final f:Z

.field public final g:Z

.field public final h:Ljava/util/List;

.field public final i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    iput-boolean p6, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    iput-boolean p7, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    iput-object p8, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    iput-object p9, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p11, p10, 0x4

    const/4 v0, 0x0

    if-eqz p11, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_3

    const/4 p7, 0x0

    :cond_3
    and-int/lit16 p10, p10, 0x80

    if-eqz p10, :cond_4

    .line 34
    sget-object p8, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    .line 35
    :cond_4
    invoke-direct/range {p0 .. p9}, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;ZZLjava/util/List;Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    iget-object p1, p1, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", subtitle="

    const-string v2, "BookingFormModule(id="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    const-string v2, ", disclaimer="

    iget-object v3, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->e:Lcom/vuitton/foundation/model/domain/model/booking/BookingDisclaimer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isOptional="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", updateFormAfterEditing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", disruptedStepsAfterEditing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->h:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModule;->i:Lcom/vuitton/foundation/model/domain/model/booking/BookingFormModuleData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
