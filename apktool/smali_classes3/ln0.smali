.class public final synthetic Lln0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;
.implements Lcom/google/android/gms/tasks/OnFailureListener;
.implements Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;
.implements Landroidx/activity/result/ActivityResultCallback;
.implements Landroidx/media3/exoplayer/source/ProgressiveMediaExtractor$Factory;
.implements Landroidx/media3/container/ReorderingBufferQueue$OutputConsumer;
.implements Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;
.implements Landroidx/constraintlayout/core/state/CorePixelDp;
.implements Landroidx/media3/common/util/Consumer;
.implements Lcom/google/android/material/internal/StaticLayoutBuilderConfigurer;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;
.implements Lcom/google/android/gms/tasks/Continuation;
.implements Lcom/sightcall/videoplayer/view/VideoPlayerBar$VisibilityCallback;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lln0;->b:I

    iput-object p1, p0, Lln0;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;
    .locals 1

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ExtractorsFactory;

    sget v0, Landroidx/media3/exoplayer/source/ProgressiveMediaSource$Factory;->i:I

    new-instance v0, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;

    invoke-direct {v0, p0}, Landroidx/media3/exoplayer/source/BundledExtractorsAdapter;-><init>(Landroidx/media3/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/common/collect/ImmutableList$Builder;

    check-cast p1, Landroidx/media3/extractor/text/CuesWithTiming;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList$Builder;->e(Ljava/lang/Object;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lln0;->b:I

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Ljava/util/HashSet;

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    sget-object v0, Lcom/perfectcorp/perfectlib/ph/unit/sku/a;->a:Ljava/util/regex/Pattern;

    iget-object v0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;->valueOfSkuFeatureType(Ljava/lang/String;)Lcom/perfectcorp/perfectlib/ymk/model/BeautyMode;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;

    invoke-direct {v1}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;-><init>()V

    iget-object v2, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;

    :try_start_0
    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d;->info:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a;->itemContent:Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;

    iget-object v3, v3, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h$d$a$a;->patterns:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;

    iget-object v5, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_guid:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lcom/perfectcorp/perfectlib/ph/template/idc/e;->attr_patternGuid:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Lcom/perfectcorp/thirdparty/com/google/common/collect/HashMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    const-string v4, "SkuSetUnit"

    const-string v5, "requestSkuMetadata no pattern. "

    invoke-static {v4, v5, v3}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    iget-object p0, p1, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;->skuGUID:Ljava/lang/String;

    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :sswitch_0
    check-cast p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;

    check-cast p1, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perfectcorp/perfectlib/hc/database/ymk/downloadimage/DownloadImageInfo$Builder;->e:J

    return-object p0

    :sswitch_1
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;

    check-cast p1, Ljava/lang/String;

    iget-object p1, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->b:Ljava/lang/String;

    sget-object v0, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->BACKGROUND:Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;

    invoke-virtual {v0}, Lcom/perfectcorp/perfectlib/ymk/model/SkuBeautyMode$FeatureType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p0, p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/Sku;->f:Ljava/lang/String;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-static {p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->g(Ljava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/Observable;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lv7;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lv7;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lt7;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->a:Lcom/perfectcorp/thirdparty/com/google/common/collect/ImmutableSet;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/perfectcorp/perfectlib/ApplyEffectUtility;->B(ILjava/util/Collection;)Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/o;

    move-result-object p1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Lv7;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lv7;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/perfectcorp/thirdparty/io/reactivex/Observable;->collectInto(Ljava/lang/Object;Lcom/perfectcorp/thirdparty/io/reactivex/functions/BiConsumer;)Lcom/perfectcorp/thirdparty/io/reactivex/Single;

    move-result-object p1

    new-instance v0, Lt7;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lt7;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;

    invoke-direct {p0, p1, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/t;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/SingleSource;Lcom/perfectcorp/thirdparty/io/reactivex/functions/Function;)V

    :goto_2
    return-object p0

    :sswitch_2
    check-cast p0, Lcom/perfectcorp/perfectlib/ph/database/ymk/sku/h;

    check-cast p1, Ljava/util/List;

    return-object p0

    :sswitch_3
    check-cast p0, Lcom/perfectcorp/perfectlib/JsExecutor;

    check-cast p1, Ljava/lang/String;

    new-instance v0, Lp3;

    const/16 v1, 0x1a

    invoke-direct {v0, p0, p1, v1}, Lp3;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/b;-><init>(Lcom/perfectcorp/thirdparty/io/reactivex/g;)V

    return-object p0

    :sswitch_4
    check-cast p0, Lcom/perfectcorp/perfectlib/PhotoMakeup;

    check-cast p1, Lcom/perfectcorp/perfectlib/core/FrameProcessingThread$Frame;

    new-instance v0, Lcom/perfectcorp/perfectlib/z;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lcom/perfectcorp/perfectlib/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance p0, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;

    invoke-direct {p0, v0}, Lcom/perfectcorp/thirdparty/io/reactivex/internal/operators/single/p;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_4
        0xb -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Ljava/lang/Object;)V
    .locals 12

    iget v0, p0, Lln0;->b:I

    const-wide/16 v1, 0x0

    const-string v3, "SELECTED_CANCELLATION_REASON_ID"

    const/4 v4, -0x1

    const-string v5, "CARE_SERVICE_PAYMENT_CANCEL"

    const-string v6, "CARE_SERVICE_PAYMENT_FAILED"

    const-string v7, "CARE_SERVICE_PAYMENT_SUCCESS"

    const/4 v8, 0x1

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    sparse-switch v0, :sswitch_data_0

    check-cast p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget v0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->m:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    const/4 v2, 0x2

    if-eqz v1, :cond_8

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-ne p1, v4, :cond_7

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Unknown:Lcom/kakao/sdk/common/model/ClientErrorCause;

    const-string v1, "No result from KakaoTalk."

    invoke-direct {p1, v0, v1}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->v(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->k:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->l:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "access_denied"

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {p1, v0, v10, v2, v10}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->v(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_5

    const-class p1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    sget-object v0, Lcom/kakao/sdk/common/util/KakaoJson;->a:Lcom/google/gson/Gson;

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kakao/sdk/common/model/AuthErrorCause;

    if-nez p1, :cond_3

    sget-object p1, Lcom/kakao/sdk/common/model/AuthErrorCause;->Unknown:Lcom/kakao/sdk/common/model/AuthErrorCause;

    :cond_3
    new-instance v0, Lcom/kakao/sdk/common/model/AuthError;

    new-instance v2, Lcom/kakao/sdk/common/model/AuthErrorResponse;

    if-nez v3, :cond_4

    const-string v3, "no error description"

    :cond_4
    invoke-direct {v2, v1, v3}, Lcom/kakao/sdk/common/model/AuthErrorResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x12e

    invoke-direct {v0, v1, p1, v2}, Lcom/kakao/sdk/common/model/AuthError;-><init>(ILcom/kakao/sdk/common/model/AuthErrorCause;Lcom/kakao/sdk/common/model/AuthErrorResponse;)V

    invoke-virtual {p0, v0}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->v(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    goto :goto_1

    :cond_5
    const-string v1, "com.kakao.sdk.talk.redirectUrl"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "key.url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object p1, p0, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->i:Landroid/os/ResultReceiver;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v4, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p0, v11, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_1

    :cond_6
    const-string p0, "resultReceiver"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v10

    :cond_7
    invoke-static {}, Lct0;->c()V

    goto :goto_1

    :cond_8
    :goto_0
    new-instance p1, Lcom/kakao/sdk/common/model/ClientError;

    sget-object v0, Lcom/kakao/sdk/common/model/ClientErrorCause;->Cancelled:Lcom/kakao/sdk/common/model/ClientErrorCause;

    invoke-direct {p1, v0, v10, v2, v10}, Lcom/kakao/sdk/common/model/ClientError;-><init>(Lcom/kakao/sdk/common/model/ClientErrorCause;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p0, p1}, Lcom/kakao/sdk/auth/TalkAuthCodeActivity;->v(Lcom/kakao/sdk/common/model/KakaoSdkError;)V

    :goto_1
    return-void

    :sswitch_0
    check-cast p0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/story/StoryActivity;->t:Lcom/vuitton/android/presentation/screen/story/StoryActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroidx/activity/result/ActivityResult;->b:I

    if-ne p1, v4, :cond_9

    sget-object p1, Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;->a:Lcom/vuitton/android/presentation/screen/services/ServicesDestinations$ToCareServicesCreatePage;

    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/services/ServicesDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/services/ServicesDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_9
    return-void

    :sswitch_1
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_c

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->M:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;

    if-eqz p0, :cond_a

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceUiModel;->b:Ljava/lang/String;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_b

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_b
    invoke-static {p1, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_c
    if-eqz p1, :cond_11

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_11

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p1, :cond_d

    iget-object v10, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    :cond_d
    if-nez v10, :cond_e

    goto :goto_2

    :cond_e
    move-object v9, v10

    :goto_2
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p1, :cond_f

    iget-wide v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    :cond_f
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v9, v1, v2}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    :cond_10
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v9}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_4

    :cond_11
    if-eqz p1, :cond_12

    invoke-virtual {p1, v5, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_12

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->i(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_4

    :cond_12
    if-eqz p1, :cond_13

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_13
    move-object v0, v10

    :goto_3
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailsFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;

    move-result-object p0

    if-eqz p1, :cond_14

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_14
    invoke-interface {p0, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairViewModel;->D0(Ljava/lang/String;)V

    :cond_15
    :goto_4
    return-void

    :sswitch_2
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->P:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_18

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_18

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->M:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;

    if-eqz p0, :cond_16

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceShortUiModel;->b:Ljava/lang/String;

    :cond_16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_17

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_17
    invoke-static {p1, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_7

    :cond_18
    if-eqz p1, :cond_1b

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_1b

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-eqz p0, :cond_19

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    if-eqz p0, :cond_19

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    :cond_19
    if-nez v10, :cond_1a

    goto :goto_5

    :cond_1a
    move-object v9, v10

    :goto_5
    invoke-static {p1, v9}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_7

    :cond_1b
    if-eqz p1, :cond_1c

    invoke-virtual {p1, v5, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_1c

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->i(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_7

    :cond_1c
    if-eqz p1, :cond_1d

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    :cond_1d
    move-object v0, v10

    :goto_6
    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairDetailBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;

    move-result-object p0

    if-eqz p1, :cond_1e

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_1e
    invoke-interface {p0, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairBffViewModel;->D0(Ljava/lang/String;)V

    :cond_1f
    :goto_7
    return-void

    :sswitch_3
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_22

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_22

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->K:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;

    if-eqz p0, :cond_20

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->b:Ljava/lang/String;

    :cond_20
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v10, :cond_21

    sget-object v10, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_21
    invoke-static {p1, v10}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_9

    :cond_22
    if-eqz p1, :cond_27

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_27

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/Hilt_RepairConfirmAddressFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p1, :cond_23

    iget-object v10, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->f:Ljava/lang/String;

    :cond_23
    if-nez v10, :cond_24

    goto :goto_8

    :cond_24
    move-object v9, v10

    :goto_8
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;

    if-eqz p1, :cond_25

    iget-wide v1, p1, Lcom/vuitton/android/presentation/screen/repairs/models/CareServiceDetailUiModel;->h:D

    :cond_25
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->R()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/DistantRepairAssessmentViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;

    iget-object p1, p1, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentViewState;->a:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-static {p1, v9, v1, v2}, Lcom/vuitton/android/presentation/utils/PriceHelper;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Ljava/lang/String;D)Ljava/lang/String;

    move-result-object v9

    :cond_26
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v9}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_9

    :cond_27
    if-eqz p1, :cond_28

    invoke-virtual {p1, v5, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v8, :cond_28

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressFragment;->Q()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->i(Landroidx/fragment/app/FragmentActivity;)V

    :cond_28
    :goto_9
    return-void

    :sswitch_4
    check-cast p0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;

    check-cast p1, Landroidx/activity/result/ActivityResult;

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->M:Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Landroidx/activity/result/ActivityResult;->c:Landroid/content/Intent;

    if-eqz p1, :cond_2a

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_2a

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    sget-object v0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->c:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->Q()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_29

    sget-object p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceIdUiModel;->d:Ljava/lang/String;

    :cond_29
    invoke-static {p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->j(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_b

    :cond_2a
    if-eqz p1, :cond_2d

    invoke-virtual {p1, v6, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-ne v0, v8, :cond_2d

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->S()Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;

    move-result-object p0

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/bff/DistantRepairAssessmentBffViewModel;->a()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/distantrepairs/models/AssessmentBffViewState;->d:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;

    if-eqz p0, :cond_2b

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel;->l:Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;

    if-eqz p0, :cond_2b

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/repairs/models/bff/CareServiceDetailUiModel$Assessment;->d:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;

    if-eqz p0, :cond_2b

    iget-object v10, p0, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/PriceUiModel;->b:Ljava/lang/String;

    :cond_2b
    if-nez v10, :cond_2c

    goto :goto_a

    :cond_2c
    move-object v9, v10

    :goto_a
    invoke-static {p1, v9}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->f(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_b

    :cond_2d
    if-eqz p1, :cond_2e

    invoke-virtual {p1, v5, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-ne p1, v8, :cond_2e

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/repairs/detail/RepairConfirmAddressBffFragment;->R()Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/vuitton/android/presentation/screen/repairs/RepairRouter;->i(Landroidx/fragment/app/FragmentActivity;)V

    :cond_2e
    :goto_b
    return-void

    :sswitch_5
    check-cast p0, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->s:Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity$Companion;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/privacy/PrivacyActivity;->I()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_5
        0x5 -> :sswitch_4
        0x6 -> :sswitch_3
        0x7 -> :sswitch_2
        0x8 -> :sswitch_1
        0xf -> :sswitch_0
    .end sparse-switch
.end method

.method public c()V
    .locals 1

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->L:Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment$Companion;

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->A()V

    :try_start_0
    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/details/devicelist/WifiDeviceListFragment;->Q()V

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->B()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/dynatrace/android/callback/Callback;->B()V

    throw p0
.end method

.method public d(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    sget-object p1, Lcom/google/firebase/crashlytics/internal/common/Utils;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public e(F)F
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/constraintlayout/compose/State;

    iget-object p0, p0, Landroidx/constraintlayout/compose/State;->k:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    mul-float/2addr p0, p1

    return p0
.end method

.method public execute()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lln0;->b:I

    const/4 v1, 0x0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;

    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->b:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->U()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/datatransport/runtime/TransportContext;

    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkInitializer;->c:Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/WorkScheduler;->a(Lcom/google/android/datatransport/runtime/TransportContext;I)V

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;

    iget-object p0, p0, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/Uploader;->i:Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;->h()V

    return-object v1

    :pswitch_1
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;->M()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;

    invoke-interface {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;->j()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(JLandroidx/media3/common/util/ParsableByteArray;)V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Landroidx/media3/extractor/ts/SeiReader;

    iget-object p0, p0, Landroidx/media3/extractor/ts/SeiReader;->c:[Landroidx/media3/extractor/TrackOutput;

    invoke-static {p1, p2, p3, p0}, Landroidx/media3/extractor/CeaUtil;->a(JLandroidx/media3/common/util/ParsableByteArray;[Landroidx/media3/extractor/TrackOutput;)V

    return-void
.end method

.method public onAnalyze(Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/perfectcorp/perfectlib/ShadeFinder$ShadeFinderCallback;->onAnalyze(Lcom/perfectcorp/perfectlib/ShadeFinderData;Lcom/perfectcorp/perfectlib/ShadeFinderQualityCheck;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "ShadeFinder"

    const-string p2, "UncaughtException"

    invoke-static {p1, p2, p0}, Lcom/perfectcorp/common/utility/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 1

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x8

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->o(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\n                setTimeout(function() {\n                    if (document.activeElement) {\n                        document.activeElement.scrollIntoView(\n                            {behavior: \"smooth\", block: \"end\"}\n                        );\n                    }\n                }, 500);\n            "

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-object p2
.end method

.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ScheduledFuture;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/base/BaseActivity;

    instance-of v0, p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/Status;->X1(Lcom/vuitton/android/presentation/screen/base/BaseActivity;)V

    return-void

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onPlayerBarShown()V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;

    invoke-static {p0}, Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapperImpl;->a(Lcom/sightcall/universal/internal/ui/videoplayer/VideoPlayerWrapper$VisibilityCallback;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lln0;->c:Ljava/lang/Object;

    check-cast p0, Ltb0;

    invoke-virtual {p0, p1}, Ltb0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
