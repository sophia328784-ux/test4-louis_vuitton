.class public final synthetic Lc61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lc61;->b:I

    iput-object p1, p0, Lc61;->c:Ljava/lang/Object;

    iput-object p2, p0, Lc61;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lc61;->b:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v5, v0, Lc61;->d:Ljava/lang/Object;

    iget-object v0, v0, Lc61;->c:Ljava/lang/Object;

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lcom/appsflyer/sdk_base/logger/LogTag;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Lcom/appsflyer/sdk_base/logger/AFLoggerBase;

    invoke-static {v0, v5, v1}, Lcom/appsflyer/AFLogger;->k(Lcom/appsflyer/sdk_base/logger/LogTag;Ljava/lang/String;Lcom/appsflyer/sdk_base/logger/AFLoggerBase;)Lkotlin/Unit;

    move-result-object v0

    return-object v0

    :pswitch_0
    check-cast v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    check-cast v5, Landroidx/work/impl/model/WorkTag;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Landroidx/work/impl/model/WorkTagDao_Impl;->c:Landroidx/work/impl/model/WorkTagDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/impl/model/WorkTagDao_Impl;->b:Landroidx/work/impl/model/WorkTagDao_Impl$1;

    invoke-virtual {v0, v1, v5}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_1
    check-cast v0, Landroidx/work/WorkInfo$State;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "UPDATE workspec SET state=? WHERE id=?"

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v3

    :try_start_0
    invoke-static {v0}, Landroidx/work/impl/model/WorkTypeConverters;->f(Landroidx/work/WorkInfo$State;)I

    move-result v0

    int-to-long v6, v0

    invoke-interface {v3, v2, v6, v7}, Landroidx/sqlite/SQLiteStatement;->a(IJ)V

    invoke-interface {v3, v4, v5}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    invoke-interface {v3}, Landroidx/sqlite/SQLiteStatement;->Q1()Z

    invoke-static {v1}, Landroidx/room/util/SQLiteConnectionUtil;->a(Landroidx/sqlite/SQLiteConnection;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_2
    check-cast v0, Landroidx/work/Data;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v3, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "UPDATE workspec SET output=? WHERE id=?"

    invoke-interface {v1, v3}, Landroidx/sqlite/SQLiteConnection;->T1(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;

    move-result-object v1

    :try_start_1
    sget-object v3, Landroidx/work/Data;->b:Landroidx/work/Data$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Landroidx/work/Data$Companion;->c(Landroidx/work/Data;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroidx/sqlite/SQLiteStatement;->b(I[B)V

    invoke-interface {v1, v4, v5}, Landroidx/sqlite/SQLiteStatement;->A(ILjava/lang/String;)V

    invoke-interface {v1}, Landroidx/sqlite/SQLiteStatement;->Q1()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_1
    move-exception v0

    invoke-interface {v1}, Ljava/lang/AutoCloseable;->close()V

    throw v0

    :pswitch_3
    check-cast v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    check-cast v5, Landroidx/work/impl/model/WorkSpec;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Landroidx/work/impl/model/WorkSpecDao_Impl;->c:Landroidx/work/impl/model/WorkSpecDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/impl/model/WorkSpecDao_Impl;->b:Landroidx/work/impl/model/WorkSpecDao_Impl$1;

    invoke-virtual {v0, v1, v5}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_4
    check-cast v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    check-cast v5, Landroidx/work/impl/model/WorkName;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/sqlite/SQLiteConnection;

    sget-object v2, Landroidx/work/impl/model/WorkNameDao_Impl;->c:Landroidx/work/impl/model/WorkNameDao_Impl$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Landroidx/work/impl/model/WorkNameDao_Impl;->b:Landroidx/work/impl/model/WorkNameDao_Impl$1;

    invoke-virtual {v0, v1, v5}, Landroidx/room/EntityInsertAdapter;->c(Landroidx/sqlite/SQLiteConnection;Ljava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_5
    check-cast v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;

    check-cast v5, Ljava/lang/String;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/wishlist/model/WishlistItemUiModel;->e:Ljava/lang/String;

    filled-new-array {v2, v0, v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->P([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/Iterable;

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/collections/CollectionsKt;->K(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_6
    check-cast v0, Landroidx/compose/foundation/layout/WindowInsetsHolder;

    check-cast v5, Landroid/view/View;

    move-object/from16 v1, p1

    check-cast v1, Landroidx/compose/runtime/DisposableEffectScope;

    invoke-virtual {v0, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder;->a(Landroid/view/View;)V

    new-instance v1, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1;

    invoke-direct {v1, v0, v5}, Landroidx/compose/foundation/layout/WindowInsetsHolder$Companion$current$lambda$0$0$$inlined$onDispose$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsHolder;Landroid/view/View;)V

    return-object v1

    :pswitch_7
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;

    move-object/from16 v1, p1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;->b:Lcom/linkplay/core/device/LPDevice;

    invoke-virtual {v1}, Lcom/linkplay/core/device/LPDevice;->getUpnpUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/TrunkSpeakerRouter;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_0
    const-string v0, "trunkSpeakerRouter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_8
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerSimpleCard;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$SimpleSpeaker;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerSimpleCard;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerSimpleCard;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;

    invoke-interface {v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;->m(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_9
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerRoomCard;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice$RoomSpeaker;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerRoomCard;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$SpeakerRoomCard;->c:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;

    invoke-interface {v0, v5}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListAdapter$Listener;->m(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/model/WifiTrunkDevice;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_a
    check-cast v0, Ljava/lang/String;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;

    move-object/from16 v1, p1

    check-cast v1, Lcom/linkplay/core/device/LPDevice;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;->N:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;

    const/4 v3, 0x0

    invoke-direct {v2, v5, v3}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/a;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V

    new-instance v4, Lv61;

    invoke-direct {v4, v5, v3}, Lv61;-><init>(Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/detail/WifiDeviceDetailFragment;I)V

    invoke-static {v1, v0, v2, v4}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/manager/TrunkConfigHelper;->b(Lcom/linkplay/core/device/LPDevice;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_b
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v5, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchFacePresentationUiModel;->h:Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfacePresentationFragment;->P(Lcom/vuitton/android/presentation/screen/connectivity/VideoUiModel;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_c
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter$ViewHolder;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter$ViewHolder;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;->b:Lkotlin/jvm/functions/Function1;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watchface/WatchfaceListAdapter;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_d
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/vuitton/android/presentation/screen/video/VideoActivity;->m:Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/vuitton/android/presentation/utils/TrackingFrom;

    const-string v5, "LVPass/IoT/Watches/Tutorial/Video"

    const-string v6, "IoT"

    invoke-direct {v4, v5, v6}, Lcom/vuitton/android/presentation/utils/TrackingFrom;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;->c:Ljava/lang/String;

    iget-object v6, v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;->d:Ljava/lang/String;

    iget-object v1, v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4, v5, v6, v1}, Lcom/vuitton/android/presentation/screen/video/VideoActivity$Companion;->b(Landroid/content/Context;Lcom/vuitton/android/presentation/utils/TrackingFrom;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_e
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoryUi;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->I:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/categories/WatchTutorialCategoriesFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/WatchTutorialRouter;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->d()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f010035

    const v2, 0x7f01003a

    const v3, 0x7f010037

    const v4, 0x7f010020

    invoke-virtual {v0, v3, v4, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->n(IIII)V

    sget-object v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;->H:Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;

    invoke-direct {v1}, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CATEGORY"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialDetailsFragment;->J:Ljava/lang/String;

    const v3, 0x7f0a0204

    invoke-virtual {v0, v3, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->e()I

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :cond_1
    const-string v0, "watchTutorialRouter"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v3

    :pswitch_f
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialUi;

    move-object/from16 v1, p1

    check-cast v1, Landroid/view/View;

    sget v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter$TutorialHolder;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/tutorial/detail/WatchTutorialAdapter;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :pswitch_10
    check-cast v0, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;

    check-cast v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;

    move-object/from16 v1, p1

    check-cast v1, Lcom/vuitton/foundation/model/domain/model/profile/Profile;

    sget-object v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->J:Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment$Companion;

    new-instance v6, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;

    iget-object v7, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->b:Ljava/lang/String;

    iget-object v8, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->c:Ljava/lang/String;

    iget-object v9, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->d:Ljava/lang/String;

    iget-object v10, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->e:Ljava/lang/String;

    iget-object v11, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->f:Ljava/lang/String;

    iget-object v2, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->g:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/vuitton/foundation/model/domain/model/product/SkuId;->Companion:Lcom/vuitton/foundation/model/domain/model/product/SkuId$Companion;

    move-object v12, v2

    goto :goto_0

    :cond_2
    move-object v12, v3

    :goto_0
    iget-object v13, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->i:Ljava/lang/String;

    iget v14, v5, Lcom/vuitton/android/presentation/screen/connectivity/watch/WatchUiModel;->j:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v6 .. v16}, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz v1, :cond_4

    iget v2, v6, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->h:I

    if-lt v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->Q()Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsViewModel;->k:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->d:Landroid/widget/TextView;

    const v4, 0x7f140cf5

    invoke-virtual {v0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v3

    iget-object v3, v3, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, v1}, Lcom/vuitton/android/presentation/utils/WatchUtilsKt;->b(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/profile/Profile;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v2

    iget-object v2, v2, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v6, Lcom/vuitton/foundation/model/domain/model/connectivity/Watch;->c:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/vuitton/android/presentation/utils/WatchUtilsKt;->a(Landroid/content/Context;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/profile/Profile;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lcom/vuitton/android/presentation/screen/connectivity/watch/settings/WatchSettingsFragment;->P()Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;

    move-result-object v1

    iget-object v1, v1, Lcom/vuitton/android/presentation/databinding/FragmentWatchSettingsBinding;->d:Landroid/widget/TextView;

    const v2, 0x7f140cac

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
