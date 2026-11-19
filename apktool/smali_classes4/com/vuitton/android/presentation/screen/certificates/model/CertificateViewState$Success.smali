.class public final Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;
.super Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Success"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;",
        "certificateList",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;",
        "featureFlags",
        "",
        "username",
        "",
        "isDiamondCertificateLoading",
        "<init>",
        "(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;Z)V",
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
.field public final a:Ljava/util/List;

.field public final b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

.field public final c:Ljava/lang/String;

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 19
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;-><init>(Ljava/util/List;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->d:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->d:Z

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->d:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Success(certificateList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->b:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDiamondCertificateLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateViewState$Success;->d:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
