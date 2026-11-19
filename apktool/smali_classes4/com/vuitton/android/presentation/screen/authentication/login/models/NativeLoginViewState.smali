.class public final Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;",
        "nativeLoginUiModel",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "loginForm",
        "",
        "isLoading",
        "loggedWithCredentialManager",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 48
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    .line 45
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 46
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->c:Z

    .line 47
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    new-instance v0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;-><init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/common/validation/PasswordUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    sget-object p2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object p2

    :cond_1
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NativeLoginViewState(nativeLoginUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loginForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", loggedWithCredentialManager="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->c:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/login/models/NativeLoginViewState;->d:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
