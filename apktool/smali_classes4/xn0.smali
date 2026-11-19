.class public final synthetic Lxn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lxn0;->b:I

    iput-object p1, p0, Lxn0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lxn0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p0, p0, Lxn0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;

    sget-object v0, Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenMyLVEvent;->a:Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel$OpenMyLVEvent;

    invoke-interface {p0, v0}, Lcom/vuitton/android/presentation/screen/services/ServicesViewModel;->L7(Lcom/vuitton/android/presentation/screen/services/models/ServicesTrackingUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->k:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0, v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptorKt;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;[Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :pswitch_1
    return-object p0

    :pswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/immersive3D/base/SensorDataManager;->b()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    check-cast p0, Landroidx/compose/animation/core/SeekableTransitionState;

    iget-object v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->e:Landroidx/compose/animation/core/Transition;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/animation/core/Transition;->l:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    iput-wide v0, p0, Landroidx/compose/animation/core/SeekableTransitionState;->f:J

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x22

    if-lt v0, v2, :cond_1

    new-instance v1, Lfu0;

    invoke-direct {v1, p0}, Lfu0;-><init>(Lcom/vuitton/android/presentation/screenshot/observer/ScreenshotObserver;)V

    :cond_1
    return-object v1

    :pswitch_5
    check-cast p0, Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v1, Landroidx/savedstate/Recreator;

    invoke-direct {v1, p0}, Landroidx/savedstate/Recreator;-><init>(Landroidx/savedstate/SavedStateRegistryOwner;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->a(Landroidx/lifecycle/LifecycleObserver;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    check-cast p0, Landroidx/lifecycle/ViewModelStoreOwner;

    invoke-static {p0}, Landroidx/lifecycle/SavedStateHandleSupport;->c(Landroidx/lifecycle/ViewModelStoreOwner;)Landroidx/lifecycle/SavedStateHandlesVM;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;

    iget-object p0, p0, Landroidx/compose/runtime/saveable/SaveableStateRegistryWrapper;->d:Landroidx/savedstate/SavedStateRegistryController;

    if-eqz p0, :cond_3

    invoke-static {}, Lkotlin/collections/MapsKt;->c()Ljava/util/Map;

    new-array v0, v2, [Lkotlin/Pair;

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlin/Pair;

    invoke-static {v0}, Landroidx/core/os/BundleKt;->a([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/savedstate/SavedStateRegistryController;->b(Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    :goto_1
    return-object v1

    :pswitch_8
    check-cast p0, Lnet/rtccloud/sdk/Rtcc;

    invoke-static {p0}, Lnet/rtccloud/sdk/Rtcc;->b(Lnet/rtccloud/sdk/Rtcc;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_9
    check-cast p0, Ljava/lang/Runnable;

    sget v0, Landroidx/room/RoomDatabase;->m:I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    check-cast p0, Ljava/util/concurrent/Callable;

    sget v0, Landroidx/room/RoomDatabase;->m:I

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_b
    check-cast p0, Lcom/squareup/wire/ReverseProtoWriter;

    sget-object v0, Lcom/squareup/wire/ReverseProtoWriter;->h:[B

    new-instance v0, Lcom/squareup/wire/ProtoWriter;

    iget-object p0, p0, Lcom/squareup/wire/ReverseProtoWriter;->f:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokio/Buffer;

    invoke-direct {v0, p0}, Lcom/squareup/wire/ProtoWriter;-><init>(Lokio/BufferedSink;)V

    return-object v0

    :pswitch_c
    check-cast p0, Lcom/vuitton/android/data/net/RetrofitFactory;

    iget-object p0, p0, Lcom/vuitton/android/data/net/RetrofitFactory;->i:Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;

    sget-object v0, Lcom/vuitton/foundation/model/domain/model/sync/Feature;->TWIST:Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    filled-new-array {v0}, [Lcom/vuitton/foundation/model/domain/model/sync/Feature;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/vuitton/android/domain/provider/feature/FeatureCheckerProvider;->a([Lcom/vuitton/foundation/model/domain/model/sync/Feature;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_d
    check-cast p0, Lokio/internal/ResourceFileSystem;

    iget-object v0, p0, Lokio/internal/ResourceFileSystem;->d:Ljava/lang/ClassLoader;

    iget-object p0, p0, Lokio/internal/ResourceFileSystem;->e:Lokio/FileSystem;

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "file"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v1

    goto :goto_3

    :cond_5
    sget-object v6, Lokio/Path;->c:Lokio/Path$Companion;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v6, v7}, Lokio/Path$Companion;->b(Lokio/Path$Companion;Ljava/io/File;)Lokio/Path;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-direct {v6, p0, v5}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    const-string v3, "META-INF/MANIFEST.MF"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/URL;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "jar:file:"

    invoke-static {v5, v6, v2}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_8

    :goto_5
    move-object v7, v1

    goto :goto_6

    :cond_8
    const-string v6, "!"

    const/4 v7, 0x6

    invoke-static {v2, v7, v5, v6}, Lkotlin/text/StringsKt;->y(IILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_9

    goto :goto_5

    :cond_9
    sget-object v7, Lokio/Path;->c:Lokio/Path$Companion;

    new-instance v8, Ljava/io/File;

    const/4 v9, 0x4

    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v7, v8}, Lokio/Path$Companion;->b(Lokio/Path$Companion;Ljava/io/File;)Lokio/Path;

    move-result-object v5

    new-instance v6, Lokio/internal/a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-static {v5, p0, v6}, Lokio/internal/ZipFilesKt;->c(Lokio/Path;Lokio/FileSystem;Lkotlin/jvm/functions/Function1;)Lokio/ZipFileSystem;

    move-result-object v5

    sget-object v6, Lokio/internal/ResourceFileSystem;->h:Lokio/Path;

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v5, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    if-eqz v7, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    invoke-static {v4, v3}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_e
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;)Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    move-result-object p0

    return-object p0

    :pswitch_f
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->O(Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;)Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    move-result-object p0

    return-object p0

    :pswitch_10
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;->O(Lcom/vuitton/android/presentation/screen/repairs/detail/addressbook/RepairDetailAddressBookFragment;)Lcom/vuitton/android/presentation/screen/account/profile/AddressUiModel;

    move-result-object p0

    return-object p0

    :pswitch_11
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/RepairActivity;->t:Lcom/vuitton/android/presentation/screen/repairs/RepairActivity$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "repair_route"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_12
    check-cast p0, [Landroidx/navigation3/runtime/NavKey;

    new-instance v0, Landroidx/navigation3/runtime/NavBackStack;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroidx/navigation3/runtime/NavKey;

    invoke-direct {v0, p0}, Landroidx/navigation3/runtime/NavBackStack;-><init>([Landroidx/navigation3/runtime/NavKey;)V

    return-object v0

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;

    iget-object p0, p0, Lcom/vuitton/android/presentation/servicerecovery/RecoveryToolForService;->e:Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/vuitton/android/core/schedulers/CoroutineDispatchers;->getDefault()Lkotlinx/coroutines/scheduling/DefaultScheduler;

    move-result-object p0

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    return-object p0

    :cond_b
    const-string p0, "dispatcherProvider"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v1

    :pswitch_14
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p0}, Lokhttp3/internal/ws/RealWebSocket;->c(Lkotlin/jvm/internal/Ref$ObjectRef;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_15
    check-cast p0, Lokhttp3/internal/ws/WebSocketWriter;

    invoke-static {p0}, Lokhttp3/internal/ws/RealWebSocket;->a(Lokhttp3/internal/ws/WebSocketWriter;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_16
    check-cast p0, Lokhttp3/internal/ws/RealWebSocket;

    invoke-static {p0}, Lokhttp3/internal/ws/RealWebSocket;->b(Lokhttp3/internal/ws/RealWebSocket;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_17
    check-cast p0, Lcom/google/firebase/sessions/UuidGenerator;

    invoke-interface {p0}, Lcom/google/firebase/sessions/UuidGenerator;->next()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0

    :pswitch_18
    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    sget-object v0, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity;->p:Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v2}, Lcom/vuitton/android/presentation/screen/options/legaltext/LegalTextActivity$Companion;->a(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;

    invoke-static {p0}, Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;->V(Lcom/vuitton/android/presentation/screen/connectivity/lightup/common/detail/PowerManagementBottomSheet;)Lcom/vuitton/foundation/model/domain/model/connectivity/lightup/LVLightUpPowerMode;

    move-result-object p0

    return-object p0

    :pswitch_1a
    check-cast p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/portal/models/PortalUiModel;->e:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1b
    check-cast p0, Lkotlinx/serialization/PolymorphicSerializer;

    sget-object v0, Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;->a:Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;

    new-array v1, v2, [Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance v3, Lxo0;

    invoke-direct {v3, p0, v2}, Lxo0;-><init>(Ljava/lang/Object;I)V

    const-string v2, "kotlinx.serialization.Polymorphic"

    invoke-static {v2, v0, v1, v3}, Lkotlinx/serialization/descriptors/SerialDescriptorsKt;->e(Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialKind;[Lkotlinx/serialization/descriptors/SerialDescriptor;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    move-result-object v0

    iget-object p0, p0, Lkotlinx/serialization/PolymorphicSerializer;->a:Lkotlin/reflect/KClass;

    invoke-static {v0, p0}, Lkotlinx/serialization/descriptors/ContextAwareKt;->b(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;Lkotlin/reflect/KClass;)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0

    :pswitch_1c
    check-cast p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/personalselections/detail/instore/PersonalSelectionsInStoreViewModelImpl;->o:Ljava/lang/String;

    const-string v0, "Cannot share personal selection: shareURL is null or blank for selectionId="

    invoke-static {v0, p0}, Ltr;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
