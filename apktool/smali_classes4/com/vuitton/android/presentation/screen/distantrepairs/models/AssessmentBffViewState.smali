.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b1\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;",
        "assessmentState",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;",
        "careService",
        "",
        "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;",
        "addresses",
        "selectedShippingAddress",
        "selectedBillingAddress",
        "",
        "selectedAddressToDisplay",
        "addressesLoader",
        "updateLoader",
        "repairsPayByLinkUrl",
        "userFirstname",
        "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;",
        "distantRepairsConfig",
        "isRepairCancellationReasonEnabled",
        "isDistantRepairPaymentMethodsIconsEnabled",
        "isDistantRepairsBillingAddressEnabled",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZ)V",
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

.field public final c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

.field public final d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

.field public final e:Ljava/util/List;

.field public final f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

.field public final g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Z

.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

.field public final n:Z

.field public final o:Z

.field public final p:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "Z",
            "Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;",
            ">;",
            "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;",
            "Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;",
            "ZZZ)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 239
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    .line 240
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    .line 241
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    .line 242
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->e:Ljava/util/List;

    .line 243
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    .line 244
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    .line 245
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->h:Ljava/lang/String;

    .line 246
    iput-boolean p9, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    .line 247
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    .line 248
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->k:Ljava/lang/String;

    .line 249
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->l:Ljava/lang/String;

    .line 250
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    .line 251
    iput-boolean p14, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    .line 252
    iput-boolean p15, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->o:Z

    move/from16 p1, p16

    .line 253
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 25

    move/from16 v0, p17

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

    new-instance v4, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    const/16 v9, 0xf

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v4, p3

    :goto_1
    and-int/lit8 v3, v0, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    move-object v3, v5

    goto :goto_2

    :cond_2
    move-object/from16 v3, p4

    :goto_2
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_3

    sget-object v6, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    move-object v7, v5

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    goto :goto_5

    :cond_5
    move-object/from16 v5, p7

    :goto_5
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    goto :goto_6

    :cond_6
    move-object/from16 v8, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    move v9, v2

    goto :goto_7

    :cond_7
    move/from16 v9, p9

    :goto_7
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_8

    move v10, v2

    goto :goto_8

    :cond_8
    move/from16 v10, p10

    :goto_8
    and-int/lit16 v11, v0, 0x400

    if-eqz v11, :cond_9

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11}, Ljava/lang/String;-><init>()V

    goto :goto_9

    :cond_9
    move-object/from16 v11, p11

    :goto_9
    and-int/lit16 v12, v0, 0x800

    if-eqz v12, :cond_a

    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    goto :goto_a

    :cond_a
    move-object/from16 v12, p12

    :goto_a
    and-int/lit16 v13, v0, 0x1000

    if-eqz v13, :cond_b

    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v14, 0x1ff

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 p2, v13

    move/from16 p12, v14

    move-object/from16 p13, v15

    move-object/from16 p3, v16

    move-object/from16 p4, v17

    move-object/from16 p5, v18

    move-object/from16 p6, v19

    move-object/from16 p7, v20

    move-object/from16 p8, v21

    move-object/from16 p9, v22

    move-object/from16 p10, v23

    move-object/from16 p11, v24

    invoke-direct/range {p2 .. p13}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :cond_b
    move-object/from16 v13, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    move v14, v2

    goto :goto_c

    :cond_c
    move/from16 v14, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    move v15, v2

    goto :goto_d

    :cond_d
    move/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_e

    move/from16 p18, v2

    :goto_e
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move-object/from16 p6, v3

    move-object/from16 p5, v4

    move-object/from16 p9, v5

    move-object/from16 p7, v6

    move-object/from16 p8, v7

    move-object/from16 p10, v8

    move/from16 p11, v9

    move/from16 p12, v10

    move-object/from16 p13, v11

    move-object/from16 p14, v12

    move-object/from16 p15, v13

    move/from16 p16, v14

    move/from16 p17, v15

    goto :goto_f

    :cond_e
    move/from16 p18, p16

    goto :goto_e

    :goto_f
    invoke-direct/range {p2 .. p18}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;Ljava/util/List;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;ZZZ)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->e:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->l:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->o:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-nez v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->e:Ljava/util/List;

    invoke-static {v2, v1, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->h:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->l:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    invoke-static {v2, v1, v0}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->o:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AssessmentBffViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", assessmentState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffStateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", careService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", addresses="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedShippingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->f:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedBillingAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->g:Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selectedAddressToDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", addressesLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateLoader="

    const-string v2, ", repairsPayByLinkUrl="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->i:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->j:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v1, ", userFirstname="

    const-string v2, ", distantRepairsConfig="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->k:Ljava/lang/String;

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->l:Ljava/lang/String;

    invoke-static {v0, v3, v1, v4, v2}, Lcj;->C(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->m:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isRepairCancellationReasonEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDistantRepairPaymentMethodsIconsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDistantRepairsBillingAddressEnabled="

    const-string v2, ")"

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->o:Z

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->p:Z

    invoke-static {v0, v3, v1, p0, v2}, Lpq0;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
