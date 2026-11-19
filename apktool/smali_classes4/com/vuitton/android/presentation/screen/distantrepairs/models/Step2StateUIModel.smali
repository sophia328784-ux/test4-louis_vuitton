.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001Be\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0018\u0008\u0002\u0010\u000c\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
        "profile",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;",
        "phoneNumber",
        "",
        "zipPostalCode",
        "zipPostalCodeValidityRegex",
        "Ljava/util/ArrayList;",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;",
        "Lkotlin/collections/ArrayList;",
        "countryList",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;",
        "phoneNumberError",
        "zipPostalCodeError",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

.field public final b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/ArrayList;

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 60
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

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/profile/Profile;",
            "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/vuitton/android/presentation/screen/distantrepairs/models/CountryUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;",
            "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    .line 54
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    .line 55
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    .line 58
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 59
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_5

    new-instance p6, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

    :cond_5
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_6

    new-instance p7, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p7}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

    :cond_6
    invoke-direct/range {p0 .. p7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;
    .locals 8

    and-int/lit8 v0, p6, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    :cond_0
    move-object v1, p1

    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    :cond_1
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    :cond_2
    move-object v3, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    iget-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    :cond_3
    move-object v4, p4

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    iget-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    :cond_4
    move-object v5, p5

    iget-object v6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    invoke-direct/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/foundation/model/domain/model/profile/Profile;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Step2StateUIModel(profile="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->a:Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zipPostalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zipPostalCodeValidityRegex="

    const-string v2, ", countryList="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->d:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumberError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zipPostalCodeError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
