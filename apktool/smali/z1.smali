.class public final synthetic Lz1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;Z)V
    .locals 0

    const/16 p2, 0xa

    iput p2, p0, Lz1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lz1;->b:I

    iput-object p1, p0, Lz1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lz1;->b:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "Failed to launch the selector UI. Hint: ensure the `context` parameter is an Activity-based context."

    iget-object p0, p0, Lz1;->c:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;

    iput-boolean v3, p0, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->k:Z

    invoke-virtual {p0}, Landroidx/camera/core/processing/DefaultSurfaceProcessor;->d()V

    return-void

    :pswitch_0
    check-cast p0, Landroidx/camera/core/SurfaceOutput;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void

    :pswitch_1
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->y0()Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;

    move-result-object v0

    new-instance v1, Lks;

    const/16 v2, 0x16

    invoke-direct {v1, v0, v2}, Lks;-><init>(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;I)V

    const/16 v2, 0x404

    invoke-virtual {p0, v0, v2, v1}, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->D0(Landroidx/media3/exoplayer/analytics/AnalyticsListener$EventTime;ILandroidx/media3/common/util/ListenerSet$Event;)V

    iget-object p0, p0, Landroidx/media3/exoplayer/analytics/DefaultAnalyticsCollector;->g:Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Landroidx/media3/common/util/ListenerSet;->d()V

    return-void

    :pswitch_3
    check-cast p0, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetSignInIntent/CredentialProviderGetSignInIntentController;->h()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-direct {v0, v4}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_4
    check-cast p0, Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/GetRestoreCredential/CredentialProviderGetDigitalCredentialController;->f()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    const-string v1, "No provider data returned."

    invoke-direct {v0, v1}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_5
    check-cast p0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;

    iget-object p0, p0, Landroidx/credentials/playservices/controllers/CreatePassword/CredentialProviderCreatePasswordController;->f:Landroidx/credentials/CredentialManagerCallback;

    if-eqz p0, :cond_1

    new-instance v0, Landroidx/credentials/exceptions/CreateCredentialUnknownException;

    invoke-direct {v0, v4}, Landroidx/credentials/exceptions/CreateCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string p0, "callback"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/String;)V

    throw v2

    :pswitch_6
    check-cast p0, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;

    invoke-virtual {p0}, Landroidx/credentials/playservices/controllers/BeginSignIn/CredentialProviderBeginSignInController;->g()Landroidx/credentials/CredentialManagerCallback;

    move-result-object p0

    new-instance v0, Landroidx/credentials/exceptions/GetCredentialUnknownException;

    invoke-direct {v0, v4}, Landroidx/credentials/exceptions/GetCredentialUnknownException;-><init>(Ljava/lang/CharSequence;)V

    invoke-interface {p0, v0}, Landroidx/credentials/CredentialManagerCallback;->a(Ljava/lang/Object;)V

    return-void

    :pswitch_7
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$connectToWifi$1;

    invoke-virtual {p0}, Lcom/vuitton/android/presentation/screen/connectivity/trunkspeaker/scan/tutorial/ConnectToWifiFragment$connectToWifi$1;->a()V

    return-void

    :pswitch_8
    check-cast p0, Landroidx/activity/ComponentDialog;

    invoke-static {p0}, Landroidx/activity/ComponentDialog;->a(Landroidx/activity/ComponentDialog;)V

    return-void

    :pswitch_9
    check-cast p0, Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Lcom/google/android/material/carousel/CarouselLayoutManager;->e1()V

    return-void

    :pswitch_a
    check-cast p0, Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraStateRegistry$OnConfigureAvailableListener;->a()V

    return-void

    :pswitch_b
    check-cast p0, Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;

    invoke-interface {p0}, Landroidx/camera/core/impl/CameraStateRegistry$OnOpenAvailableListener;->a()V

    return-void

    :pswitch_c
    check-cast p0, Landroidx/camera/core/ImageCapture$ScreenFlash;

    invoke-interface {p0}, Landroidx/camera/core/ImageCapture$ScreenFlash;->clear()V

    return-void

    :pswitch_d
    check-cast p0, Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraDevice;->close()V

    return-void

    :pswitch_e
    check-cast p0, Landroidx/camera/camera2/interop/Camera2CameraControl;

    iget-object v0, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;->b(Ljava/lang/Object;)Z

    iput-object v2, p0, Landroidx/camera/camera2/interop/Camera2CameraControl;->g:Landroidx/concurrent/futures/CallbackToFutureAdapter$Completer;

    :cond_2
    return-void

    :pswitch_f
    check-cast p0, Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLEX408Manager$openDevices$1$onDone$1;->a(Lcom/lightup/sdk/device/ble/scanner/listeners/OpenDeviceListener;)V

    return-void

    :pswitch_10
    check-cast p0, Lcom/lightup/sdk/device/devicemanagement/BLELightup;

    invoke-static {p0}, Lcom/lightup/sdk/device/devicemanagement/BLELightup;->k(Lcom/lightup/sdk/device/devicemanagement/BLELightup;)V

    return-void

    :pswitch_11
    check-cast p0, Landroidx/media3/common/util/ListenerSet;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v2, p0, Landroidx/media3/common/util/ListenerSet;->b:Ljava/lang/Thread;

    if-ne v0, v2, :cond_3

    new-instance v0, Lv7;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Lv7;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroidx/media3/common/util/ListenerSet;->f(ILandroidx/media3/common/util/ListenerSet$Event;)V

    :cond_3
    return-void

    :pswitch_12
    check-cast p0, Landroidx/camera/video/internal/audio/AudioSource$AudioSourceCallback;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :pswitch_13
    check-cast p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->b:Lkotlin/jvm/functions/Function5;

    if-eqz v2, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v4, Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;->STOPPED:Lcom/vuitton/foundation/model/domain/model/audioplayer/PlayerState;

    const/4 v5, 0x0

    move-object v7, v6

    invoke-interface/range {v2 .. v7}, Lkotlin/jvm/functions/Function5;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    invoke-virtual {p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;->f()Landroidx/media3/session/MediaController;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1;

    invoke-direct {v1, p0}, Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl$controllerListener$1;-><init>(Lcom/vuitton/android/data/audioplayer/AudioPlayerControllerImpl;)V

    invoke-virtual {v0, v1}, Landroidx/media3/session/MediaController;->Y(Landroidx/media3/common/Player$Listener;)V

    :cond_5
    return-void

    :pswitch_14
    check-cast p0, Lnet/rtccloud/sdk/AudioModule;

    invoke-static {p0}, Lnet/rtccloud/sdk/AudioModule;->d(Lnet/rtccloud/sdk/AudioModule;)V

    return-void

    :pswitch_15
    check-cast p0, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;

    invoke-virtual {p0}, Landroidx/media3/exoplayer/audio/AudioCapabilitiesReceiver;->c()V

    return-void

    :pswitch_16
    check-cast p0, Lcom/vuitton/android/presentation/screen/main/MainActivity;

    invoke-static {p0}, Lcom/vuitton/android/presentation/utils/ArUtils;->b(Lcom/vuitton/android/presentation/screen/main/MainActivity;)V

    return-void

    :pswitch_17
    check-cast p0, Landroid/media/Image;

    sget v0, Lcom/vuitton/android/presentation/ar/arcore/ArCore;->z:I

    invoke-virtual {p0}, Landroid/media/Image;->close()V

    return-void

    :pswitch_18
    check-cast p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;

    iget-object p0, p0, Landroidx/compose/foundation/text/contextmenu/internal/AndroidTextContextMenuToolbarProvider;->h:Landroid/view/ActionMode;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    :cond_6
    return-void

    :pswitch_19
    check-cast p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    sget-object v0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->w:Lcom/dynatrace/android/agent/metrics/AndroidMetrics;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->a:Landroid/content/Context;

    if-eqz v0, :cond_7

    invoke-static {v0}, Lcom/dynatrace/agent/util/RootDetector;->c(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->g:Ljava/lang/Boolean;

    :cond_7
    invoke-static {}, Lcom/dynatrace/android/agent/util/Utility;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dynatrace/android/agent/metrics/AndroidMetrics;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-boolean p0, Lcom/dynatrace/android/agent/Global;->a:Z

    :goto_0
    return-void

    :pswitch_1a
    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;

    sget-object v0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->O:Landroidx/collection/MutableIntList;

    const-string v0, "measureAndLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->e:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->c(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "checkForSemanticsChanges"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_2
    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/AndroidComposeViewAccessibilityDelegateCompat;->J:Z

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :catchall_1
    move-exception v0

    move-object p0, v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0

    :pswitch_1b
    check-cast p0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;

    sget-object v0, Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity;->u:Lcom/vuitton/android/presentation/screen/connectivity/travel/AddTravelActivity$Companion;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f140967

    invoke-static {p0, v0, v1}, Lcom/google/android/material/snackbar/Snackbar;->f(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/material/snackbar/Snackbar;->h()V

    return-void

    :pswitch_1c
    check-cast p0, Landroidx/compose/ui/platform/AbstractComposeView;

    sget v0, Landroidx/compose/ui/platform/AbstractComposeView;->k:I

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AbstractComposeView;->b()V

    return-void

    nop

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
