.class public final Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToProductPage"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;",
        "Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations;",
        "Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;",
        "skuIdUiModel",
        "",
        "isExclusiveSale",
        "",
        "rmsCode",
        "Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;",
        "catalogMode",
        "<init>",
        "(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Z

.field public final c:Ljava/lang/String;

.field public final d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v2, p2

    and-int/lit8 p2, p5, 0x4

    const/4 p6, 0x0

    if-eqz p2, :cond_1

    move-object v3, p6

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    move-object v4, p6

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;-><init>(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    .line 31
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    .line 32
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;

    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-eq p0, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 4

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    const-string v0, ", isExclusiveSale="

    const-string v1, ", rmsCode="

    const-string v2, "ToProductPage(skuIdUiModel="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->b:Z

    invoke-static {v2, v3, v0, v1, v4}, Ld21;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", catalogMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/aicompanion/AICompanionDestinations$ToProductPage;->d:Lcom/vuitton/android/presentation/screen/plp/models/CatalogMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
