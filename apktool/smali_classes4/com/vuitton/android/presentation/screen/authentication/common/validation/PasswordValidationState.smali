.class public final Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;",
        "",
        "",
        "isConfirmPasswordError",
        "passwordHasValidLength",
        "passwordHasOneNumber",
        "passwordHasOneCapitalLetter",
        "passwordHasOneSpecialCharacter",
        "passwordHasLowerCaseLetter",
        "<init>",
        "(ZZZZZZ)V",
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

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 42
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;-><init>(ZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    .line 37
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    .line 38
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    .line 39
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    .line 40
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    .line 41
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p8, p7, 0x1

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p8, p7, 0x8

    if-eqz p8, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p8, p7, 0x10

    if-eqz p8, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_5

    move p6, v0

    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;-><init>(ZZZZZZ)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;ZZZZZZI)Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    :cond_0
    move v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    :cond_1
    move v2, p2

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    :cond_2
    move v3, p3

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    :cond_3
    move v4, p4

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-boolean p5, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    :cond_4
    move v5, p5

    and-int/lit8 p1, p7, 0x20

    if-eqz p1, :cond_5

    iget-boolean p6, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    :cond_5
    move v6, p6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;-><init>(ZZZZZZ)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", passwordHasValidLength="

    const-string v1, ", passwordHasOneNumber="

    const-string v2, "PasswordValidationState(isConfirmPasswordError="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passwordHasOneCapitalLetter="

    const-string v2, ", passwordHasOneSpecialCharacter="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", passwordHasLowerCaseLetter="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->e:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordValidationState;->f:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
