.class public final Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001BE\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;",
        "",
        "",
        "isLoading",
        "isAddToCartLoading",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;",
        "shadeFinderScanState",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;",
        "shadeFinderResponse",
        "isNavigationSimplified",
        "Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;",
        "featureFlags",
        "<init>",
        "(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;)V",
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
.field public final a:Z

.field public final b:Z

.field public final c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

.field public final d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 85
    const/16 v7, 0x3f

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->a:Z

    .line 80
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    .line 81
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    .line 82
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    .line 83
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->e:Z

    .line 84
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    return-void
.end method

.method public synthetic constructor <init>(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    new-instance v2, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p4

    :goto_1
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v1, p5

    :goto_2
    and-int/lit8 v3, p7, 0x20

    if-eqz v3, :cond_5

    new-instance v4, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p7, v4

    :goto_3
    move p3, p2

    move-object/from16 p5, v0

    move/from16 p6, v1

    move-object/from16 p4, v2

    move p2, p1

    move-object p1, p0

    goto :goto_4

    :cond_5
    move-object/from16 p7, p6

    goto :goto_3

    :goto_4
    invoke-direct/range {p1 .. p7}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;-><init>(ZZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;ZLcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->a:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->e:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", isAddToCartLoading="

    const-string v1, ", shadeFinderScanState="

    const-string v2, "ShadeFinderViewState(isLoading="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->a:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->b:Z

    invoke-static {v2, v0, v1, v3, v4}, Lcj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderScanState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shadeFinderResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->d:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderResponseUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNavigationSimplified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ShadeFinderViewState;->f:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/BeautyFeatureFlags;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
