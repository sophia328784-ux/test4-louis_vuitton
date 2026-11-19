.class public final Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;",
        "",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;",
        "nfcScanState",
        "",
        "isScanInProgress",
        "<init>",
        "(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Z)V",
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
.field public final a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 54
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Z)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    .line 52
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    .line 53
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->c:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

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

    invoke-direct/range {v1 .. v15}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p2

    :goto_1
    and-int/lit8 v2, p4, 0x4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v3, p0

    goto :goto_3

    :cond_2
    move/from16 v2, p3

    goto :goto_2

    :goto_3
    invoke-direct {v3, v1, v0, v2}, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;-><init>(Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->c:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->c:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->c:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CertificateNfcScanViewState(contactUsUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->a:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nfcScanState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->b:Lcom/vuitton/android/presentation/screen/certificates/nfc/model/NfcScanState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isScanInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/nfc/model/CertificateNfcScanViewState;->c:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
