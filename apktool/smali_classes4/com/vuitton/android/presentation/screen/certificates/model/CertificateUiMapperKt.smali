.class public abstract Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;)Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;
    .locals 1

    sget-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiMapperKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->PENDING:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    return-object p0

    :cond_0
    invoke-static {}, Lv40;->g()V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->UNLOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    return-object p0

    :cond_2
    sget-object p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->LOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    return-object p0
.end method
