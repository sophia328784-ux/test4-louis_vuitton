.class public final synthetic Ldt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavBackStackEntry;Landroidx/navigation/NavController$NavControllerNavigatorState;Landroidx/navigation/fragment/FragmentNavigator;Landroidx/fragment/app/Fragment;)V
    .locals 0

    const/16 p1, 0x13

    iput p1, p0, Ldt;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldt;->c:Ljava/lang/Object;

    iput-object p4, p0, Ldt;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 12
    iput p3, p0, Ldt;->b:I

    iput-object p1, p0, Ldt;->c:Ljava/lang/Object;

    iput-object p2, p0, Ldt;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 15

    iget v0, p0, Ldt;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleCtaUiModel;->b:Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;

    iget-object v1, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->h:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object v1, v1, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->a:Ljava/lang/String;

    new-instance v2, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;

    invoke-direct {v2, v1}, Lcom/vuitton/android/presentation/model/common/VideoIdUiModel;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/immersivearticle/models/ImmersiveArticleFashionShowSectionUiModel;->j:Lcom/vuitton/android/presentation/common/editorial/models/LiveFormatUiModel;

    invoke-interface {v0, v2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel$ImmersiveArticle;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;->N(Lcom/vuitton/android/presentation/screen/immersivearticle/ImmersiveArticleActivity;Lcom/vuitton/android/presentation/contributionlink/ContributionLinkUiModel;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    sget v1, Lcom/vuitton/android/presentation/screen/storemode/filters/components/ImageFilterComponentKt;->a:F

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/plp/models/productshortlist/ProductFilterValueUiModel;->b:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_3
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, v0, Lokhttp3/internal/http2/Http2Connection;->c:Lokhttp3/internal/http2/Http2Connection$Listener;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->a(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Settings;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Settings;

    new-instance v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v5, v0, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;->c:Lokhttp3/internal/http2/Http2Connection;

    iget-object v6, v5, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v6

    :try_start_0
    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->u:Lokhttp3/internal/http2/Settings;

    new-instance v7, Lokhttp3/internal/http2/Settings;

    invoke-direct {v7}, Lokhttp3/internal/http2/Settings;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v8, v2

    :goto_0
    const/16 v9, 0xa

    if-ge v8, v9, :cond_2

    shl-int v9, v3, v8

    iget v10, v0, Lokhttp3/internal/http2/Settings;->a:I

    and-int/2addr v9, v10

    if-eqz v9, :cond_1

    iget-object v9, v0, Lokhttp3/internal/http2/Settings;->b:[I

    aget v9, v9, v8

    invoke-virtual {v7, v8, v9}, Lokhttp3/internal/http2/Settings;->b(II)V

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_1
    if-ge v8, v9, :cond_4

    shl-int v10, v3, v8

    iget v11, p0, Lokhttp3/internal/http2/Settings;->a:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_3

    iget-object v10, p0, Lokhttp3/internal/http2/Settings;->b:[I

    aget v10, v10, v8

    invoke-virtual {v7, v8, v10}, Lokhttp3/internal/http2/Settings;->b(II)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    iput-object v7, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    invoke-virtual {v7}, Lokhttp3/internal/http2/Settings;->a()I

    move-result p0

    int-to-long v7, p0

    invoke-virtual {v0}, Lokhttp3/internal/http2/Settings;->a()I

    move-result p0

    int-to-long v9, p0

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-eqz p0, :cond_6

    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->d:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    new-array v1, v2, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Lokhttp3/internal/http2/Http2Stream;

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_6
    :goto_2
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v0, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->u:Lokhttp3/internal/http2/Settings;

    iget-object v9, v5, Lokhttp3/internal/http2/Http2Connection;->l:Lokhttp3/internal/concurrent/TaskQueue;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v5, Lokhttp3/internal/http2/Http2Connection;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " onSettings"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ldt;

    const/16 v0, 0x19

    invoke-direct {v13, v5, v4, v0}, Ldt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v14, 0x6

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lokhttp3/internal/concurrent/TaskQueue;->b(Lokhttp3/internal/concurrent/TaskQueue;Ljava/lang/String;JLkotlin/jvm/functions/Function0;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v5, Lokhttp3/internal/http2/Http2Connection;->z:Lokhttp3/internal/http2/Http2Writer;

    iget-object v3, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast v3, Lokhttp3/internal/http2/Settings;

    invoke-virtual {v0, v3}, Lokhttp3/internal/http2/Http2Writer;->c(Lokhttp3/internal/http2/Settings;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_6

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v3, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v5, v3, v3, v0}, Lokhttp3/internal/http2/Http2Connection;->c(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_3
    monitor-exit v6

    if-eqz v1, :cond_8

    array-length v0, v1

    :goto_4
    if-ge v2, v0, :cond_8

    aget-object v3, v1, v2

    monitor-enter v3

    :try_start_5
    iget-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->f:J

    add-long/2addr v4, v7

    iput-wide v4, v3, Lokhttp3/internal/http2/Http2Stream;->f:J

    if-lez p0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_7
    monitor-exit v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v3

    throw p0

    :cond_8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :goto_5
    :try_start_6
    monitor-exit v5

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    monitor-exit v6

    throw p0

    :pswitch_5
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lokhttp3/internal/http2/Http2Connection;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lokhttp3/internal/http2/Http2Stream;

    :try_start_7
    iget-object v0, v1, Lokhttp3/internal/http2/Http2Connection;->c:Lokhttp3/internal/http2/Http2Connection$Listener;

    invoke-virtual {v0, p0}, Lokhttp3/internal/http2/Http2Connection$Listener;->b(Lokhttp3/internal/http2/Http2Stream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    sget-object v2, Lokhttp3/internal/platform/Platform;->a:Lokhttp3/internal/platform/Platform$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lokhttp3/internal/platform/Platform;->b:Lokhttp3/internal/platform/Android10Platform;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection;->e:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1, v0}, Lokhttp3/internal/platform/Android10Platform;->e(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_8
    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v1, v0}, Lokhttp3/internal/http2/Http2Stream;->d(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    :goto_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_6
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryResearchUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_7
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/search/models/HistoryItemUiModel$HistoryProductUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_8
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/GapComposer;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MovableContentStateReference;

    iget-object v1, p0, Landroidx/compose/runtime/MovableContentStateReference;->a:Landroidx/compose/runtime/MovableContent;

    iget-object v2, p0, Landroidx/compose/runtime/MovableContentStateReference;->g:Landroidx/compose/runtime/PersistentCompositionLocalMap;

    iget-object p0, p0, Landroidx/compose/runtime/MovableContentStateReference;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, p0, v3}, Landroidx/compose/runtime/GapComposer;->j0(Landroidx/compose/runtime/MovableContent;Landroidx/compose/runtime/PersistentCompositionLocalMap;Ljava/lang/Object;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_9
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/NavController$NavControllerNavigatorState;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/Fragment;

    sget v1, Landroidx/navigation/fragment/FragmentNavigator;->j:I

    iget-object v1, v0, Landroidx/navigation/NavigatorState;->f:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/navigation/NavBackStackEntry;

    invoke-static {}, Landroidx/navigation/fragment/FragmentNavigator;->n()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_9
    invoke-virtual {v0, v2}, Landroidx/navigation/NavController$NavControllerNavigatorState;->b(Landroidx/navigation/NavBackStackEntry;)V

    goto :goto_8

    :cond_a
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_a
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/FormFieldUiModel;->d:Lcom/vuitton/android/presentation/screen/dynamicform/model/field/section/FormSectionTypeUiModel;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_b
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;

    iget-boolean p0, p0, Lcom/vuitton/android/presentation/screen/dynamicform/model/field/type/FormFieldBooleanUiModel;->a:Z

    xor-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_c
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    sget-object v1, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnCloseEvent;->a:Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel$OnCloseEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/ForgetPasswordViewModel;->y4(Lcom/vuitton/android/presentation/screen/authentication/forgetpassword/models/ForgetPasswordTrackingUiModel;)V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_d
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/FocusableNode;

    sget-object v1, Landroidx/compose/foundation/FocusableNode;->x:Landroidx/compose/foundation/FocusableNode$TraverseKey;

    sget-object v1, Landroidx/compose/ui/layout/PinnableContainerKt;->a:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-static {p0, v1}, Landroidx/compose/ui/node/CompositionLocalConsumerModifierNodeKt;->a(Landroidx/compose/ui/node/CompositionLocalConsumerModifierNode;Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_e
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;

    invoke-interface {v0, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->n1(Lcom/vuitton/android/presentation/screen/feed/models/CalendarEventData;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_f
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTracker;->a:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    sget-object v1, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;->a:Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel$OpenLVPassEvent;

    invoke-static {v1}, Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModelKt;->a(Lcom/vuitton/android/presentation/screen/feed/models/tracking/FeedTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    invoke-static {p0}, Lcom/vuitton/android/presentation/extensions/ContextExtKt;->b(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    if-eqz p0, :cond_b

    sget-object v0, Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLVPassPage;->a:Lcom/vuitton/android/presentation/screen/feed/FeedDestinations$ToLVPassPage;

    invoke-static {v0, p0}, Lcom/vuitton/android/presentation/screen/feed/FeedDestinationsKt;->a(Lcom/vuitton/android/presentation/screen/feed/FeedDestinations;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_10
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->qa(Lcom/vuitton/android/presentation/screen/feed/FeedBottomSheet;)V

    invoke-interface {p0}, Lcom/vuitton/android/presentation/screen/permissions/PermissionsViewModel;->Gb()V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_11
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lcom/vuitton/android/presentation/screen/feed/FeedViewModel;->c()V

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_12
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    sget-object v2, Lcom/vuitton/android/presentation/screen/options/notifications/components/ExpandableHeaderKt$WhenMappings;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    if-eq p0, v3, :cond_d

    const/4 v2, 0x2

    if-ne p0, v2, :cond_c

    sget-object p0, Lcom/vuitton/android/presentation/compose/components/CollapsingState;->COLLAPSED:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    goto :goto_9

    :cond_c
    invoke-static {}, Lv40;->g()V

    goto :goto_a

    :cond_d
    sget-object p0, Lcom/vuitton/android/presentation/compose/components/CollapsingState;->EXPANDED:Lcom/vuitton/android/presentation/compose/components/CollapsingState;

    :goto_9
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_a
    return-object v1

    :pswitch_13
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlinx/serialization/internal/EnumSerializer;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget-object v1, v0, Lkotlinx/serialization/internal/EnumSerializer;->b:Lkotlinx/serialization/descriptors/SerialDescriptor;

    if-nez v1, :cond_e

    new-instance v1, Lkotlinx/serialization/internal/EnumDescriptor;

    iget-object v0, v0, Lkotlinx/serialization/internal/EnumSerializer;->a:[Ljava/lang/Enum;

    array-length v3, v0

    invoke-direct {v1, p0, v3}, Lkotlinx/serialization/internal/EnumDescriptor;-><init>(Ljava/lang/String;I)V

    array-length p0, v0

    move v3, v2

    :goto_b
    if-ge v3, p0, :cond_e

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->k(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    return-object v1

    :pswitch_14
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel;

    check-cast p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/EditorialModuleCardTypeUiModel$Live;->a:Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;

    iget-object p0, p0, Lcom/vuitton/android/presentation/common/editorial/models/LiveInfoUiModel;->c:Ljava/time/Instant;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_15
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/core/helper/DebounceHandler;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    sub-long v3, v1, v3

    iget-wide v5, v0, Lcom/vuitton/android/core/helper/DebounceHandler;->a:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_f

    iput-wide v1, v0, Lcom/vuitton/android/core/helper/DebounceHandler;->b:J

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_f
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_16
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;

    invoke-static {v0, p0}, Lcom/sightcall/advancedannotations/domain/event/DrivenEventInterpreterKt;->a(Lkotlin/jvm/functions/Function1;Lcom/sightcall/advancedannotations/domain/drawer/AnnotationId;)Lkotlin/Unit;

    move-result-object p0

    return-object p0

    :pswitch_17
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_18
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    sget-object v1, Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel$HowToTakePictureClickedEvent;

    invoke-interface {v0, v1}, Lcom/vuitton/android/presentation/screen/distantrepairs/form/DistantRepairFormBffViewModel;->d(Lcom/vuitton/android/presentation/screen/distantrepairs/tracking/DistantRepairTrackingUiModel;)V

    sget-object v0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;->a:Lcom/vuitton/android/presentation/screen/distantrepairs/form/components/DistantRepairFormBottomSheetScreen$BottomSheetTutorial;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_19
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/distantrepairs/form/models/Step;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1a
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;

    iget-object v0, v0, Lcom/vuitton/android/presentation/screen/options/dispatch/models/DispatchViewState;->d:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    if-eqz v0, :cond_10

    invoke-interface {p0, v0, v3}, Lcom/vuitton/android/presentation/screen/options/dispatch/DispatchCountryViewModel;->i2(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Z)V

    :cond_10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1b
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/navigation/compose/DialogNavigator;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/navigation/NavBackStackEntry;

    invoke-virtual {v0, p0, v2}, Landroidx/navigation/compose/DialogNavigator;->i(Landroidx/navigation/NavBackStackEntry;Z)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0

    :pswitch_1c
    iget-object v0, p0, Ldt;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;

    iget-object p0, p0, Ldt;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuSession;

    sget-object v1, Landroidx/compose/foundation/text/contextmenu/internal/DefaultTextContextMenuDropdownProvider_androidKt;->a:Landroidx/compose/ui/window/PopupProperties;

    iget-object v0, v0, Landroidx/compose/foundation/text/contextmenu/data/TextContextMenuItem;->d:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

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
