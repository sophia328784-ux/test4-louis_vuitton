.class public final Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;",
        "",
        "",
        "accountStatusEmailToCheck",
        "",
        "showEmailError",
        "isLoading",
        "isError",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "form",
        "isFormValid",
        "Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;",
        "bookingPolicy",
        "<init>",
        "(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V",
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

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final f:Z

.field public final g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 65
    const/16 v8, 0x7f

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;-><init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->b:Z

    .line 60
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    .line 61
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    .line 62
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 63
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    .line 64
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    const-string p1, ""

    :cond_0
    and-int/lit8 p9, p8, 0x2

    const/4 v0, 0x0

    if-eqz p9, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    sget-object p5, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object p5

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    move p6, v0

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    const/4 p7, 0x0

    :cond_6
    move p8, p6

    move-object p9, p7

    move p6, p4

    move-object p7, p5

    move p4, p2

    move p5, p3

    move-object p2, p0

    move-object p3, p1

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;-><init>(Ljava/lang/String;ZZZLcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZLcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", showEmailError="

    const-string v1, ", isLoading="

    const-string v2, "BookingPersonalInfoViewState(accountStatusEmailToCheck="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isError="

    const-string v2, ", form="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->e:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFormValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bookingPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/booking/personalinfo/models/BookingPersonalInfoViewState;->g:Lcom/vuitton/foundation/model/domain/model/booking/BookingExternalContent;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
