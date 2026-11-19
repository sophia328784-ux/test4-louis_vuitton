.class public final Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CatalogCategoryClickScreen"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;",
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;",
        "",
        "categoryName",
        "rmsCode",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
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


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, ", rmsCode="

    const-string v1, ")"

    const-string v2, "CatalogCategoryClickScreen(categoryName="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$CatalogCategoryClickScreen;->b:Ljava/lang/String;

    invoke-static {v2, v3, v0, p0, v1}, Ld21;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
