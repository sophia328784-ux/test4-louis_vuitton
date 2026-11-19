.class public final Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00e5\u0001\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0010\u0008\u0002\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0016\u0008\u0002\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0018\u0008\u0002\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\u0008\u0012\u0004\u0012\u00020\u0014`\u0015\u0012\u000e\u0008\u0002\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0004\u0012\u000e\u0008\u0002\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001b\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u000e\u0008\u0002\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0004\u00a2\u0006\u0004\u0008!\u0010\"\u00a8\u0006#"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;",
        "",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;",
        "cart",
        "",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartItemUiModel;",
        "bundleChildItems",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;",
        "revealedItem",
        "",
        "isCartLoading",
        "isContributionLoading",
        "isError",
        "isEmpty",
        "Lkotlin/Pair;",
        "",
        "outOfStockError",
        "Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;",
        "featureFlags",
        "Ljava/util/ArrayList;",
        "Lcom/vuitton/android/presentation/screen/cart/GenericNotification;",
        "Lkotlin/collections/ArrayList;",
        "cartNotifications",
        "Lcom/vuitton/android/presentation/screen/cart/models/PerfumeSampleUiModel;",
        "perfumeSampleList",
        "perfumeSampleTemporaryList",
        "swipeItemEnabled",
        "Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;",
        "contactUsUiModel",
        "Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;",
        "cartContribution",
        "Lcom/vuitton/android/presentation/screen/cart/components/giftmessage/CardItemUiModel;",
        "giftCardItems",
        "<init>",
        "(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V",
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
.field public final a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

.field public final b:Ljava/util/List;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Z

.field public final h:Lkotlin/Pair;

.field public final i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/util/List;

.field public final l:Ljava/util/List;

.field public final m:Z

.field public final n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

.field public final o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

.field public final p:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 31

    move/from16 v0, p17

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    move v7, v6

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    move v8, v6

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    move v9, v6

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    move-object v10, v2

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    new-instance v11, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    const/4 v12, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 p1, v11

    move/from16 p5, v12

    move-object/from16 p6, v13

    move/from16 p2, v14

    move/from16 p3, v15

    move/from16 p4, v16

    invoke-direct/range {p1 .. p6}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    sget-object v13, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    sget-object v14, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v6, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    new-instance v16, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    const/16 v29, 0xfff

    const/16 v30, 0x0

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

    const/16 v28, 0x0

    invoke-direct/range {v16 .. v30}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;-><init>(ZLjava/lang/String;Lcom/vuitton/android/presentation/model/stringhandling/StringResourceUiModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/android/presentation/chat/ChatContactUsUiModel;ZZZLcom/vuitton/android/presentation/contact/ContactUsMode;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_d

    :cond_d
    move-object/from16 v16, p14

    :goto_d
    and-int/lit16 v15, v0, 0x4000

    if-eqz v15, :cond_e

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v15, 0x8000

    and-int/2addr v0, v15

    if-eqz v0, :cond_f

    sget-object v0, Lkotlin/collections/EmptyList;->b:Lkotlin/collections/EmptyList;

    goto :goto_f

    :cond_f
    move-object/from16 v0, p16

    :goto_f
    const/4 v15, 0x0

    move-object/from16 p1, p0

    move-object/from16 p17, v0

    move-object/from16 p2, v1

    move-object/from16 p16, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move/from16 p5, v5

    move/from16 p14, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p18, v15

    move-object/from16 p15, v16

    invoke-direct/range {p1 .. p18}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;-><init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;Ljava/util/List;Ljava/lang/String;ZZZZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;ZLcom/vuitton/android/presentation/contact/models/ContactUsUiModel;Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;Ljava/util/List;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 234
    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p16 .. p16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    .line 237
    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->b:Ljava/util/List;

    .line 238
    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    .line 239
    iput-boolean p4, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    .line 240
    iput-boolean p5, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    .line 241
    iput-boolean p6, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    .line 242
    iput-boolean p7, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    .line 243
    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->h:Lkotlin/Pair;

    .line 244
    iput-object p9, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    .line 245
    iput-object p10, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    .line 246
    iput-object p11, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    .line 247
    iput-object p12, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    .line 248
    iput-boolean p13, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->m:Z

    .line 249
    iput-object p14, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    .line 250
    iput-object p15, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    move-object/from16 p1, p16

    .line 251
    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->b:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->b:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    if-nez v3, :cond_5

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    sget-object v4, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->h:Lkotlin/Pair;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->h:Lkotlin/Pair;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->m:Z

    iget-boolean v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->m:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    iget-object v3, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    return v2

    :cond_14
    return v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->b:Ljava/util/List;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->h:Lkotlin/Pair;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lkotlin/Pair;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    invoke-static {v1, v2, v3}, Ln00;->a(IILjava/util/List;)I

    move-result v1

    iget-boolean v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->m:Z

    invoke-static {v1, v2, v3}, Lo60;->b(IIZ)I

    move-result v1

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v3}, Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v3, v0

    mul-int/2addr v3, v2

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v3

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    const-string v0, ")"

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->c:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/vuitton/android/presentation/screen/cart/models/CartItemIdUiModel;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v2, "CartItemIdUiModel(id="

    invoke-static {v2, v1, v0}, Lfc;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NativeCartViewState(cart="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->a:Lcom/vuitton/android/presentation/screen/cart/models/CartUiModel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", bundleChildItems="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", revealedItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isCartLoading="

    const-string v4, ", isContributionLoading="

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->d:Z

    invoke-static {v1, v3, v4, v2, v5}, Lpq0;->A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    const-string v1, ", isError="

    const-string v3, ", isEmpty="

    iget-boolean v4, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->e:Z

    iget-boolean v5, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->f:Z

    invoke-static {v2, v4, v1, v5, v3}, Lfc;->y(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->g:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", outOfStockError="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->h:Lkotlin/Pair;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", featureFlags="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->i:Lcom/vuitton/android/presentation/screen/cart/models/NativeCartFeatureFlags;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cartNotifications="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->j:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", perfumeSampleList="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", perfumeSampleTemporaryList="

    const-string v3, ", swipeItemEnabled="

    iget-object v4, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->k:Ljava/util/List;

    iget-object v5, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->l:Ljava/util/List;

    invoke-static {v2, v4, v1, v5, v3}, La;->C(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->m:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", contactUsUiModel="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->n:Lcom/vuitton/android/presentation/contact/models/ContactUsUiModel;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cartContribution="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->o:Lcom/vuitton/android/presentation/screen/cart/models/CartContributionUiModel;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", giftCardItems="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/cart/models/NativeCartViewState;->p:Ljava/util/List;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
