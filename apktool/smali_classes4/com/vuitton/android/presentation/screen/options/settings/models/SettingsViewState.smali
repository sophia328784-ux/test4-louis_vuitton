.class public final Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0089\u0001\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;",
        "",
        "",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;",
        "userConsents",
        "tmpConsents",
        "shouldDisplayGcm",
        "isEligibleToGcm",
        "isConsentBySmsEnabled",
        "isPowerfrontEnabled",
        "isEuropeanLocale",
        "isCnLocale",
        "isCcpaLocale",
        "isCanadaFrenchLocale",
        "isUserHasSavedPhoneNumber",
        "isEmailTrackingConsentEnabled",
        "<init>",
        "(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZ)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:Z


# direct methods
.method public constructor <init>()V
    .locals 16

    .line 157
    const/16 v14, 0x1fff

    const/4 v15, 0x0

    const/4 v1, 0x0

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

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v15}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;-><init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZ)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->a:Z

    .line 145
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    .line 146
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    .line 147
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->d:Z

    .line 148
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->e:Z

    .line 149
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->f:Z

    .line 150
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->g:Z

    .line 151
    iput-boolean p8, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->h:Z

    .line 152
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->i:Z

    .line 153
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->j:Z

    .line 154
    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->k:Z

    .line 155
    iput-boolean p12, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    .line 156
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 13

    move/from16 v0, p14

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-direct {v1, v4, v4, v3, v4}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_1
    move-object v1, p2

    :goto_0
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    new-instance v5, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-direct {v5, v4, v4, v3, v4}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;-><init>(Lcom/vuitton/android/presentation/screen/mylv/models/KisaUserConsentsUiModel;Landroidx/compose/runtime/MutableState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_2
    move-object/from16 v5, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    move/from16 v3, p4

    :goto_2
    and-int/lit8 v4, v0, 0x10

    if-eqz v4, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move/from16 v4, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    move v7, v2

    goto :goto_5

    :cond_6
    move/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_7

    move v8, v2

    goto :goto_6

    :cond_7
    move/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_8

    move v9, v2

    goto :goto_7

    :cond_8
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    move v10, v2

    goto :goto_8

    :cond_9
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_a

    move v11, v2

    goto :goto_9

    :cond_a
    move/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_b

    move v12, v2

    goto :goto_a

    :cond_b
    move/from16 v12, p12

    :goto_a
    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_c

    move/from16 p14, v2

    :goto_b
    move p2, p1

    move-object/from16 p3, v1

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p4, v5

    move/from16 p7, v6

    move/from16 p8, v7

    move/from16 p9, v8

    move/from16 p10, v9

    move/from16 p11, v10

    move/from16 p12, v11

    move/from16 p13, v12

    move-object p1, p0

    goto :goto_c

    :cond_c
    move/from16 p14, p13

    goto :goto_b

    :goto_c
    invoke-direct/range {p1 .. p14}, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;-><init>(ZLcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;ZZZZZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->h:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->h:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->k:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    if-eq p0, p1, :cond_e

    return v2

    :cond_e
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->h:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->k:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SettingsViewState(isLoading="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userConsents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->b:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tmpConsents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->c:Lcom/vuitton/android/presentation/screen/mylv/models/UserConsentsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldDisplayGcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isEligibleToGcm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isConsentBySmsEnabled="

    const-string v2, ", isPowerfrontEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isEuropeanLocale="

    const-string v2, ", isCnLocale="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->g:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->h:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isCcpaLocale="

    const-string v2, ", isCanadaFrenchLocale="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", isUserHasSavedPhoneNumber="

    const-string v2, ", isEmailTrackingConsentEnabled="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->k:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->l:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/options/settings/models/SettingsViewState;->m:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
