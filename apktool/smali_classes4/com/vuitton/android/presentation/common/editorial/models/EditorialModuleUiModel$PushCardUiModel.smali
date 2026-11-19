.class public final Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;
.super Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushCardUiModel"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;",
        "Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;",
        "",
        "id",
        "title",
        "description",
        "Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;",
        "link",
        "Lcom/vuitton/android/presentation/model/common/IconUiModel;",
        "icon",
        "Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;",
        "image",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/IconUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V",
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

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

.field public final e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

.field public final f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;Lcom/vuitton/android/presentation/model/common/IconUiModel;Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iput-object p5, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    iput-object p6, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    return-object p0
.end method

.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Lcom/vuitton/android/presentation/model/common/IconUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    return-object p0
.end method

.method public final d()Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    return-object p0
.end method

.method public final e()Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", title="

    const-string v1, ", description="

    const-string v2, "PushCardUiModel(id="

    iget-object v3, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, v4, v1}, Lfc;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->d:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->e:Lcom/vuitton/android/presentation/model/common/IconUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", image="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleUiModel$PushCardUiModel;->f:Lcom/vuitton/android/presentation/model/common/AssetImageUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
