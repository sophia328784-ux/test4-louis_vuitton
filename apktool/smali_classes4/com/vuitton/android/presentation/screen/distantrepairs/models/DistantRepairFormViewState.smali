.class public final Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0012\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;",
        "formStateUIModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;",
        "step1StateUIModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;",
        "step2StateUIModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;",
        "step3StateUIModel",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;",
        "photosStateUIModel",
        "",
        "isLoading",
        "Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;",
        "careServiceId",
        "Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;",
        "formFeatureFlags",
        "Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;",
        "distantRepairsConfig",
        "Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;",
        "careServiceForm",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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

.field public final b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

.field public final c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

.field public final d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

.field public final e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

.field public final f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

.field public final g:Z

.field public final h:Ljava/lang/String;

.field public final i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

.field public final j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

.field public final k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 25

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    const/16 v7, 0xf

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/StepState;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/FormState;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    move-object/from16 v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    new-instance v6, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    const/4 v10, 0x7

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairContactMethod;Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1

    :cond_1
    move-object/from16 v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    new-instance v7, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    const/16 v15, 0x7f

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;-><init>(Lcom/vuitton/foundation/model/domain/model/profile/Profile;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;Lcom/vuitton/android/presentation/screen/authentication/common/validation/FieldErrorUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    new-instance v8, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v8 .. v13}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;-><init>(ILjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_3

    :cond_3
    move-object/from16 v8, p5

    :goto_3
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_4

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v9, v1

    goto :goto_4

    :cond_4
    move-object/from16 v9, p6

    :goto_4
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_6

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p8

    :goto_6
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_7

    new-instance v1, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 p2, v1

    move/from16 p7, v2

    move-object/from16 p8, v3

    move/from16 p3, v4

    move/from16 p4, v12

    move/from16 p5, v13

    move/from16 p6, v14

    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v12, v1

    goto :goto_7

    :cond_7
    move-object/from16 v12, p9

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    new-instance v13, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    const/16 v23, 0x1ff

    const/16 v24, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v13 .. v24}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_8
    move-object/from16 v13, p10

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    sget-object v0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->b:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel$Companion;->a()Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    move-result-object v0

    move-object v14, v0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p11

    :goto_9
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v15}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 213
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    .line 214
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    .line 215
    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    .line 216
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    .line 217
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    .line 218
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    .line 219
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->h:Ljava/lang/String;

    .line 220
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    .line 221
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    .line 222
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->h:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->h:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;->a:Ljava/util/List;

    invoke-static {v0, v1, v2}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;->a:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DistantRepairFormViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", formStateUIModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->b:Lcom/vuitton/android/presentation/screen/distantrepairs/models/FormStateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step1StateUIModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->c:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step1StateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step2StateUIModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->d:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step2StateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", step3StateUIModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->e:Lcom/vuitton/android/presentation/screen/distantrepairs/models/Step3StateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", photosStateUIModel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->f:Lcom/vuitton/android/presentation/screen/distantrepairs/models/PhotosStateUIModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", careServiceId="

    const-string v2, ", formFeatureFlags="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->h:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->g:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->i:Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/DistantRepairsFormFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", distantRepairsConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->j:Lcom/vuitton/android/presentation/screen/repairs/models/DistantRepairsConfigUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", careServiceForm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/DistantRepairFormViewState;->k:Lcom/vuitton/android/presentation/screen/dynamicform/model/FormUiModel;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
