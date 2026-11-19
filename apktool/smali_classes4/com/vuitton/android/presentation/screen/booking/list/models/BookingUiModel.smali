.class public final Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0085\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0008\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0008\u0012\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u000f\u00a2\u0006\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;",
        "id",
        "Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;",
        "experienceId",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;",
        "type",
        "",
        "title",
        "surtitle",
        "subtitle",
        "landscapeImageUrl",
        "imageUrl",
        "address",
        "",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingInfoUiModel;",
        "information",
        "disclaimer",
        "cancellationDisclaimer",
        "Lcom/vuitton/android/presentation/screen/booking/list/models/BookingActionUiModel;",
        "actions",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/util/List;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->i:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->k:Ljava/lang/String;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->l:Ljava/lang/String;

    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;

    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    sget-object v1, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    if-eq v0, v1, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->f:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->g:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->h:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->l:Ljava/lang/String;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_e
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->f:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->g:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->h:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->i:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->k:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->l:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/ExperienceId$Companion;

    const-string v0, ", experienceId="

    const-string v1, ", type="

    const-string v2, "BookingUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->c:Lcom/vuitton/android/presentation/screen/booking/list/models/BookingTypeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", surtitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subtitle="

    const-string v2, ", landscapeImageUrl="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", imageUrl="

    const-string v2, ", address="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->h:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", information="

    const-string v2, ", disclaimer="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->j:Ljava/util/List;

    invoke-static {v3, v1, v2, v0, v4}, Ld21;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/util/List;)V

    const-string v1, ", cancellationDisclaimer="

    const-string v2, ", actions="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/list/models/BookingUiModel;->m:Ljava/util/List;

    invoke-static {v0, p0, v1}, La;->o(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
