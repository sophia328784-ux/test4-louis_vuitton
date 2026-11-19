.class public final Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;",
        "",
        "",
        "addressCompleted",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;",
        "postalCode",
        "state",
        "city",
        "address1",
        "address2",
        "address3",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V",
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
.field public final a:Z

.field public final b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 79
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

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    .line 73
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 74
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 75
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 76
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 77
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    .line 78
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

    :cond_1
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_2

    new-instance p3, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p3}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

    :cond_2
    and-int/lit8 p9, p8, 0x8

    if-eqz p9, :cond_3

    new-instance p4, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p4}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

    :cond_3
    and-int/lit8 p9, p8, 0x10

    if-eqz p9, :cond_4

    new-instance p5, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-direct {p5}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;-><init>()V

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
    move-object p8, p6

    move-object p9, p7

    move-object p6, p4

    move-object p7, p5

    move-object p4, p2

    move-object p5, p3

    move-object p2, p0

    move p3, p1

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;-><init>(ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeRegisterRegistrationAddressUiModel(addressCompleted="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", postalCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->c:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", city="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->d:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->e:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->f:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", address3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterRegistrationAddressUiModel;->g:Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
