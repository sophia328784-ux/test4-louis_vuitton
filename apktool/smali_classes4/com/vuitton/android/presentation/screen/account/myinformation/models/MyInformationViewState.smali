.class public final Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001BK\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;",
        "",
        "",
        "notificationEnabled",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;",
        "localeFlags",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;",
        "featureFlags",
        "Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;",
        "myInfo",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "myInfoEditForm",
        "shouldShowMarketingDisclaimer",
        "<init>",
        "(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V",
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

.field public final c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

.field public final d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

.field public final e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

.field public final f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

.field public final g:Z


# direct methods
.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->a:Z

    .line 81
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    .line 82
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    .line 83
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    .line 84
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    .line 85
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    .line 86
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p8, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    new-instance v5, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object v5, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    new-instance v6, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v6, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->j:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->k:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    move-object v7, p1

    goto :goto_4

    :cond_4
    move-object/from16 v7, p5

    :goto_4
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_5

    move v9, v1

    :goto_5
    move-object v2, p0

    move-object/from16 v8, p6

    goto :goto_6

    :cond_5
    move/from16 v9, p7

    goto :goto_5

    :goto_6
    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-static {v2, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isLoading="

    const-string v1, ", localeFlags="

    const-string v2, "MyInformationViewState(notificationEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->c:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoLocaleFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->d:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->e:Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInfoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", myInfoEditForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->f:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldShowMarketingDisclaimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/account/myinformation/models/MyInformationViewState;->g:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
