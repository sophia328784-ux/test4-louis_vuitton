.class public final Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;",
        "infoUiModel",
        "Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;",
        "formState",
        "",
        "initialIndividualNumber",
        "",
        "isLoading",
        "isCreated",
        "isCN",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZ)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

.field public final c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 64
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    .line 65
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    .line 66
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->d:Ljava/lang/String;

    .line 67
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->e:Z

    .line 68
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->f:Z

    .line 69
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->g:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoIndividualNumberUiModel;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1

    new-instance v1, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;-><init>()V

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    move-object v2, p4

    :goto_2
    and-int/lit8 v3, p8, 0x10

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    move v3, v4

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    move/from16 p9, v4

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v2

    move p7, v3

    move p8, v5

    goto :goto_6

    :cond_5
    move/from16 p9, p7

    goto :goto_5

    :goto_6
    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;Ljava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->f:Z

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->g:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->g:Z

    if-eq p0, p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->f:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->g:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AddCertificateUiModel(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", infoUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->b:Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateInfoUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->c:Lcom/vuitton/android/presentation/screen/certificates/components/CertificateFormState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialIndividualNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCreated="

    const-string v2, ", isCN="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->e:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->f:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/add/model/AddCertificateUiModel;->g:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
