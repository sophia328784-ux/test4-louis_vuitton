.class public final Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"

# interfaces
.implements Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0015BI\u0008\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u000e\u001a\u00020\r\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModel;",
        "Landroid/app/Application;",
        "application",
        "Lcom/vuitton/foundation/logger/Logger;",
        "logger",
        "Lkotlinx/serialization/json/Json;",
        "json",
        "Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;",
        "tracker",
        "Lcom/vuitton/android/domain/monitoring/Monitor;",
        "monitor",
        "Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;",
        "requireUserInAppDispatchUseCase",
        "Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;",
        "transferCertificateUseCase",
        "Lcom/vuitton/android/presentation/notification/NotificationBuilder;",
        "notificationBuilder",
        "<init>",
        "(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V",
        "Companion",
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


# static fields
.field public static final o:Ljava/lang/String;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lcom/vuitton/foundation/logger/Logger;

.field public final c:Lkotlinx/serialization/json/Json;

.field public final d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

.field public final e:Lcom/vuitton/android/domain/monitoring/Monitor;

.field public final f:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;

.field public final g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

.field public final h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

.field public final i:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final j:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public final k:Lkotlinx/coroutines/flow/MutableStateFlow;

.field public l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

.field public final m:Lkotlinx/coroutines/channels/BufferedChannel;

