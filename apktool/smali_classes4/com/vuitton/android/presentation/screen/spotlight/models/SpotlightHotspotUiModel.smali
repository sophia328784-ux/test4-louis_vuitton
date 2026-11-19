.class public final Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;",
        "",
        "",
        "identifier",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;",
        "position",
        "Lcom/vuitton/android/presentation/model/common/AssetUiModel;",
        "asset",
        "Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;",
        "content",
        "<init>",
        "(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

.field public final c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

.field public final d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;Lcom/vuitton/android/presentation/model/common/AssetUiModel;Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/model/common/AssetUiModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpotlightHotspotUiModel(identifier="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->b:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotPositionUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", asset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->c:Lcom/vuitton/android/presentation/model/common/AssetUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/spotlight/models/SpotlightHotspotUiModel;->d:Lcom/vuitton/android/presentation/screen/spotlight/models/HotspotContentUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
