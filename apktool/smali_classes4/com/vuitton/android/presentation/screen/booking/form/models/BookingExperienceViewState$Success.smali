.class public final Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState;",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;",
        "experience",
        "",
        "isFlowCompleted",
        "Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;",
        "prebookId",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingId;",
        "bookingId",
        "",
        "editingModuleId",
        "Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;",
        "editingCategory",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x8

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move-object p4, v0

    :cond_0
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_1

    move-object p5, v0

    :cond_1
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move-object p6, v0

    :cond_2
    const/4 p7, 0x0

    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    .line 24
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    .line 25
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;I)Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;
    .locals 8

    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p5, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    :cond_1
    move v2, p2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    and-int/lit8 p1, p5, 0x10

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    :cond_2
    move-object v5, p3

    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_3

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    :cond_3
    move-object v6, p4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;-><init>(Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    if-nez v3, :cond_9

    if-nez v1, :cond_8

    move v1, v0

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v2

    goto :goto_3

    :cond_9
    if-nez v1, :cond_a

    goto :goto_2

    :cond_a
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_3
    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "null"

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/foundation/model/domain/model/booking/PreBookId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/PreBookId$Companion;

    :goto_0
    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->d:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/vuitton/foundation/model/domain/model/booking/BookingId;->Companion:Lcom/vuitton/foundation/model/domain/model/booking/BookingId$Companion;

    move-object v0, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Success(experience="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->a:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormUiModel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isFlowCompleted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", prebookId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", bookingId="

    const-string v4, ", editingModuleId="

    invoke-static {v2, v1, v3, v0, v4}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", editingCategory="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/form/models/BookingExperienceViewState$Success;->f:Lcom/vuitton/android/presentation/screen/booking/form/models/BookingFormModuleDataUiModel$MultipleTextCategory;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
