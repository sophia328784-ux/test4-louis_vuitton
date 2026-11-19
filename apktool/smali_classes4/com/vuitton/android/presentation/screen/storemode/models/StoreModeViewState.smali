.class public final Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001By\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;",
        "storeModeUiModel",
        "",
        "isError",
        "isFirstLoading",
        "isLoading",
        "displayExitConfirm",
        "Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;",
        "wishlist",
        "storeModeStillValid",
        "",
        "rmsCode",
        "isTokenStillValid",
        "isStoreModeV2Enabled",
        "searchQuery",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

.field public final b:Z

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Boolean;

.field public final j:Z

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 14

    .line 134
    const/16 v12, 0x7ff

    const/4 v13, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    .line 124
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    .line 125
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    .line 126
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    .line 127
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    .line 128
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    .line 129
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    .line 130
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    .line 131
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    .line 132
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    .line 133
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    const/16 v8, 0x1f

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/common/Asset;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object p1, v2

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move p2, v2

    :cond_1
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    move p3, v2

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move v1, p4

    :goto_0
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_4

    move v3, v2

    goto :goto_1

    :cond_4
    move v3, p5

    :goto_1
    and-int/lit8 v4, v0, 0x20

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    const/4 v6, 0x3

    invoke-direct {v4, v2, v5, v6, v5}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_5
    move-object/from16 v4, p6

    :goto_2
    and-int/lit8 v6, v0, 0x40

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    move/from16 v6, p7

    :goto_3
    and-int/lit16 v7, v0, 0x80

    if-eqz v7, :cond_7

    move-object v7, v5

    goto :goto_4

    :cond_7
    move-object/from16 v7, p8

    :goto_4
    and-int/lit16 v8, v0, 0x100

    if-eqz v8, :cond_8

    goto :goto_5

    :cond_8
    move-object/from16 v5, p9

    :goto_5
    and-int/lit16 v8, v0, 0x200

    if-eqz v8, :cond_9

    goto :goto_6

    :cond_9
    move/from16 v2, p10

    :goto_6
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    const-string v0, ""

    move-object/from16 p12, v0

    :goto_7
    move p4, p3

    move p5, v1

    move/from16 p11, v2

    move/from16 p6, v3

    move-object/from16 p7, v4

    move-object/from16 p10, v5

    move/from16 p8, v6

    move-object/from16 p9, v7

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    goto :goto_8

    :cond_a
    move-object/from16 p12, p11

    goto :goto_7

    :goto_8
    invoke-direct/range {p1 .. p12}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;-><init>(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;ZZZZLcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;ZLjava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StoreModeViewState(storeModeUiModel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFirstLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    const-string v2, ", displayExitConfirm="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", wishlist="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->f:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistSummaryUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", storeModeStillValid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rmsCode="

    const-string v2, ", isTokenStillValid="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->h:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->g:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isStoreModeV2Enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", searchQuery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Ln00;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
