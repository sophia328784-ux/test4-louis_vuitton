.class public final Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00ab\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e\u0012\u000e\u0008\u0002\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isUserConnected",
        "isEligibleForPass",
        "",
        "userName",
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;",
        "servicesUrls",
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;",
        "servicesImmersiveArticlesKey",
        "Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;",
        "servicesFeatureFlags",
        "",
        "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;",
        "sharingList",
        "Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;",
        "personalSelections",
        "",
        "repairCounter",
        "ongoingAppointmentCounter",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "careServicePromotionKey",
        "hasSimplifiedNavigation",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;IILcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Z)V",
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

.field public final d:Z

.field public final e:Ljava/lang/String;

.field public final f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

.field public final g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

.field public final h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

.field public final i:Ljava/util/List;

.field public final j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

.field public final k:I

.field public final l:I

.field public final m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final n:Ljava/lang/String;

.field public final o:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;IILcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "ZZZ",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;",
            "Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;",
            "Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;",
            "Ljava/util/List<",
            "Lcom/vuitton/android/presentation/screen/personalselections/list/models/PersonalSharingUiModel;",
            ">;",
            "Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;",
            "II",
            "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 199
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    .line 200
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    .line 201
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->d:Z

    .line 202
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->e:Ljava/lang/String;

    .line 203
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    .line 204
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    .line 205
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    .line 206
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->i:Ljava/util/List;

    .line 207
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    .line 208
    iput p11, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    .line 209
    iput p12, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    .line 210
    iput-object p13, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    .line 211
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    .line 212
    iput-boolean p15, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->o:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;IILcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 30

    move/from16 v0, p16

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

    move v4, v2

    goto :goto_2

    :cond_2
    move/from16 v4, p4

    :goto_2
    and-int/lit8 v5, v0, 0x10

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move-object v5, v6

    goto :goto_3

    :cond_3
    move-object/from16 v5, p5

    :goto_3
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_4

    move-object v7, v6

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_5

    move-object v8, v6

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_6

    new-instance v10, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    const/16 v16, 0x1f

    const/16 v17, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v17}, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;-><init>(ZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    sget-object v9, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p9

    :goto_7
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_8

    move-object v11, v6

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    move v12, v2

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    move v13, v2

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    new-instance v15, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v28, 0xfff

    const/16 v29, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v15 .. v29}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_b

    :cond_b
    move-object/from16 v15, p13

    :goto_b
    and-int/lit16 v14, v0, 0x2000

    if-eqz v14, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v6, p14

    :goto_c
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_d

    move/from16 p17, v2

    :goto_d
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p16, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move-object/from16 p11, v9

    move-object/from16 p10, v10

    move-object/from16 p12, v11

    move/from16 p13, v12

    move/from16 p14, v13

    move-object/from16 p15, v15

    goto :goto_e

    :cond_d
    move/from16 p17, p15

    goto :goto_d

    :goto_e
    invoke-direct/range {p2 .. p17}, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLjava/lang/String;Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;Ljava/util/List;Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;IILcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->i:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    iget v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->o:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->o:Z

    if-eq p0, p1, :cond_10

    return v2

    :cond_10
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->e:Ljava/lang/String;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->i:Ljava/util/List;

    invoke-static {v3, v1, v0}, Ln00;->a(IILjava/util/List;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    invoke-static {v3, v0, v1}, Ltr;->b(III)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v3, v2

    mul-int/2addr v3, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->o:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v3

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ServicesViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUserConnected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isEligibleForPass="

    const-string v2, ", userName="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", servicesUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->f:Lcom/vuitton/android/presentation/screen/services/models/ServicesUrls;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", servicesImmersiveArticlesKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->g:Lcom/vuitton/android/presentation/screen/services/models/ServicesImmersiveArticlesKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", servicesFeatureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->h:Lcom/vuitton/android/presentation/screen/services/models/ServicesFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sharingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", personalSelections="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->j:Lcom/vuitton/foundation/model/domain/model/personalselections/PersonalSelections;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", repairCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ongoingAppointmentCounter="

    const-string v2, ", contactUsUiModel="

    iget v3, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->k:I

    iget v4, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->l:I

    invoke-static {v3, v4, v1, v2, v0}, Lfc;->x(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->m:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", careServicePromotionKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasSimplifiedNavigation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/services/models/ServicesViewState;->o:Z

    invoke-static {v0, p0, v1}, La;->p(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
