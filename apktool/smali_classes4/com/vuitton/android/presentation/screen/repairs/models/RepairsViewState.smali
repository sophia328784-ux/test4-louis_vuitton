.class public final Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b9\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u000e\u0008\u0002\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0007\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u001a\u0008\u0002\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\r0\u00120\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\r\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isDetailError",
        "",
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;",
        "repairsOnGoing",
        "repairsHistory",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;",
        "repairStatus",
        "",
        "trackingNumber",
        "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;",
        "repairDetailUiModel",
        "showCareExpertNoteInDetails",
        "Lkotlin/Pair;",
        "Lcom/vuitton/android/presentation/screen/repairs/FollowUp;",
        "followUp",
        "isRepairCancelled",
        "repairPayByLinkUrl",
        "Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;",
        "featureFlags",
        "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;",
        "distantRepairsConfig",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V",
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
.field public final a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/util/List;

.field public final e:Ljava/util/List;

.field public final f:Ljava/util/List;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

.field public final i:Z

.field public final j:Ljava/util/List;

.field public final k:Z

.field public final l:Ljava/lang/String;

.field public final m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

.field public final n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;",
            ">;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/distantrepairs/models/RepairStatusTranslationUiModel;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;",
            "Z",
            "Ljava/util/List<",
            "+",
            "Lkotlin/Pair<",
            "+",
            "Lcom/vuitton/android/presentation/screen/repairs/FollowUp;",
            "Ljava/lang/String;",
            ">;>;Z",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 235
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->b:Z

    .line 236
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    .line 237
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    .line 238
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    .line 239
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->f:Ljava/util/List;

    .line 240
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->g:Ljava/lang/String;

    .line 241
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    .line 242
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->i:Z

    .line 243
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->j:Ljava/util/List;

    .line 244
    iput-boolean p11, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->k:Z

    .line 245
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->l:Ljava/lang/String;

    .line 246
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    .line 247
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 24

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move/from16 v1, p2

    :goto_0
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move/from16 v3, p3

    :goto_1
    and-int/lit8 v4, v0, 0x8

    if-eqz v4, :cond_2

    sget-object v4, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    if-eqz v5, :cond_3

    sget-object v5, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v6, v0, 0x20

    if-eqz v6, :cond_4

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p6

    :goto_4
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_5

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    goto :goto_5

    :cond_5
    move-object/from16 v7, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    sget-object v10, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v2, p11

    :goto_9
    and-int/lit16 v11, v0, 0x800

    if-eqz v11, :cond_a

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    goto :goto_a

    :cond_a
    move-object/from16 v11, p12

    :goto_a
    and-int/lit16 v12, v0, 0x1000

    if-eqz v12, :cond_b

    new-instance v12, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    const/16 v13, 0x1f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 p2, v12

    move/from16 p8, v13

    move-object/from16 p9, v14

    move/from16 p3, v15

    move/from16 p4, v16

    move/from16 p5, v17

    move/from16 p6, v18

    move/from16 p7, v19

    invoke-direct/range {p2 .. p9}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :cond_b
    move-object/from16 v12, p13

    :goto_b
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_c

    new-instance v0, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v13, 0x1ff

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 p2, v0

    move/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p3, v15

    move-object/from16 p4, v16

    move-object/from16 p5, v17

    move-object/from16 p6, v18

    move-object/from16 p7, v19

    move-object/from16 p8, v20

    move-object/from16 p9, v21

    move-object/from16 p10, v22

    move-object/from16 p11, v23

    invoke-direct/range {p2 .. p13}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 p16, v0

    :goto_c
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p13, v2

    move/from16 p5, v3

    move-object/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p8, v6

    move-object/from16 p9, v7

    move-object/from16 p10, v8

    move/from16 p11, v9

    move-object/from16 p12, v10

    move-object/from16 p14, v11

    move-object/from16 p15, v12

    goto :goto_d

    :cond_c
    move-object/from16 p16, p14

    goto :goto_c

    :goto_d
    invoke-direct/range {p2 .. p16}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZLjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;ZLjava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->f:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->f:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->j:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->j:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->k:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->k:Z

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return v2

    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->f:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->g:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->i:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->j:Ljava/util/List;

    invoke-static {v0, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->k:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->l:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RepairsViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDetailError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", repairsOnGoing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repairsHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repairStatus="

    const-string v2, ", trackingNumber="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->e:Ljava/util/List;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->f:Ljava/util/List;

    invoke-static {v0, v3, v1, v4, v2}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repairDetailUiModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->h:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", showCareExpertNoteInDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", followUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->j:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRepairCancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repairPayByLinkUrl="

    const-string v2, ", featureFlags="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->l:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->k:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/RepairFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distantRepairsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/RepairsViewState;->n:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
