.class public final Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;
.super Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u00012\u00020\u0002Bu\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0006\u0010\u000c\u001a\u00020\u0003\u0012\u0006\u0010\r\u001a\u00020\u0003\u0012\u0006\u0010\u000e\u001a\u00020\u0003\u0012\u0006\u0010\u000f\u001a\u00020\u0003\u0012\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0010\u0012\u0006\u0010\u0012\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "identifier",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "sku",
        "productName",
        "productImageUrl",
        "engravingIdentifier",
        "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;",
        "status",
        "ttNumber",
        "acquiredDateWithLongFormatStyle",
        "artist",
        "material",
        "",
        "slideshowImages",
        "videoUrl",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:Ljava/lang/String;

.field public final l:Ljava/util/List;

.field public final m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p14, p13, 0x1

    .line 53
    const-string v0, ""

    if-eqz p14, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p14, p13, 0x8

    if-eqz p14, :cond_1

    move-object p4, v0

    :cond_1
    and-int/lit8 p14, p13, 0x10

    if-eqz p14, :cond_2

    move-object p5, v0

    :cond_2
    and-int/lit8 p13, p13, 0x20

    if-eqz p13, :cond_3

    .line 54
    sget-object p6, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->UNLOCKED:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    :cond_3
    const/4 p13, 0x0

    .line 55
    invoke-direct/range {p0 .. p13}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lpq0;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p13, 0x0

    invoke-direct {p0, p13}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    sget-object v2, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", sku="

    const-string v1, ", productName="

    const-string v2, "CertificateCapucineUiModel(identifier="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productImageUrl="

    const-string v2, ", engravingIdentifier="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ttNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", acquiredDateWithLongFormatStyle="

    const-string v2, ", artist="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ", material="

    const-string v2, ", slideshowImages="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", videoUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->g:Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateStatusUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->l:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateCapucineUiModel;->m:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
