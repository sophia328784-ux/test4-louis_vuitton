.class public final Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00b5\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000f\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u0012\u0010\u0008\u0002\u0010\u0015\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\n\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0018\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;",
        "",
        "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
        "inAppDispatch",
        "",
        "isLoading",
        "isCountersLoading",
        "isCheckingForEligibilityLoading",
        "Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;",
        "profile",
        "",
        "displayUserName",
        "userInitials",
        "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;",
        "counters",
        "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;",
        "featureFlags",
        "isEligibleForPass",
        "hasUnreadNotifications",
        "",
        "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;",
        "hotContentList",
        "shouldAnimateHotContentWidget",
        "careServicePromotionKey",
        "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
        "userAvatar",
        "isNavigationSimplified",
        "<init>",
        "(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Z)V",
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

.field public final e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

.field public final i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

.field public final j:Z

.field public final k:Ljava/lang/Boolean;

.field public final l:Ljava/util/List;

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

.field public final p:Z


# direct methods
.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;",
            "ZZZ",
            "Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;",
            "Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;",
            "Z",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "+",
            "Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel;",
            ">;Z",
            "Ljava/lang/String;",
            "Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;",
            "Z)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    .line 218
    iput-boolean p2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    .line 219
    iput-boolean p3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->c:Z

    .line 220
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->d:Z

    .line 221
    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    .line 222
    iput-object p6, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    .line 223
    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    .line 224
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    .line 225
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    .line 226
    iput-boolean p10, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    .line 227
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    .line 228
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    .line 229
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    .line 230
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    .line 231
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    move/from16 p1, p16

    .line 232
    iput-boolean p1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

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

    const-string v7, ""

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

    new-instance v10, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    const/16 v17, 0x3f

    const/16 v18, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v10 .. v18}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;-><init>(IIIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_6

    :cond_6
    move-object/from16 v10, p8

    :goto_6
    and-int/lit16 v9, v0, 0x100

    if-eqz v9, :cond_7

    new-instance v11, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    const/16 v25, 0x1fff

    const/16 v26, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    const/16 v24, 0x0

    invoke-direct/range {v11 .. v26}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;-><init>(ZZZZZZZZZZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_7

    :cond_7
    move-object/from16 v11, p9

    :goto_7
    and-int/lit16 v9, v0, 0x200

    if-eqz v9, :cond_8

    move v9, v2

    goto :goto_8

    :cond_8
    move/from16 v9, p10

    :goto_8
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_9

    move-object v12, v6

    goto :goto_9

    :cond_9
    move-object/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_a

    move-object v13, v6

    goto :goto_a

    :cond_a
    move-object/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_b

    move v14, v2

    goto :goto_b

    :cond_b
    move/from16 v14, p13

    :goto_b
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move-object/from16 v6, p14

    :goto_c
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_d

    sget-object v15, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->f:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel$Companion;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v15, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->g:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p15

    :goto_d
    const v16, 0x8000

    and-int v0, v0, v16

    if-eqz v0, :cond_e

    move/from16 p18, v2

    :goto_e
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move/from16 p4, v1

    move/from16 p5, v3

    move/from16 p6, v4

    move-object/from16 p7, v5

    move-object/from16 p16, v6

    move-object/from16 p8, v7

    move-object/from16 p9, v8

    move/from16 p12, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p13, v12

    move-object/from16 p14, v13

    move/from16 p15, v14

    move-object/from16 p17, v15

    goto :goto_f

    :cond_e
    move/from16 p18, p16

    goto :goto_e

    :goto_f
    invoke-direct/range {p2 .. p18}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZZZLcom/vuitton/android/presentation/profile/models/ProfileUiModel;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;ZLjava/lang/Boolean;Ljava/util/List;ZLjava/lang/String;Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;Z)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->c:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->c:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    iget-boolean p1, p1, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    if-eq p0, p1, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->c:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->d:Z

    invoke-static {v0, v1, v2}, Lo60;->b(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lfc;->b(IILjava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;->hashCode()I

    move-result v3

    add-int/2addr v3, v0

    mul-int/2addr v3, v1

    iget-object v0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;->hashCode()I

    move-result v0

    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    invoke-static {v0, v1, v3}, Lo60;->b(IIZ)I

    move-result v0

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MyLvViewState(inAppDispatch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCountersLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCheckingForEligibilityLoading="

    const-string v2, ", profile="

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->c:Z

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->d:Z

    invoke-static {v0, v3, v1, v4, v2}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->e:Lcom/vuitton/android/presentation/profile/models/ProfileUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", displayUserName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userInitials="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", counters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->h:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvCounters;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->i:Lcom/vuitton/android/presentation/screen/mylv/models/MyLvFeatureFlags;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEligibleForPass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasUnreadNotifications="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->k:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotContentList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->l:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldAnimateHotContentWidget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", careServicePromotionKey="

    const-string v2, ", userAvatar="

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->n:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->m:Z

    invoke-static {v1, v3, v2, v0, v4}, Lcj;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->o:Lcom/vuitton/android/presentation/screen/account/editavatar/models/AvatarItemUiModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNavigationSimplified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/mylv/models/MyLvViewState;->p:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
