.class public final synthetic Lcl0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcl0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcl0;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcl0;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcl0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 13
    iput p4, p0, Lcl0;->b:I

    iput-object p1, p0, Lcl0;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcl0;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcl0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 48

    move-object/from16 v0, p0

    iget v1, v0, Lcl0;->b:I

    const/4 v2, -0x1

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, v0, Lcl0;->e:Ljava/lang/Object;

    iget-object v11, v0, Lcl0;->d:Ljava/lang/Object;

    iget-object v0, v0, Lcl0;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Ljava/lang/String;

    check-cast v11, Ljava/util/List;

    check-cast v10, Landroidx/work/impl/model/WorkSpecDao_Impl;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v2

    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v9

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-interface {v2, v8, v11}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    new-instance v8, Landroidx/collection/ArrayMap;

    invoke-direct {v8}, Landroidx/collection/ArrayMap;-><init>()V

    :cond_1
    :goto_1
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v11, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8, v11, v12}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->reset()V

    invoke-virtual {v10, v1, v0}, Landroidx/work/impl/model/WorkSpecDao_Impl;->C(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    invoke-virtual {v10, v1, v8}, Landroidx/work/impl/model/WorkSpecDao_Impl;->B(Landroidx/sqlite/SQLiteConnection;Landroidx/collection/ArrayMap;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v2}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2, v7}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v9}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->e(I)Landroidx/work/WorkInfo$State;

    move-result-object v13

    const/4 v10, 0x2

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v10

    sget-object v11, Landroidx/work/Data;->b:Landroidx/work/Data$Companion;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Landroidx/work/Data$Companion;->a([B)Landroidx/work/Data;

    move-result-object v14

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    const/4 v11, 0x4

    move/from16 v22, v10

    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v9

    long-to-int v9, v9

    const/16 v10, 0xe

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v15

    const/16 v10, 0xf

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v17

    const/16 v10, 0x10

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v19

    const/16 v10, 0x11

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    invoke-static {v10}, Landroidx/work/impl/model/WorkTypeConverters;->b(I)Landroidx/work/BackoffPolicy;

    move-result-object v23

    const/16 v10, 0x12

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v24

    const/16 v10, 0x13

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v26

    const/16 v10, 0x14

    invoke-interface {v2, v10}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v10

    long-to-int v10, v10

    const/16 v11, 0x15

    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v30

    const/16 v11, 0x16

    move-object/from16 p0, v8

    invoke-interface {v2, v11}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v7

    long-to-int v7, v7

    const/4 v8, 0x5

    invoke-interface {v2, v8}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->c(I)Landroidx/work/NetworkType;

    move-result-object v38

    const/4 v5, 0x6

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v5

    invoke-static {v5}, Landroidx/work/impl/model/WorkTypeConverters;->g([B)Landroidx/work/impl/utils/NetworkRequestCompat;

    move-result-object v37

    invoke-interface {v2, v4}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_4

    const/16 v39, 0x1

    goto :goto_3

    :cond_4
    const/16 v39, 0x0

    :goto_3
    const/16 v5, 0x8

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_5

    const/16 v40, 0x1

    goto :goto_4

    :cond_5
    const/16 v40, 0x0

    :goto_4
    const/16 v5, 0x9

    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v5

    long-to-int v5, v5

    if-eqz v5, :cond_6

    const/16 v41, 0x1

    :goto_5
    const/16 v5, 0xa

    goto :goto_6

    :cond_6
    const/16 v41, 0x0

    goto :goto_5

    :goto_6
    invoke-interface {v2, v5}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    if-eqz v3, :cond_7

    const/16 v42, 0x1

    goto :goto_7

    :cond_7
    const/16 v42, 0x0

    :goto_7
    const/16 v3, 0xb

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v43

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->getLong(I)J

    move-result-wide v45

    const/16 v6, 0xd

    invoke-interface {v2, v6}, Landroidx/sqlite/SQLiteStatement;->getBlob(I)[B

    move-result-object v3

    invoke-static {v3}, Landroidx/work/impl/model/WorkTypeConverters;->a([B)Ljava/util/LinkedHashSet;

    move-result-object v47

    new-instance v21, Landroidx/work/Constraints;

    move-object/from16 v36, v21

    invoke-direct/range {v36 .. v47}, Landroidx/work/Constraints;-><init>(Landroidx/work/impl/utils/NetworkRequestCompat;Landroidx/work/NetworkType;ZZZZJJLjava/util/Set;)V

    move-object/from16 v21, v36

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v33, v4

    check-cast v33, Ljava/util/List;

    invoke-interface {v2, v3}, Landroidx/sqlite/SQLiteStatement;->m1(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v3, p0

    invoke-static {v3, v4}, Lkotlin/collections/MapsKt;->d(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v34, v4

    check-cast v34, Ljava/util/List;

    new-instance v11, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    move/from16 v32, v7

    move/from16 v29, v9

    move/from16 v28, v10

    invoke-direct/range {v11 .. v34}, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;ILandroidx/work/BackoffPolicy;JJIIJILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v3

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/4 v7, 0x0

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    return-object v1

    :goto_8
    invoke-interface {v2}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_0
    check-cast v0, Lcom/linkplay/core/status/LPPlayChannel;

    check-cast v11, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    check-cast v10, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getDeviceInfo()Lcom/linkplay/core/model/LPDeviceInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/linkplay/core/model/LPDeviceInfo;->setPlayChannel(Lcom/linkplay/core/status/LPPlayChannel;)V

    :cond_9
    invoke-virtual {v11}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->O()Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentTrunkSpeakerDetailPageBinding;->m:Landroid/widget/TextView;

    invoke-static {v10, v0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;->a(Landroid/content/Context;Lcom/linkplay/core/status/LPPlayChannel;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    check-cast v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;

    check-cast v10, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/ui/semantics/Role;->b:Landroidx/compose/ui/semantics/Role$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->o(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;I)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;->SELECTED:Lcom/vuitton/android/presentation/screen/catalog/thematicplp/components/ThematicPlpCapsuleStyle;

    if-ne v0, v2, :cond_a

    const/4 v7, 0x1

    goto :goto_9

    :cond_a
    const/4 v7, 0x0

    :goto_9
    invoke-static {v1, v7}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->p(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Z)V

    iget-object v0, v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/models/ThemeUiModel;->b:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_a

    :cond_b
    move-object v10, v0

    :goto_a
    invoke-static {v1, v10}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_2
    check-cast v0, Landroidx/compose/runtime/MutableState;

    check-cast v11, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;

    check-cast v10, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v1, v2, :cond_d

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->a:Ljava/lang/String;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;

    invoke-interface {v11, v1, v2}, Lcom/vuitton/android/presentation/screen/catalog/thematicplp/viewmodel/ThematicPlpViewModel;->h4(Ljava/lang/String;Lcom/vuitton/android/presentation/screen/catalog/thematicplp/tracking/TrackingClickType;)V

    :cond_c
    invoke-interface {v0, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_d
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_3
    check-cast v0, Ljava/util/ArrayList;

    check-cast v11, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/grid/LazyGridScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ls8;

    const/16 v6, 0xd

    invoke-direct {v3, v11, v0, v10, v6}, Ls8;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x5e19fbd1

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v3}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-static {v1, v2, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridScope;->i(Landroidx/compose/foundation/lazy/grid/LazyGridScope;ILandroidx/compose/runtime/internal/ComposableLambdaImpl;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$BackEventImmersiveArticle;

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleViewState;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel$BackEventImmersiveArticle;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/TheLookImmersiveArticleViewModel;->w2(Lcom/vuitton/android/presentation/screen/thelookimmersivearticle/models/TheLookImmersiveArticleTrackingUiModel;)V

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v11, Landroidx/compose/runtime/State;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v0, p1

    check-cast v0, Landroidx/compose/ui/geometry/Size;

    sget v1, Landroidx/compose/material3/internal/TextFieldImplKt;->a:F

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-wide v2, v0, Landroidx/compose/ui/geometry/Size;->a:J

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    mul-float/2addr v2, v1

    iget-wide v5, v0, Landroidx/compose/ui/geometry/Size;->a:J

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    long-to-int v0, v5

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v5, v1, Landroidx/compose/ui/geometry/Size;->a:J

    shr-long/2addr v5, v4

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v2

    if-nez v1, :cond_e

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/geometry/Size;

    iget-wide v5, v1, Landroidx/compose/ui/geometry/Size;->a:J

    and-long/2addr v5, v7

    long-to-int v1, v5

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    cmpg-float v1, v1, v0

    if-nez v1, :cond_e

    goto :goto_b

    :cond_e
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v5, v0

    shl-long v0, v1, v4

    and-long v2, v5, v7

    or-long/2addr v0, v2

    new-instance v2, Landroidx/compose/ui/geometry/Size;

    invoke-direct {v2, v0, v1}, Landroidx/compose/ui/geometry/Size;-><init>(J)V

    invoke-interface {v10, v2}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_b
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/compose/ui/text/input/EditProcessor;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    sget-object v2, Landroidx/compose/foundation/text/TextFieldDelegate;->a:Landroidx/compose/foundation/text/TextFieldDelegate$Companion;

    iget-object v3, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Landroidx/compose/ui/text/input/EditProcessor;->a(Ljava/util/List;)Landroidx/compose/ui/text/input/TextFieldValue;

    move-result-object v0

    if-eqz v3, :cond_f

    iget-object v1, v3, Landroidx/compose/ui/text/input/TextInputSession;->a:Landroidx/compose/ui/text/input/TextInputService;

    iget-object v1, v1, Landroidx/compose/ui/text/input/TextInputService;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/text/input/TextInputSession;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v3, Landroidx/compose/ui/text/input/TextInputSession;->b:Landroidx/compose/ui/text/input/PlatformTextInputService;

    invoke-interface {v1, v8, v0}, Landroidx/compose/ui/text/input/PlatformTextInputService;->e(Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/TextFieldValue;)V

    :cond_f
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_7
    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast v11, Landroidx/compose/ui/text/AnnotatedString$Range;

    check-cast v10, Landroidx/compose/ui/text/SpanStyle;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    iget-boolean v2, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    if-eqz v2, :cond_11

    iget-object v2, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->a:Ljava/lang/Object;

    iget v3, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    iget v4, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    instance-of v2, v2, Landroidx/compose/ui/text/SpanStyle;

    if-eqz v2, :cond_11

    iget v2, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->b:I

    if-ne v4, v2, :cond_11

    iget v2, v11, Landroidx/compose/ui/text/AnnotatedString$Range;->c:I

    if-ne v3, v2, :cond_11

    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    if-nez v10, :cond_10

    new-instance v12, Landroidx/compose/ui/text/SpanStyle;

    const v33, 0xffff

    const/16 v34, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-direct/range {v12 .. v34}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/PlatformSpanStyle;Landroidx/compose/ui/graphics/drawscope/DrawStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v10, v12

    :cond_10
    invoke-direct {v2, v10, v4, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    goto :goto_c

    :cond_11
    move-object v2, v1

    :goto_c
    invoke-virtual {v11, v1}, Landroidx/compose/ui/text/AnnotatedString$Range;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    return-object v2

    :pswitch_8
    check-cast v0, Landroidx/compose/runtime/MutableState;

    check-cast v11, Lcom/vuitton/android/presentation/screen/story/models/StoryViewState;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Lbn;

    const/4 v2, 0x7

    invoke-direct {v1, v11, v10, v2}, Lbn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$lambda$13$0$$inlined$onDispose$1;

    invoke-direct {v2, v0, v1}, Lcom/vuitton/android/presentation/screen/story/components/StoryComposableKt$StoryComposable$lambda$13$0$$inlined$onDispose$1;-><init>(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleEventObserver;)V

    return-object v2

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;

    check-cast v11, Landroidx/activity/compose/ManagedActivityResultLauncher;

    check-cast v10, Landroid/content/Context;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$SearchClickedEvent;->a:Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel$SearchClickedEvent;

    invoke-interface {v0, v2}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->S6(Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeTrackingUiModel;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/search/SearchActivity;->y:Lcom/vuitton/android/presentation/screen/search/SearchActivity$Companion;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/storemode/StoreModeViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/storemode/models/StoreModeViewState;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/vuitton/android/presentation/screen/search/SearchActivity;

    invoke-direct {v2, v10, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v1, :cond_12

    const-string v3, "RMS_CODE"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_12
    if-eqz v0, :cond_13

    const-string v1, "SEARCH_QUERY"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_13
    invoke-virtual {v11, v2}, Landroidx/activity/compose/ManagedActivityResultLauncher;->a(Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Lkotlin/jvm/functions/Function4;

    check-cast v11, Landroid/content/Context;

    check-cast v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f14125a

    invoke-virtual {v11, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->b:Ljava/lang/String;

    iget-object v3, v10, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductSortUiModel;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v8, v3}, Lkotlin/jvm/functions/Function4;->g(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lni0;

    const/16 v3, 0x17

    invoke-direct {v2, v0, v11, v3}, Lni0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v3, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v4, 0x3a56614d

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    const/4 v2, 0x3

    invoke-static {v1, v8, v3, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistViewState;->d:Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;

    if-eqz v0, :cond_14

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistUiModel;->a:Landroidx/compose/runtime/snapshots/SnapshotStateList;

    if-eqz v0, :cond_14

    sget-object v2, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1;->b:Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$1;

    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateList;->size()I

    move-result v3

    new-instance v4, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$3;

    invoke-direct {v4, v2, v0}, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    new-instance v2, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$4;

    invoke-direct {v2, v0, v10}, Lcom/vuitton/android/presentation/screen/wishlist/share/components/SharedWishlistScreenKt$SharedWishlistScreen$lambda$0$0$0$1$$inlined$items$default$4;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x2fd4df92

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6, v2}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v3, v8, v4, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    :cond_14
    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt;->a:Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/vuitton/android/presentation/screen/wishlist/share/components/ComposableSingletons$SharedWishlistScreenKt;->b:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const/4 v2, 0x3

    invoke-static {v1, v8, v0, v2}, Landroidx/compose/foundation/lazy/LazyListScope;->f(Landroidx/compose/foundation/lazy/LazyListScope;Ljava/lang/String;Lkotlin/jvm/functions/Function3;I)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;

    check-cast v11, Landroid/content/Context;

    check-cast v10, Landroidx/compose/foundation/pager/PagerState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->a:Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;

    iget-object v3, v2, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/vuitton/android/presentation/model/common/ProductTinyUiModel;->g:Ljava/lang/String;

    if-nez v2, :cond_17

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/RecommendationUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TryOnProductUiModel;->g:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;

    if-eqz v0, :cond_15

    iget-object v8, v0, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/ColorUiModel;->a:Ljava/lang/String;

    :cond_15
    if-nez v8, :cond_16

    const-string v2, ""

    goto :goto_d

    :cond_16
    move-object v2, v8

    :cond_17
    :goto_d
    const-string v0, ". "

    const-string v4, "."

    invoke-static {v3, v0, v2, v4}, Ld21;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v2

    const/16 v35, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->o()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f140376

    invoke-virtual {v11, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;

    check-cast v11, Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v2, v1, Landroidx/compose/ui/input/pointer/PointerInputChange;->c:J

    invoke-interface {v0, v2, v3, v11}, Landroidx/compose/foundation/text/selection/MouseSelectionObserver;->d(JLandroidx/compose/foundation/text/selection/SelectionAdjustment;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInputChange;->a()V

    const/4 v5, 0x1

    iput-boolean v5, v10, Lkotlin/jvm/internal/Ref$BooleanRef;->b:Z

    :cond_18
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;

    check-cast v11, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;

    check-cast v10, Landroidx/navigation3/runtime/NavBackStack;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PSPViewModel;->X0(Ljava/lang/String;)V

    sget-object v0, Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;->PSP:Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;

    invoke-interface {v11, v0}, Lcom/vuitton/android/presentation/screen/search/SearchViewModel;->S5(Lcom/vuitton/android/domain/monitoring/search/SearchPanelExitContext;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;->INSTANCE:Lcom/vuitton/android/presentation/screen/search/components/SearchRoutes$PSP;

    invoke-virtual {v10, v0}, Landroidx/navigation3/runtime/NavBackStack;->a(Landroidx/navigation3/runtime/NavKey;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_f
    check-cast v0, Lcom/linkplay/core/device/LPDevice;

    check-cast v11, Ljava/lang/String;

    check-cast v10, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;

    move-object/from16 v1, p1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/a;

    invoke-direct {v1, v10}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/a;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;)V

    new-instance v2, Lot0;

    const/4 v5, 0x1

    invoke-direct {v2, v10, v5}, Lot0;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/RoomDetailFragment;I)V

    invoke-static {v0, v11, v1, v2}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;->b(Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lkotlin/jvm/functions/Function1;

    check-cast v11, Lkotlin/jvm/functions/Function0;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/TimeSlotUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;

    sget-object v3, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;->RESCHEDULE:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;

    invoke-direct {v2, v3}, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$RescheduleConfirmClickedEvent;-><init>(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/AppointmentCalendarContext;)V

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {v10, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_11
    check-cast v0, Lkotlin/jvm/functions/Function2;

    check-cast v11, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    check-cast v10, Landroidx/compose/foundation/pager/PagerState;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/geometry/Offset;

    invoke-virtual {v10}, Landroidx/compose/foundation/pager/PagerState;->k()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v11, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_12
    check-cast v0, Ljava/util/List;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    check-cast v10, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/foundation/lazy/LazyListScope;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$2;

    invoke-direct {v3, v0}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$2;-><init>(Ljava/util/List;)V

    new-instance v4, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$3;

    invoke-direct {v4, v0, v11, v10, v0}, Lcom/vuitton/android/presentation/screen/placesearch/components/PlaceSearchPageComposableKt$PlaceSearchMainContent$lambda$1$1$0$0$$inlined$itemsIndexed$default$3;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function2;Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchActivity$PlaceInfoType;Ljava/util/List;)V

    new-instance v0, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    const v5, 0x799532c4

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6, v4}, Landroidx/compose/runtime/internal/ComposableLambdaImpl;-><init>(IZLjava/lang/Object;)V

    invoke-interface {v1, v2, v8, v3, v0}, Landroidx/compose/foundation/lazy/LazyListScope;->h(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_13
    check-cast v0, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;

    check-cast v11, Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_19

    invoke-interface {v0, v1, v11}, Lcom/vuitton/android/presentation/screen/placesearch/PlaceSearchViewModel;->R3(Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/place/AutocompleteContext;)V

    :cond_19
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_14
    check-cast v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    check-cast v0, Landroidx/compose/runtime/State;

    check-cast v11, Landroidx/compose/runtime/State;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState;

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState;

    instance-of v3, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->b:Ljava/lang/String;

    if-nez v3, :cond_1a

    move-object v3, v8

    :cond_1a
    sget-object v4, Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;->PRODUCT_SELECTED:Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->c:Ljava/lang/String;

    if-nez v1, :cond_1f

    instance-of v1, v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;

    if-eqz v1, :cond_1b

    check-cast v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;

    goto :goto_e

    :cond_1b
    move-object v2, v8

    :goto_e
    if-eqz v2, :cond_20

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorProductState$Success;->a:Ljava/util/List;

    if-eqz v1, :cond_20

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    invoke-interface {v5}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    iget-object v5, v5, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->b:Ljava/lang/String;

    if-nez v5, :cond_1d

    move-object v5, v8

    :cond_1d
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    goto :goto_f

    :cond_1e
    move-object v2, v8

    :goto_f
    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    if-eqz v2, :cond_20

    iget-object v1, v2, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->a:Landroidx/compose/runtime/MutableState;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;

    if-eqz v1, :cond_20

    iget-object v8, v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel;->c:Ljava/lang/String;

    goto :goto_10

    :cond_1f
    move-object v8, v1

    :cond_20
    :goto_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/curationadvisor/models/PersonalSelectionsCurationAdvisorViewState$Success;->a:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/PersonalSelectionsDetailUiModel;->g:Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/personalselections/detail/models/SelectionStoreUiModel;->a:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/collections/builders/MapBuilder;

    invoke-direct {v1}, Lkotlin/collections/builders/MapBuilder;-><init>()V

    const-string v2, "action"

    invoke-virtual {v4}, Lcom/vuitton/android/presentation/tracking/PersonalSelectionActions;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_21

    const-string v2, "product_id"

    invoke-virtual {v1, v2, v3}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    if-eqz v8, :cond_22

    const-string v2, "product_category"

    invoke-virtual {v1, v2, v8}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    if-eqz v0, :cond_23

    const-string v2, "origin_store_id"

    invoke-virtual {v1, v2, v0}, Lkotlin/collections/builders/MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    invoke-virtual {v1}, Lkotlin/collections/builders/MapBuilder;->c()Lkotlin/collections/builders/MapBuilder;

    move-result-object v0

    new-instance v1, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InteractiveWardrobing;

    invoke-direct {v1, v0}, Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent$InteractiveWardrobing;-><init>(Ljava/util/Map;)V

    invoke-virtual {v10, v1}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->a(Lcom/vuitton/android/presentation/screen/appsflyer/AppsFlyerEvent;)V

    :cond_24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_15
    check-cast v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;

    check-cast v11, Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    check-cast v10, Landroidx/compose/runtime/MutableState;

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/pdp/models/PdpViewState;->q:Lkotlinx/collections/immutable/ImmutableList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_27

    invoke-interface {v10}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_27

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v10, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModelKt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_25

    check-cast v2, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;

    const-string v5, "product_sheet.you_may_also_like"

    const-string v6, "Related products"

    invoke-virtual {v2, v1, v5, v6}, Lcom/vuitton/android/presentation/common/editorial/models/CarouselSItemUiModel;->a(ILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_11

    :cond_25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v8

    :cond_26
    iget-object v0, v11, Lcom/vuitton/android/presentation/tracking/GA4Tracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    new-instance v2, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    const-string v3, "product_sheet"

    const-string v5, "product_sheet.you_may_also_like"

    const-string v6, "Related products"

    invoke-direct/range {v2 .. v7}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v2}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModelKt;->a(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit$EventHit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    :cond_27
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_16
    check-cast v0, Lkotlin/jvm/functions/Function0;

    check-cast v11, Landroidx/compose/runtime/MutableState;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne v1, v2, :cond_29

    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    if-eqz v1, :cond_28

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    invoke-interface {v10, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-interface {v11, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_12

    :cond_29
    invoke-interface {v11}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistFeedbackUiModel$RequestAuth;->a:Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/PLPWishlistUpdateUiModel;->a:Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;

    if-eqz v0, :cond_2a

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/impl/delegates/ProductForWishlist;->b:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel$SkuDataUiModel$PLPWishlistStateUiModel;-><init>(ZZ)V

    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :cond_2a
    invoke-interface {v11, v8}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_12
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_17
    move v3, v7

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;

    check-cast v11, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;

    check-cast v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/plp/models/viewstates/PLPViewState;->a:Ljava/lang/String;

    if-eqz v2, :cond_2b

    invoke-virtual {v10, v2}, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;->d(Ljava/lang/String;)V

    :cond_2b
    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModelKt;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v11, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;->a:Ljava/lang/String;

    iget-object v2, v11, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;->b:Ljava/lang/String;

    check-cast v1, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->t(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v7, v3

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v5, v7, 0x1

    if-ltz v7, :cond_2c

    check-cast v3, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;

    iget-object v6, v11, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;->c:Ljava/lang/String;

    iget-object v9, v11, Lcom/vuitton/android/presentation/tracking/PLPListTrackingIds;->d:Ljava/lang/String;

    invoke-virtual {v3, v7, v6, v9}, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/PlpProductUiModel;->c(ILjava/lang/String;Ljava/lang/String;)Lcom/vuitton/foundation/model/domain/model/analytics/ViewItemListTrackingValue;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v5

    goto :goto_13

    :cond_2c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->t0()V

    throw v8

    :cond_2d
    new-instance v12, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;

    const-string v13, "product_list"

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel$ViewItemListLoaded;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v12}, Lcom/vuitton/android/presentation/screen/plp/viewmodels/PLPViewModel;->j(Lcom/vuitton/android/presentation/tracking/GA4TrackingUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
