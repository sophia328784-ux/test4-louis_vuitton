.class public final Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;",
        "socialRegisterUiModel",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "socialRegisterForm",
        "socialRegisterConsentForm",
        "",
        "isLoading",
        "isCompleteFormValid",
        "Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;",
        "featureFlags",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 135
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    .line 130
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 131
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 132
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->d:Z

    .line 133
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    .line 134
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    const/16 v17, 0x7fff

    const/16 v18, 0x0

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

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v1 .. v18}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthOrigin;Lcom/vuitton/android/presentation/screen/authentication/models/TrackingAuthEntryPoint;Lcom/vuitton/foundation/model/domain/model/authentication/social/SocialAuthMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    :goto_1
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object/from16 v2, p3

    :goto_2
    and-int/lit8 v3, p7, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move/from16 v3, p4

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->i()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    move v5, v4

    goto :goto_4

    :cond_5
    move/from16 v5, p5

    :goto_4
    and-int/lit8 v6, p7, 0x20

    if-eqz v6, :cond_6

    new-instance v6, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-direct {v6, v4, v4, v7, v8}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;-><init>(ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p7, v6

    :goto_5
    move-object/from16 p1, p0

    move-object/from16 p3, v0

    move-object/from16 p2, v1

    move-object/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v5

    goto :goto_6

    :cond_6
    move-object/from16 p7, p6

    goto :goto_5

    :goto_6
    invoke-direct/range {p1 .. p7}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;-><init>(Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZZLcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SocialRegisterViewState(socialRegisterUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->a:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socialRegisterForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", socialRegisterConsentForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->c:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCompleteFormValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterViewState;->f:Lcom/vuitton/android/presentation/screen/authentication/social/models/SocialRegisterFeatureFlags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
