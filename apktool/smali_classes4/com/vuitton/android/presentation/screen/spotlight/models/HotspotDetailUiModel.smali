.class public final Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B)\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;",
        "",
        "",
        "title",
        "description",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "image",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;",
        "cta",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V",
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
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", description="

    const-string v1, ", image="

    const-string v2, "HotspotDetailUiModel(title="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotDetailUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightCtaUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
