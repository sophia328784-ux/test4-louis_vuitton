.class public final Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;",
        "socialLoginUiModel",
        "",
        "isGoogleSignInEnabled",
        "isSocialSignInDebugModeEnabled",
        "isLineSignInEnabled",
        "isKakaoSignInEnabled",
        "isLoading",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZ)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 93
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    .line 88
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    .line 89
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->c:Z

    .line 90
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    .line 91
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    .line 92
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    const/16 v14, 0xfff

    const/4 v15, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move/from16 v0, p2

    :goto_1
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_3

    :cond_3
    move/from16 v4, p4

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    move v5, v2

    goto :goto_4

    :cond_4
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, p7, 0x20

    if-eqz v6, :cond_5

    move/from16 p7, v2

    :goto_5
    move-object/from16 p1, p0

    move/from16 p3, v0

    move-object/from16 p2, v1

    move/from16 p4, v3

    move/from16 p5, v4

    move/from16 p6, v5

    goto :goto_6

    :cond_5
    move/from16 p7, p6

    goto :goto_5

    :goto_6
    invoke-direct/range {p1 .. p7}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;ZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    if-eq p0, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocialLoginViewState(socialLoginUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isGoogleSignInEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSocialSignInDebugModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLineSignInEnabled="

    const-string v2, ", isKakaoSignInEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isLoading="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->e:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialLoginViewState;->f:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