.field public final n:Lkotlinx/coroutines/flow/StateFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "CertificateTransferViewModelImpl"

    sput-object v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->o:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lcom/vuitton/foundation/logger/Logger;Lkotlinx/serialization/json/Json;Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;Lcom/vuitton/android/domain/monitoring/Monitor;Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;Lcom/vuitton/android/presentation/notification/NotificationBuilder;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->a:Landroid/app/Application;

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->b:Lcom/vuitton/foundation/logger/Logger;

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->c:Lkotlinx/serialization/json/Json;

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->e:Lcom/vuitton/android/domain/monitoring/Monitor;

    iput-object p7, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->f:Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase;

    iput-object p8, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->g:Lcom/vuitton/android/presentation/notification/NotificationBuilder;

    iget-object p1, p6, Lcom/vuitton/android/domain/usecase/dispatch/RequireUserInAppDispatchUseCase;->a:Lcom/vuitton/android/domain/repository/InAppDispatchRepository;

    invoke-interface {p1}, Lcom/vuitton/android/domain/repository/InAppDispatchRepository;->b()Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    move-result-object p3

    iput-object p3, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p2

    iput-object p2, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object p4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p4}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p5

    iput-object p5, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    new-instance p6, Lkotlin/Pair;

    invoke-direct {p6, p4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p6}, Lkotlinx/coroutines/flow/StateFlowKt;->a(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object p4

    iput-object p4, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->k:Lkotlinx/coroutines/flow/MutableStateFlow;

    const/4 p6, 0x7

    const/4 p7, 0x0

    invoke-static {p7, p6, p1}, Lkotlinx/coroutines/channels/ChannelKt;->a(IILkotlinx/coroutines/channels/BufferOverflow;)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    const/4 p1, 0x3

    new-array p1, p1, [Lkotlinx/coroutines/flow/Flow;

    aput-object p5, p1, p7

    const/4 p5, 0x1

    aput-object p4, p1, p5

    const/4 p4, 0x2

    aput-object p2, p1, p4

    new-instance v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$special$$inlined$combine$1;

    invoke-direct {v0, p1, p0}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$special$$inlined$combine$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;)V

    invoke-static {p0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object p1

    sget-object p2, Lkotlinx/coroutines/flow/SharingStarted;->a:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->c:Lkotlinx/coroutines/flow/SharingStarted;

    new-instance p2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;

    const/16 p7, 0xe

    const/4 p8, 0x0

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    invoke-direct/range {p2 .. p8}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/model/CertificateTransferUiModel;-><init>(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;ZLkotlin/Pair;Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, p1, v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->A(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object p1

    iput-object p1, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-void
.end method


# virtual methods
.method public final S7(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final a()Lkotlinx/coroutines/flow/StateFlow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->n:Lkotlinx/coroutines/flow/StateFlow;

    return-object p0
.end method

.method public final b()Lkotlinx/coroutines/flow/Flow;
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->m:Lkotlinx/coroutines/channels/BufferedChannel;

    invoke-static {p0}, Lkotlinx/coroutines/flow/FlowKt;->y(Lkotlinx/coroutines/channels/ReceiveChannel;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p0

    return-object p0
.end method

.method public final e1(Ljava/util/Map;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->i:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;

    if-eqz v2, :cond_d

    new-instance v3, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;

    invoke-direct {v3, v2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel$TransferCertificateActivationEvent;-><init>(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;)V

    iget-object v4, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {v3}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->e:Lcom/vuitton/android/domain/monitoring/Monitor;

    sget-object v4, Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$TransferCertificate;->a:Lcom/vuitton/android/domain/monitoring/certificates/CertificateMonitoring$Action$TransferCertificate;

    iget-object v5, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->h:Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;

    invoke-interface {v3, v5, v4}, Lcom/vuitton/android/domain/monitoring/Monitor;->a(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;Lcom/vuitton/android/domain/monitoring/MonitorActionName;)Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;

    move-result-object v3

    const-string v4, "SN"

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateUiModel;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6, v4}, Lcom/vuitton/android/data/monitoring/DynatraceMonitorAction;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->l:Lcom/vuitton/android/domain/monitoring/MonitorAction;

    invoke-static {v5}, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatchExtKt;->c(Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;)Z

    move-result v3

    const-string v4, ""

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->a:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f130033

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/vuitton/android/core/extensions/SerializationExtKt;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->c:Lkotlinx/serialization/json/Json;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/profile/Country;->Companion:Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;

    invoke-virtual {v9}, Lcom/vuitton/foundation/model/domain/model/profile/Country$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v9

    invoke-direct {v8, v9}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-virtual {v7, v8, v3}, Lkotlinx/serialization/json/Json;->b(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    iget-object v8, v8, Lcom/vuitton/foundation/model/domain/model/profile/Country;->a:Ljava/lang/String;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->b:Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode$Companion;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/vuitton/foundation/model/domain/model/dispatch/locale/component/RegionCode;->h:Ljava/lang/String;

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_1
    move-object v7, v6

    :goto_0
    check-cast v7, Lcom/vuitton/foundation/model/domain/model/profile/Country;

    if-eqz v7, :cond_2

    iget-object v3, v7, Lcom/vuitton/foundation/model/domain/model/profile/Country;->c:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v3, v6

    :goto_1
    if-nez v3, :cond_4

    move-object v3, v4

    goto :goto_2

    :cond_3
    move-object v3, v6

    :cond_4
    :goto_2
    iget-object v5, v5, Lcom/vuitton/foundation/model/domain/model/dispatch/InAppDispatch;->j:Ljava/lang/String;

    sget-object v7, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->PHONE_NUMBER:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v7}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_5

    move-object v7, v4

    :cond_5
    if-eqz v3, :cond_6

    new-instance v8, Lcom/vuitton/foundation/model/domain/model/appointment/PhoneNumber;

    invoke-direct {v8, v3, v5, v7}, Lcom/vuitton/foundation/model/domain/model/appointment/PhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v8, v6

    :goto_3
    new-instance v9, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;

    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    if-eqz v3, :cond_7

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateDiamondUiModel;->f:Ljava/lang/String;

    const/16 v24, 0x1fdc

    const/16 v25, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v10 .. v25}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateDiamond;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_7
    instance-of v3, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    if-eqz v3, :cond_8

    new-instance v10, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;

    check-cast v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;

    iget-object v11, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;->b:Ljava/lang/String;

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel;->c:Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;

    iget-object v12, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v12}, Lcom/vuitton/android/presentation/screen/pdp/models/uimodels/SkuIdUiModel$Companion;->b(Ljava/lang/String;)V

    iget-object v15, v2, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateRubyUiModel;->f:Ljava/lang/String;

    const/16 v19, 0xec

    const/16 v20, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v10 .. v20}, Lcom/vuitton/foundation/model/domain/model/certificate/CertificateRuby;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/vuitton/foundation/model/domain/model/certificate/CertificateStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_4

    :cond_8
    move-object v10, v6

    :goto_4
    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->EMAIL:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_9

    move-object v11, v4

    goto :goto_5

    :cond_9
    move-object v11, v2

    :goto_5
    if-eqz v8, :cond_a

    iget-object v2, v8, Lcom/vuitton/foundation/model/domain/model/appointment/PhoneNumber;->c:Ljava/lang/String;

    goto :goto_6

    :cond_a
    move-object v2, v6

    :goto_6
    if-nez v2, :cond_b

    move-object v12, v4

    goto :goto_7

    :cond_b
    move-object v12, v2

    :goto_7
    sget-object v2, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->KEYWORD:Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;

    invoke-virtual {v2}, Lcom/vuitton/android/presentation/screen/certificates/components/transfer/CertificateTransferFormEntries;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_c

    move-object v13, v4

    goto :goto_8

    :cond_c
    move-object v13, v1

    :goto_8
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2, v1}, Lcom/vuitton/android/presentation/utils/DateTimeUtils;->j(Ljava/lang/String;Ljava/time/LocalDateTime;)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v14}, Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;-><init>(Lcom/vuitton/foundation/model/domain/model/certificate/Certificate;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->j:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    invoke-static {v0}, Landroidx/lifecycle/ViewModelKt;->a(Landroidx/lifecycle/ViewModel;)Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;

    invoke-direct {v2, v0, v9, v6}, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl$transferCertificate$1$2;-><init>(Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;Lcom/vuitton/android/domain/usecase/certificate/TransferCertificateUseCase$Param;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {v1, v6, v6, v2, v0}, Lkotlinx/coroutines/BuildersKt;->c(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_d
    return-void
.end method

.method public final u(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)V
    .locals 0

    iget-object p0, p0, Lcom/vuitton/android/presentation/screen/certificates/diamonds/transfer/CertificateTransferViewModelImpl;->d:Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;

    invoke-static {p1}, Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModelKt;->b(Lcom/vuitton/android/presentation/screen/certificates/model/CertificateTrackingUiModel;)Lcom/vuitton/foundation/model/domain/model/analytics/Hit;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/vuitton/android/presentation/screen/analytics/AnalyticsTracker;->a(Lcom/vuitton/foundation/model/domain/model/analytics/Hit;)V

    return-void
.end method
