.class public final Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;",
        "loginContext",
        "Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;",
        "loginAsset",
        "",
        "displayFallbackLoginImage",
        "displayGuestCta",
        "displayConnectedObjectCta",
        "displaySettingsCta",
        "displayAccessibilityCta",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

.field public final b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 89
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

    invoke-direct/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    .line 83
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    .line 84
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->c:Z

    .line 85
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->d:Z

    .line 86
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->e:Z

    .line 87
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    .line 88
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;->DEFAULT:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    :cond_0
    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    const/16 v9, 0x7b

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "https://player.louisvuitton.com/media/img/poster/video/1080x1920/1485/1485502.jpg?1698249852"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/time/Instant;Lcom/vuitton/foundation/model/domain/model/common/LiveVideoStatus;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p2, v1

    :cond_1
    and-int/lit8 v0, p8, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move p3, v1

    :cond_2
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, p4

    :goto_0
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_4

    move v2, v1

    goto :goto_1

    :cond_4
    move/from16 v2, p5

    :goto_1
    and-int/lit8 v3, p8, 0x20

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move/from16 v3, p6

    :goto_2
    and-int/lit8 v4, p8, 0x40

    if-eqz v4, :cond_6

    move/from16 p9, v1

    :goto_3
    move-object p4, p2

    move/from16 p5, p3

    move/from16 p6, v0

    move/from16 p7, v2

    move/from16 p8, v3

    move-object p2, p0

    move-object p3, p1

    goto :goto_4

    :cond_6
    move/from16 p9, p7

    goto :goto_3

    :goto_4
    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;ZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->c:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WelcomeViewState(loginContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/welcome/model/LoginContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", loginAsset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->b:Lcom/vuitton/android/presentation/model/common/AssetVideoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayFallbackLoginImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayGuestCta="

    const-string v2, ", displayConnectedObjectCta="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", displaySettingsCta="

    const-string v2, ", displayAccessibilityCta="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/welcome/model/WelcomeViewState;->g:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
