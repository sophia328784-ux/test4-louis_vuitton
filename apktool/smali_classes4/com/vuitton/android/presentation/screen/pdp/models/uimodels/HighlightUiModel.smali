.class public final Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;",
        "Landroid/os/Parcelable;",
        "",
        "id",
        "title",
        "description",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "image",
        "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;",
        "link",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V",
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
            "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

.field public final f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel$Creator;

    invoke-direct {v0}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel$Creator;-><init>()V

    sput-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 26
    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", description="

    const-string v2, "HighlightUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->e:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, p1, p2}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/HighlightUiModel;->f:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
