.class public final Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;",
        "",
        "",
        "email",
        "Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;",
        "password",
        "",
        "credentialsCompleted",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 31
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    .line 30
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    new-instance p2, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-direct {p2}, Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;-><init>()V

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V

    return-void
.end method

.method public static a(Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;Ljava/lang/String;ZI)Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    invoke-direct {p0, p1, v0, p2}, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;Z)V

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeRegisterCredentialsUiModel(email="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", password="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->b:Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", credentialsCompleted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/register/models/NativeRegisterCredentialsUiModel;->c:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
